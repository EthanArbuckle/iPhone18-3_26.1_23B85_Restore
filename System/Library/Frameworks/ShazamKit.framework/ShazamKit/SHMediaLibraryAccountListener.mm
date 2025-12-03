@interface SHMediaLibraryAccountListener
- (SHMediaLibraryAccountListener)init;
- (void)dealloc;
- (void)listenForChanges;
- (void)stopListeningForChanges;
@end

@implementation SHMediaLibraryAccountListener

- (void)dealloc
{
  if (self->_notificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_notificationObserver];
  }

  v4.receiver = self;
  v4.super_class = SHMediaLibraryAccountListener;
  [(SHMediaLibraryAccountListener *)&v4 dealloc];
}

- (SHMediaLibraryAccountListener)init
{
  v6.receiver = self;
  v6.super_class = SHMediaLibraryAccountListener;
  v2 = [(SHMediaLibraryAccountListener *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SHMediaLibraryInfoFetcher);
    libraryInfoFetcher = v2->_libraryInfoFetcher;
    v2->_libraryInfoFetcher = v3;
  }

  return v2;
}

- (void)listenForChanges
{
  notificationObserver = [(SHMediaLibraryAccountListener *)self notificationObserver];

  if (notificationObserver)
  {
    [(SHMediaLibraryAccountListener *)self stopListeningForChanges];
  }

  objc_initWeak(&location, self);
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[NSOperationQueue mainQueue];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10002D094;
  v10 = &unk_10007D378;
  objc_copyWeak(&v11, &location);
  v6 = [v4 addObserverForName:CKAccountChangedNotification object:0 queue:v5 usingBlock:&v7];
  [(SHMediaLibraryAccountListener *)self setNotificationObserver:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)stopListeningForChanges
{
  v4 = +[NSNotificationCenter defaultCenter];
  notificationObserver = [(SHMediaLibraryAccountListener *)self notificationObserver];
  [v4 removeObserver:notificationObserver];
}

@end