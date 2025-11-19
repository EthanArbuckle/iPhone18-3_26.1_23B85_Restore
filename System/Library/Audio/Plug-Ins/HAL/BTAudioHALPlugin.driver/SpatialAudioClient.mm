@interface SpatialAudioClient
- ($09AED28DA01A4B4CD63B1271B5E0322A)HighestQualityFormat;
- (SpatialAudioClient)initWithPid:(int)a3 deviceID:(unsigned int)a4;
- (void)ReleaseSpatialAudioQueueInfo;
- (void)cancelExitHandler;
- (void)dealloc;
- (void)dercrementRefCount;
- (void)incrementRefCount;
- (void)resetNonUIRefCount;
- (void)resetRefCount;
- (void)setNonUIRefCount;
- (void)updateHighestQualityFormat;
- (void)updateHostProcess:(int)a3;
@end

@implementation SpatialAudioClient

- (SpatialAudioClient)initWithPid:(int)a3 deviceID:(unsigned int)a4
{
  v17.receiver = self;
  v17.super_class = SpatialAudioClient;
  v6 = [(SpatialAudioClient *)&v17 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 100) = 0;
    *(v6 + 28) = 0;
    v6[96] = 0;
    *(v6 + 116) = 0xFF000000FFLL;
    *(v6 + 4) = a3;
    *(v6 + 5) = a4;
    *(v6 + 1) = 0;
    *(v6 + 124) = 0;
    *(v6 + 33) = 0;
    *(v6 + 3) = objc_alloc_init(NSMutableDictionary);
    v8 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Allocating Audio Client for PID %d", buf, 8u);
    }

    *buf = 0;
    v19 = 0;
    sub_70AF4(buf, &v7->clientMutex);
    v9 = sub_51524(qword_D8DF0, v7->deviceID);
    if (v9)
    {
      v10 = dispatch_source_create(&_dispatch_source_type_proc, a3, 0x80000000uLL, v9);
      v11 = v10;
      if (v10)
      {
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_29AFC;
        handler[3] = &unk_AE130;
        v16 = a3;
        handler[4] = v7;
        handler[5] = v10;
        dispatch_source_set_event_handler(v10, handler);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_29F5C;
        v13[3] = &unk_AE130;
        v13[4] = v11;
        v13[5] = v7;
        v14 = a3;
        dispatch_source_set_cancel_handler(v11, v13);
        dispatch_resume(v11);
      }

      v7->exit_handler = v11;
    }

    sub_70C40(buf);
  }

  else if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_ERROR))
  {
    sub_7AC00();
  }

  return v7;
}

- (void)ReleaseSpatialAudioQueueInfo
{
  v3 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    clientPid = self->clientPid;
    v5 = [(NSMutableDictionary *)self->audioQueueDict count];
    *buf = 67109376;
    *&buf[4] = clientPid;
    LOWORD(v17[0]) = 2048;
    *(v17 + 2) = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[ %d ] Clearing up all Audio Queue entries, Number of queues %lu ", buf, 0x12u);
  }

  *buf = 0;
  v17[0] = 0;
  sub_70AF4(buf, &self->clientMutex);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSMutableDictionary *)self->audioQueueDict allKeys];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([(NSMutableDictionary *)self->audioQueueDict objectForKey:v10])
        {
          [(NSMutableDictionary *)self->audioQueueDict removeObjectForKey:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  sub_70C40(buf);
}

- (void)updateHostProcess:(int)a3
{
  v5[0] = 0;
  v5[1] = 0;
  sub_70AF4(v5, &self->clientMutex);
  self->_hostProcess = a3;
  sub_70C40(v5);
}

- (void)updateHighestQualityFormat
{
  v54[0] = 0;
  v54[1] = 0;
  sub_70AF4(v54, &self->clientMutex);
  self->_numActiveQueue = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  audioQueueDict = self->audioQueueDict;
  v4 = [(NSMutableDictionary *)audioQueueDict countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (!v4)
  {
    *&self->_HighestQualityFormat.mSpatializationStatus = 0;
    *&self->_HighestQualityFormat.mClientProcessID = 0;
    goto LABEL_44;
  }

  v5 = 0;
  v6 = *v51;
  do
  {
    v7 = 0;
    do
    {
      if (*v51 != v6)
      {
        objc_enumerationMutation(audioQueueDict);
      }

      v8 = [(NSMutableDictionary *)self->audioQueueDict objectForKey:*(*(&v50 + 1) + 8 * v7)];
      v9 = v8;
      if (!v8)
      {
        goto LABEL_20;
      }

      [v8 streamInfo];
      if ((v10 & 0x1000000) != 0 || ([v9 streamInfo], v11 == 2) || (objc_msgSend(v9, "streamInfo"), v12 == 4))
      {
        if (!self->_disableControlCentreUpdate)
        {
          v19 = v9;
          if (v5)
          {
            [v5 streamInfo];
            if (v20 != 4)
            {
              [v5 streamInfo];
              if (v21 != 2)
              {
                [v5 streamInfo];
                if (v22 != 5)
                {
                  [v9 streamInfo];
                  v19 = v9;
                  if (v33 == 4)
                  {
                    goto LABEL_21;
                  }

                  [v9 streamInfo];
                  v19 = v9;
                  if (v34 == 2)
                  {
                    goto LABEL_21;
                  }

                  [v9 streamInfo];
                  v19 = v9;
                  if (v35 == 5)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_36;
                }
              }
            }

            [v5 streamInfo];
            v24 = v23;
            [v9 streamInfo];
            v26 = v24 >= v25;
            v19 = v9;
            if (!v26)
            {
              goto LABEL_21;
            }

            [v5 streamInfo];
            v28 = v27;
            [v9 streamInfo];
            if (((v29 ^ v28) & 0xFF00) != 0)
            {
              goto LABEL_20;
            }

            [v9 streamInfo];
            if (v30 == 1 || ([v9 streamInfo], v31 == 2))
            {
              [v9 streamInfo];
              if (v32 == 2)
              {
                v19 = v9;
              }

              else
              {
                v19 = v5;
              }

              goto LABEL_21;
            }

            [v9 streamInfo];
            if (v36 == 3 || ([v9 streamInfo], v37 == 4))
            {
              [v9 streamInfo];
              v19 = v9;
              if (v38 != 4)
              {
LABEL_36:
                [v5 streamInfo];
                v40 = v39;
                [v9 streamInfo];
                if (v40 >= v41)
                {
                  v19 = v5;
                }

                else
                {
                  v19 = v9;
                }
              }
            }

            else
            {
LABEL_20:
              v19 = v5;
            }
          }

LABEL_21:
          self->_numActiveQueue += [v9 audioQueueRef];
          v5 = v19;
          goto LABEL_22;
        }
      }

      v13 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v9 streamInfo];
        [v9 streamInfo];
        v16 = v15;
        [v9 streamInfo];
        disableControlCentreUpdate = self->_disableControlCentreUpdate;
        *buf = 67109888;
        v56 = v14;
        v57 = 1024;
        v58 = HIBYTE(v16) & 1;
        v59 = 1024;
        v60 = v18;
        v61 = 1024;
        LODWORD(v62) = disableControlCentreUpdate;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[ %d ]Highest quality format ignored mContentspatializable %d mSpatializationStatus %d _disableControlCentreUpdate %d", buf, 0x1Au);
      }

LABEL_22:
      v7 = v7 + 1;
    }

    while (v4 != v7);
    v42 = [(NSMutableDictionary *)audioQueueDict countByEnumeratingWithState:&v50 objects:v63 count:16];
    v4 = v42;
  }

  while (v42);
  *&self->_HighestQualityFormat.mSpatializationStatus = 0;
  *&self->_HighestQualityFormat.mClientProcessID = 0;
  if (v5)
  {
    v43 = [v5 streamInfo];
    v44 = HIDWORD(v43);
    v46 = v45;
    *&self->_HighestQualityFormat.mClientProcessID = v43;
    *&self->_HighestQualityFormat.mSpatializationStatus = v45;
    v47 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      clientPid = self->clientPid;
      v49[0] = HIBYTE(v44);
      v49[1] = BYTE2(v44);
      v49[2] = BYTE1(v44);
      v49[3] = v44;
      v49[4] = 0;
      *buf = 67109890;
      v56 = clientPid;
      v57 = 1024;
      v58 = v46;
      v59 = 1024;
      v60 = HIBYTE(v46);
      v61 = 2082;
      v62 = v49;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "[ %d ]Highest quality format Status = %d Channels = %d Format ID = %{public}s", buf, 0x1Eu);
    }
  }

LABEL_44:
  sub_70C40(v54);
}

- (void)incrementRefCount
{
  v3 = [(NSMutableDictionary *)self->audioQueueDict count];
  v6[0] = 0;
  v6[1] = 0;
  sub_70AF4(v6, &self->clientMutex);
  spatialRefCount = self->_spatialRefCount;
  if (spatialRefCount >= v3)
  {
    v5 = qword_D8508;
    if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Spatial Enable Exceed number of Qs %d", buf, 8u);
    }
  }

  else
  {
    self->_spatialRefCount = spatialRefCount + 1;
  }

  sub_70C40(v6);
}

- (void)dercrementRefCount
{
  v4[0] = 0;
  v4[1] = 0;
  sub_70AF4(v4, &self->clientMutex);
  spatialRefCount = self->_spatialRefCount;
  if (spatialRefCount)
  {
    self->_spatialRefCount = spatialRefCount - 1;
  }

  sub_70C40(v4);
}

- (void)resetRefCount
{
  v3[0] = 0;
  v3[1] = 0;
  sub_70AF4(v3, &self->clientMutex);
  self->_spatialRefCount = 0;
  sub_70C40(v3);
}

- (void)setNonUIRefCount
{
  v3[0] = 0;
  v3[1] = 0;
  sub_70AF4(v3, &self->clientMutex);
  self->_spatialNonUIRefCount = 1;
  sub_70C40(v3);
}

- (void)resetNonUIRefCount
{
  v3[0] = 0;
  v3[1] = 0;
  sub_70AF4(v3, &self->clientMutex);
  self->_spatialNonUIRefCount = 1;
  sub_70C40(v3);
}

- (void)cancelExitHandler
{
  exit_handler = self->exit_handler;
  if (exit_handler)
  {
    if (!dispatch_source_testcancel(self->exit_handler))
    {
      v4 = qword_D8508;
      if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
      {
        clientPid = self->clientPid;
        v6[0] = 67109120;
        v6[1] = clientPid;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[ %d ] Cancelling Audio client Spatial Dispatch Block", v6, 8u);
        exit_handler = self->exit_handler;
      }

      dispatch_source_cancel(exit_handler);
    }

    self->exit_handler = 0;
  }
}

- (void)dealloc
{
  v3 = qword_D8508;
  if (os_log_type_enabled(qword_D8508, OS_LOG_TYPE_DEFAULT))
  {
    clientPid = self->clientPid;
    *buf = 67109120;
    v8 = clientPid;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Release Audio Client for PID %d", buf, 8u);
  }

  [(SpatialAudioClient *)self ReleaseSpatialAudioQueueInfo];
  audioQueueDict = self->audioQueueDict;
  if (audioQueueDict)
  {
  }

  v6.receiver = self;
  v6.super_class = SpatialAudioClient;
  [(SpatialAudioClient *)&v6 dealloc];
}

- ($09AED28DA01A4B4CD63B1271B5E0322A)HighestQualityFormat
{
  objc_copyStruct(&v4, &self->_HighestQualityFormat, 12, 1, 0);
  v2 = v4;
  v3 = v5;
  result.var0 = v2;
  result.var1 = HIDWORD(v2);
  result.var2 = v3;
  result.var3 = BYTE1(v3);
  result.var4 = BYTE2(v3);
  result.var5 = HIBYTE(v3);
  return result;
}

@end