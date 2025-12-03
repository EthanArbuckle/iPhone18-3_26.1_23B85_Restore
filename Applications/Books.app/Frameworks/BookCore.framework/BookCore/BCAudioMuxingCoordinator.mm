@interface BCAudioMuxingCoordinator
+ (id)sharedInstance;
- (BCAudioMuxingCoordinator)init;
- (void)addAudioMuxingObserver:(id)observer;
- (void)beginLongAudioSessionWithIdentifier:(id)identifier completion:(id)completion;
- (void)notifyPlaybackWillStart:(id)start;
- (void)removeAudioMuxingObserver:(id)observer;
@end

@implementation BCAudioMuxingCoordinator

- (BCAudioMuxingCoordinator)init
{
  v6.receiver = self;
  v6.super_class = BCAudioMuxingCoordinator;
  v2 = [(BCAudioMuxingCoordinator *)&v6 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_342780 != -1)
  {
    sub_1E8640();
  }

  v3 = qword_342778;

  return v3;
}

- (void)addAudioMuxingObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_981EC;
    v6[3] = &unk_2C7BE8;
    v6[4] = self;
    v7 = observerCopy;
    os_unfair_lock_lock(&self->_lock);
    sub_981EC(v6);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)removeAudioMuxingObserver:(id)observer
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_982A4;
  v5[3] = &unk_2C7BE8;
  selfCopy = self;
  observerCopy = observer;
  v4 = observerCopy;
  os_unfair_lock_lock(&selfCopy->_lock);
  sub_982A4(v5);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyPlaybackWillStart:(id)start
{
  startCopy = start;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_984A0;
  v23 = sub_984B0;
  v24 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_984B8;
  v16 = &unk_2C7AE0;
  selfCopy = self;
  v18 = &v19;
  v5 = v14;
  os_unfair_lock_lock(&self->_lock);
  v15(v5);
  os_unfair_lock_unlock(&self->_lock);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = v20[5];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v25 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9) audioPlaybackWillStart:{startCopy, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v25 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v19, 8);
}

- (void)beginLongAudioSessionWithIdentifier:(id)identifier completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

@end