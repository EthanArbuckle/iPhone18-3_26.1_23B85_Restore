@interface CLBSoundController
+ (id)sharedInstance;
- (BOOL)_playSystemSound:(id)a3;
- (BOOL)_playToneAlert:(id)a3;
- (BOOL)isPlaying:(id)a3;
- (BOOL)isPlayingAnySound;
- (BOOL)playSound:(id)a3 completion:(id)a4;
- (BOOL)stopAllSounds;
- (BOOL)stopSound:(id)a3;
- (CLBSoundController)init;
- (void)_cleanupSystemSound:(unsigned int)a3 andKill:(BOOL)a4;
- (void)_cleanupToneAlertForSound:(id)a3 andKill:(BOOL)a4;
- (void)_endPendingCallbacksBlock;
- (void)_enqueueCallback:(id)a3;
@end

@implementation CLBSoundController

+ (id)sharedInstance
{
  if (qword_100331070 != -1)
  {
    sub_10028404C();
  }

  v3 = qword_100331068;

  return v3;
}

- (CLBSoundController)init
{
  v10.receiver = self;
  v10.super_class = CLBSoundController;
  v2 = [(CLBSoundController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    soundsBySystemSoundIDs = v2->_soundsBySystemSoundIDs;
    v2->_soundsBySystemSoundIDs = v3;

    v5 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
    toneAlertsBySounds = v2->_toneAlertsBySounds;
    v2->_toneAlertsBySounds = v5;

    v7 = objc_alloc_init(NSMutableArray);
    pendedCallbacks = v2->_pendedCallbacks;
    v2->_pendedCallbacks = v7;
  }

  return v2;
}

- (BOOL)isPlayingAnySound
{
  if (!+[NSThread isMainThread])
  {
    sub_100284060();
  }

  return [(NSMutableDictionary *)self->_soundsBySystemSoundIDs count]|| [(NSMapTable *)self->_toneAlertsBySounds count]!= 0;
}

- (BOOL)isPlaying:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_10028408C();
  }

  v5 = [v4 soundType];
  if (v5 == 1)
  {
    v6 = [(NSMapTable *)self->_toneAlertsBySounds objectForKey:v4];
    v8 = v6 != 0;
  }

  else
  {
    if (v5)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 systemSoundID]);
    v7 = [(NSMutableDictionary *)self->_soundsBySystemSoundIDs objectForKey:v6];
    v8 = [v7 isEqual:v4];
  }

LABEL_8:
  return v8;
}

- (BOOL)playSound:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    LOBYTE(v10) = 0;
    goto LABEL_18;
  }

  if (!+[NSThread isMainThread])
  {
    sub_1002840B8();
  }

  [(CLBSoundController *)self stopSound:v6];
  v8 = [v6 soundType];
  if (v8 == 1)
  {
    v9 = [(CLBSoundController *)self _playToneAlert:v6];
  }

  else
  {
    if (v8)
    {
      v11 = +[CLFLog commonLog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Don't know how to play this sound type: %@", &v15, 0xCu);
      }

      v10 = 0;
      goto LABEL_12;
    }

    v9 = [(CLBSoundController *)self _playSystemSound:v6];
  }

  v10 = v9;
LABEL_12:
  v12 = +[CLFLog commonLog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = " NOT";
    if (v10)
    {
      v13 = "";
    }

    v15 = 138412546;
    v16 = v6;
    v17 = 2080;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Sound %@ DID%s play", &v15, 0x16u);
  }

  if (v10)
  {
    [v6 setCompletionBlock:v7];
    LOBYTE(v10) = 1;
  }

LABEL_18:

  return v10;
}

- (BOOL)stopSound:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_1002840E4();
  }

  v5 = [(CLBSoundController *)self isPlaying:v4];
  if (v5)
  {
    v6 = [v4 soundType];
    if (v6 == 1)
    {
      [(CLBSoundController *)self _cleanupToneAlertForSound:v4 andKill:1];
    }

    else if (v6)
    {
      v7 = +[CLFLog commonLog];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Don't know how to kill this sound type: %@", &v9, 0xCu);
      }
    }

    else
    {
      -[CLBSoundController _cleanupSystemSound:andKill:](self, "_cleanupSystemSound:andKill:", [v4 systemSoundID], 1);
    }
  }

  return v5;
}

- (BOOL)stopAllSounds
{
  if (!+[NSThread isMainThread])
  {
    sub_100284110();
  }

  if ([(NSMutableDictionary *)self->_soundsBySystemSoundIDs count])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(NSMapTable *)self->_toneAlertsBySounds count]!= 0;
  }

  [(CLBSoundController *)self _beginPendingCallbacksBlock];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(NSMutableDictionary *)self->_soundsBySystemSoundIDs allKeys];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        -[CLBSoundController _cleanupSystemSound:andKill:](self, "_cleanupSystemSound:andKill:", [*(*(&v20 + 1) + 8 * i) unsignedIntValue], 1);
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(NSMapTable *)self->_toneAlertsBySounds copy];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CLBSoundController *)self _cleanupToneAlertForSound:*(*(&v16 + 1) + 8 * j) andKill:0];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  v14 = +[TLAlert _stopAllAlerts];
  [(CLBSoundController *)self _endPendingCallbacksBlock];
  return (v14 | v3) & 1;
}

- (void)_cleanupSystemSound:(unsigned int)a3 andKill:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  if (!+[NSThread isMainThread])
  {
    sub_10028413C();
  }

  v8 = [NSNumber numberWithUnsignedInt:v5];
  AudioServicesRemoveSystemSoundCompletion(v5);
  if (v4)
  {
    AudioServicesStopSystemSound();
  }

  v7 = [(NSMutableDictionary *)self->_soundsBySystemSoundIDs objectForKey:v8];
  if (v7)
  {
    [(NSMutableDictionary *)self->_soundsBySystemSoundIDs removeObjectForKey:v8];
  }
}

- (void)_cleanupToneAlertForSound:(id)a3 andKill:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(NSMapTable *)self->_toneAlertsBySounds objectForKey:?];
  v7 = v6;
  if (v6)
  {
    if (v4)
    {
      [v6 stop];
    }

    [(NSMapTable *)self->_toneAlertsBySounds removeObjectForKey:v8];
  }
}

- (BOOL)_playSystemSound:(id)a3
{
  v4 = a3;
  v5 = [v4 systemSoundID];
  v6 = [v4 vibrationPattern];
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = 4095;
  }

  else
  {
    v8 = v5;
  }

  v9 = [NSNumber numberWithInt:v8];
  [(CLBSoundController *)self _cleanupSystemSound:v8 andKill:1];
  Current = CFRunLoopGetCurrent();
  v11 = AudioServicesAddSystemSoundCompletion(v8, Current, kCFRunLoopCommonModes, sub_100009788, 0);
  if (!v11)
  {
    [(NSMutableDictionary *)self->_soundsBySystemSoundIDs setObject:v4 forKey:v9];
  }

  return v11 == 0;
}

- (BOOL)_playToneAlert:(id)a3
{
  v4 = a3;
  v5 = [v4 alertConfiguration];
  v6 = [TLAlert alertWithConfiguration:v5];
  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009934;
    v11[3] = &unk_1002FC448;
    v7 = v4;
    v12 = v7;
    v13 = v5;
    v14 = self;
    [v6 playWithCompletionHandler:v11];
    [(NSMapTable *)self->_toneAlertsBySounds setObject:v6 forKey:v7];

    v8 = v12;
  }

  else
  {
    v8 = +[CLFLog commonLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ToneLibrary: no tone or vibration to play", &v10, 2u);
    }
  }

  return v6 != 0;
}

- (void)_endPendingCallbacksBlock
{
  v2 = self->_pendingCallbacks - 1;
  self->_pendingCallbacks = v2;
  if (!v2)
  {
    v4 = [(NSMutableArray *)self->_pendedCallbacks copy];
    [(NSMutableArray *)self->_pendedCallbacks removeAllObjects];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_enqueueCallback:(id)a3
{
  if (self->_pendingCallbacks)
  {
    v8 = [a3 copy];
    pendedCallbacks = self->_pendedCallbacks;
    v6 = objc_retainBlock(v8);
    [(NSMutableArray *)pendedCallbacks addObject:v6];
  }

  else
  {
    v7 = *(a3 + 2);

    v7(a3);
  }
}

@end