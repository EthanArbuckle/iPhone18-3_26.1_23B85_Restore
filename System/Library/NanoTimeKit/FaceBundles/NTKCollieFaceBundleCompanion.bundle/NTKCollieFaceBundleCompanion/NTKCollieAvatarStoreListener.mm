@interface NTKCollieAvatarStoreListener
+ (NTKCollieAvatarStoreListener)sharedInstance;
- (NTKCollieAvatarStoreListener)init;
- (void)dealloc;
@end

@implementation NTKCollieAvatarStoreListener

+ (NTKCollieAvatarStoreListener)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_33288);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(NTKCollieAvatarStoreListener);
    objc_storeWeak(&qword_33288, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (NTKCollieAvatarStoreListener)init
{
  v7.receiver = self;
  v7.super_class = NTKCollieAvatarStoreListener;
  v2 = [(NTKCollieAvatarStoreListener *)&v7 init];
  if (v2)
  {
    v3 = +[AVTAvatarStore avatarStoreForWatch];
    v4 = _avtStore;
    _avtStore = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_avatarStoreDidChange:" name:AVTAvatarStoreDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AVTAvatarStoreDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = NTKCollieAvatarStoreListener;
  [(NTKCollieAvatarStoreListener *)&v4 dealloc];
}

@end