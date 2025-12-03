@interface TKTokenAccessManager
- (TKTokenAccessManager)initWithTokenAccessRegistry:(id)registry applicationWorkSpace:(id)space;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)cleanupInvalidTokenAccessRecords;
- (void)dealloc;
- (void)pluginsDidUninstall:(id)uninstall;
@end

@implementation TKTokenAccessManager

- (TKTokenAccessManager)initWithTokenAccessRegistry:(id)registry applicationWorkSpace:(id)space
{
  registryCopy = registry;
  spaceCopy = space;
  v14.receiver = self;
  v14.super_class = TKTokenAccessManager;
  v9 = [(TKTokenAccessManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tokenAccessRegistry, registry);
    objc_storeStrong(&v10->_applicationWorkspace, space);
    v11 = dispatch_queue_create("com.apple.ctkd.tokenaccessmanager", 0);
    queue = v10->_queue;
    v10->_queue = v11;
  }

  return v10;
}

- (void)dealloc
{
  [(LSApplicationWorkspace *)self->_applicationWorkspace removeObserver:self];
  v3.receiver = self;
  v3.super_class = TKTokenAccessManager;
  [(TKTokenAccessManager *)&v3 dealloc];
}

- (void)cleanupInvalidTokenAccessRecords
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011998;
  block[3] = &unk_100038710;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011D5C;
  v7[3] = &unk_100038760;
  v8 = uninstallCopy;
  selfCopy = self;
  v6 = uninstallCopy;
  dispatch_async(queue, v7);
}

- (void)pluginsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011F80;
  v7[3] = &unk_100038760;
  v8 = uninstallCopy;
  selfCopy = self;
  v6 = uninstallCopy;
  dispatch_async(queue, v7);
}

@end