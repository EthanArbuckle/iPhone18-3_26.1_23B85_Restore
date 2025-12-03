@interface FRTagEditorialItemDownloader
- (FRTagEditorialItemDownloader)initWithTagController:(id)controller editorialItemEntryManager:(id)manager;
- (void)downloadEditorialItemWithIDs:(id)ds completion:(id)completion;
@end

@implementation FRTagEditorialItemDownloader

- (FRTagEditorialItemDownloader)initWithTagController:(id)controller editorialItemEntryManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  if (!controllerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100075A54();
    if (managerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (managerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100075B34();
  }

LABEL_6:
  v12.receiver = self;
  v12.super_class = FRTagEditorialItemDownloader;
  v9 = [(FRTagEditorialItemDownloader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tagController, controller);
    objc_storeStrong(&v10->_editorialItemEntryManager, manager);
  }

  return v10;
}

- (void)downloadEditorialItemWithIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    objc_initWeak(location, self);
    tagController = [(FRTagEditorialItemDownloader *)self tagController];
    v9 = &_dispatch_main_q;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000649D8;
    v11[3] = &unk_1000C64E0;
    objc_copyWeak(&v13, location);
    v12 = completionCopy;
    [tagController fetchTagsForTagIDs:dsCopy qualityOfService:9 callbackQueue:&_dispatch_main_q completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    location[1] = _NSConcreteStackBlock;
    location[2] = 3221225472;
    location[3] = sub_1000649B8;
    location[4] = &unk_1000C3098;
    v10 = completionCopy;
    v15 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, &__NSDictionary0__struct);
    }
  }
}

@end