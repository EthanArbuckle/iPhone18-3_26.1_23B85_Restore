@interface BKLibrarySharedContainerManager
+ (id)sharedInstance;
- (BKLibrarySharedContainerManager)init;
- (id)sharedURLForEntry:(id)entry;
@end

@implementation BKLibrarySharedContainerManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088B4C;
  block[3] = &unk_100A03560;
  block[4] = self;
  if (qword_100AF74A8 != -1)
  {
    dispatch_once(&qword_100AF74A8, block);
  }

  v2 = qword_100AF74A0;

  return v2;
}

- (BKLibrarySharedContainerManager)init
{
  v3 = +[BLLibrary defaultBookLibrary];
  _isMultiUser = [v3 _isMultiUser];

  if (_isMultiUser)
  {
    v11.receiver = self;
    v11.super_class = BKLibrarySharedContainerManager;
    v5 = [(BKLibrarySharedContainerManager *)&v11 init];
    if (v5)
    {
      v6 = dispatch_queue_create("BKLibrarySharedContainerManager.urlQueue", 0);
      plistQueue = v5->_plistQueue;
      v5->_plistQueue = v6;

      v8 = [IMLibraryPlist libraryPlistWithKind:3];
      plist = v5->_plist;
      v5->_plist = v8;
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)sharedURLForEntry:(id)entry
{
  entryCopy = entry;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100027324;
  v20 = sub_1000275D8;
  v21 = 0;
  v5 = [IMLibraryPlist assetIDFromPlistEntry:entryCopy];
  v6 = [IMLibraryPlist temporaryItemIdentifierFromPlistEntry:entryCopy];
  v7 = [IMLibraryPlist permlinkFromPlistEntry:entryCopy];
  if ([v5 length] || objc_msgSend(v6, "length") || v7)
  {
    plistQueue = self->_plistQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100088E18;
    block[3] = &unk_100A04DF8;
    block[4] = self;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = &v16;
    dispatch_sync(plistQueue, block);
  }

  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

@end