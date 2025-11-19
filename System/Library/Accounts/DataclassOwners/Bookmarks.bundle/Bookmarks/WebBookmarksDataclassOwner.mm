@interface WebBookmarksDataclassOwner
+ (id)dataclasses;
- (BOOL)_isLocalSourceEmpty;
- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6;
- (WebBookmarksDataclassOwner)init;
- (id)_bookmarkCollection;
- (id)_tabCollection;
- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4;
- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4;
- (void)_resetCloudHistoryData;
@end

@implementation WebBookmarksDataclassOwner

+ (id)dataclasses
{
  v4 = kAccountDataclassBookmarks;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (WebBookmarksDataclassOwner)init
{
  v6.receiver = self;
  v6.super_class = WebBookmarksDataclassOwner;
  v2 = [(WebBookmarksDataclassOwner *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.dco.bookmarks", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4
{
  v5 = [a3 accountType];
  v6 = [v5 identifier];
  if ([v6 isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {
  }

  else
  {
    v7 = [v5 identifier];
    v8 = [v7 isEqualToString:ACAccountTypeIdentifierBookmarkDAV];

    if (!v8)
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

  if ([(WebBookmarksDataclassOwner *)self _isLocalSourceEmpty])
  {
    v9 = [ACDataclassAction actionWithType:1];
    v15 = v9;
    v10 = [NSArray arrayWithObjects:&v15 count:1];
  }

  else
  {
    v11 = [ACDataclassAction actionWithType:5];
    v10 = [NSMutableArray arrayWithObject:v11];

    v12 = +[WBFeatureManager sharedFeatureManager];
    v13 = [v12 accessLevel];

    if (v13 == &dword_0 + 2)
    {
      goto LABEL_10;
    }

    v9 = [ACDataclassAction actionWithType:0];
    [v10 addObject:v9];
  }

LABEL_10:

  return v10;
}

- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4
{
  v4 = [a3 accountType];
  v5 = [v4 identifier];
  if ([v5 isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {

LABEL_4:
    v8 = +[NSMutableArray array];
    v9 = +[WBFeatureManager sharedFeatureManager];
    v10 = [v9 accessLevel];

    if (v10 == &dword_0 + 2)
    {
      v11 = 2;
    }

    else
    {
      v12 = [ACDataclassAction destructiveActionWithType:3];
      [v8 addObject:v12];

      v13 = [ACDataclassAction actionWithType:2];
      [v8 addObject:v13];

      v11 = 0;
    }

    v14 = [ACDataclassAction actionWithType:v11];
    [v8 addObject:v14];

    goto LABEL_9;
  }

  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:ACAccountTypeIdentifierBookmarkDAV];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v14 = [v10 type];
  v15 = [v11 accountType];
  v16 = [v15 identifier];

  v17 = [v16 isEqualToString:ACAccountTypeIdentifierAppleAccount];
  if ((v17 | [v16 isEqualToString:ACAccountTypeIdentifierBookmarkDAV]))
  {
    if ((v14 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      if (v14 == 2)
      {
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_15A4;
        block[3] = &unk_4230;
        block[4] = &v24;
        v19 = block;
      }

      else
      {
        if (v14 != 3)
        {
          goto LABEL_9;
        }

        queue = self->_queue;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1328;
        v23[3] = &unk_4208;
        v23[4] = self;
        v23[5] = &v24;
        v19 = v23;
      }

      dispatch_sync(queue, v19);
      goto LABEL_9;
    }

    *(v25 + 24) = 1;
  }

LABEL_9:
  if (v17 && [(WebBookmarksDataclassOwner *)self _actionTypeRepresentsDataClassEnabledTransition:v14])
  {
    [(WebBookmarksDataclassOwner *)self _resetCloudHistoryData];
  }

  v20 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (void)_resetCloudHistoryData
{
  v2 = WBSafariPreferencesDomain();
  CFPreferencesSetAppValue(WebBookmarksResetCloudHistoryAccountDefaultsKey, kCFBooleanTrue, v2);
  CFPreferencesAppSynchronize(v2);
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 postNotificationName:WebBookmarksDataclassDidChangeNotification object:0];
}

- (id)_bookmarkCollection
{
  if (qword_8620)
  {
    v2 = qword_8620;
  }

  else
  {
    v3 = +[WebBookmarkCollection isLockedSync];
    if ((v3 & 1) == 0)
    {
      +[WebBookmarkCollection lockSync];
    }

    v4 = +[WBCollectionConfiguration safariBookmarkCollectionConfiguration];
    [v4 setSkipsExternalNotifications:1];
    v5 = [[WebBookmarkCollection alloc] initWithConfiguration:v4 checkIntegrity:0];
    v6 = qword_8620;
    qword_8620 = v5;

    if ((v3 & 1) == 0)
    {
      +[WebBookmarkCollection unlockSync];
    }

    v2 = qword_8620;
  }

  return v2;
}

- (id)_tabCollection
{
  if (qword_8630 != -1)
  {
    sub_1A54();
  }

  v3 = qword_8628;

  return v3;
}

- (BOOL)_isLocalSourceEmpty
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_19A8;
  v5[3] = &unk_4278;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end