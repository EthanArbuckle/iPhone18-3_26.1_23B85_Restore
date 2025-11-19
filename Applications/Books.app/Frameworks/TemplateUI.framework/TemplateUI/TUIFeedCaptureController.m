@interface TUIFeedCaptureController
+ (id)feedCaptureInfoWithURL:(id)a3 packagesURL:(id)a4;
- (TUIFeedCaptureController)initWithEntry:(id)a3 title:(id)a4;
- (TUIFeedCaptureController)initWithTitle:(id)a3;
- (id)_feedInfo;
- (id)_makeDir:(id)a3;
- (id)instantiateCaptureForEntry:(id)a3;
- (void)_copyPackages;
- (void)_emitDynamicState;
- (void)_emitImages;
- (void)beginCaptureWithFactory:(id)a3 completion:(id)a4;
- (void)captureSectionWithEntry:(id)a3 bindings:(id)a4 template:(id)a5;
- (void)endCapture;
@end

@implementation TUIFeedCaptureController

- (TUIFeedCaptureController)initWithTitle:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = TUIFeedCaptureController;
  v5 = [(TUIFeedCaptureController *)&v31 init];
  if (v5)
  {
    v30 = v4;
    v6 = [v4 copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"Untitled";
    }

    objc_storeStrong(&v5->_title, v8);

    v9 = NSTemporaryDirectory();
    v10 = [NSURL fileURLWithPath:v9 isDirectory:1];
    v11 = [v10 URLByAppendingPathComponent:v5->_title];
    v12 = [v11 URLByAppendingPathExtension:@"feed"];
    url = v5->_url;
    v5->_url = v12;

    v14 = +[NSFileManager defaultManager];
    v15 = [(NSURL *)v5->_url path];
    LODWORD(v11) = [v14 fileExistsAtPath:v15];

    if (v11)
    {
      v16 = 1;
      do
      {
        v17 = NSTemporaryDirectory();
        v18 = [NSURL fileURLWithPath:v17 isDirectory:1];
        v19 = [NSString stringWithFormat:@"%@-%lu", v5->_title, v16];
        v20 = [v18 URLByAppendingPathComponent:v19];
        v21 = [v20 URLByAppendingPathExtension:@"feed"];
        v22 = v5->_url;
        v5->_url = v21;

        v23 = [(NSURL *)v5->_url path];
        LOBYTE(v17) = [v14 fileExistsAtPath:v23];

        ++v16;
      }

      while ((v17 & 1) != 0);
    }

    v24 = +[NSFileManager defaultManager];
    [v24 createDirectoryAtURL:v5->_url withIntermediateDirectories:1 attributes:0 error:0];

    v25 = objc_opt_new();
    sections = v5->_sections;
    v5->_sections = v25;

    v27 = dispatch_group_create();
    completionGroup = v5->_completionGroup;
    v5->_completionGroup = v27;

    v4 = v30;
  }

  return v5;
}

- (TUIFeedCaptureController)initWithEntry:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = [(TUIFeedCaptureController *)self initWithTitle:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_entry, a3);
  }

  return v9;
}

- (id)_makeDir:(id)a3
{
  v3 = [(NSURL *)self->_url URLByAppendingPathComponent:a3];
  v4 = +[NSFileManager defaultManager];
  [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:0];

  return v3;
}

- (void)beginCaptureWithFactory:(id)a3 completion:(id)a4
{
  objc_storeStrong(&self->_factory, a3);
  v7 = a3;
  v8 = a4;
  dispatch_group_enter(self->_completionGroup);
  TUIDispatchGroupNotifyViaRunloopIfMain(self->_completionGroup, &_dispatch_main_q, v8);
}

- (void)endCapture
{
  [(TUIFeedCaptureController *)self _copyPackages];
  [(TUIFeedCaptureController *)self _emitDynamicState];
  [(TUIFeedCaptureController *)self _emitImages];
  v5 = [(NSURL *)self->_url URLByAppendingPathComponent:@"feed.json"];
  v3 = [(TUIFeedCaptureController *)self _feedInfo];
  v4 = [NSJSONSerialization dataWithJSONObject:v3 options:1 error:0];
  [v4 writeToURL:v5 atomically:0];

  dispatch_group_leave(self->_completionGroup);
}

- (void)captureSectionWithEntry:(id)a3 bindings:(id)a4 template:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_TUIFeedCaptureSection alloc] initWithEntry:v10 bindings:v9 template:v8];

  [(NSMutableArray *)self->_sections addObject:v11];
}

- (id)instantiateCaptureForEntry:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_sections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 entry];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_feedInfo
{
  v3 = objc_opt_new();
  sections = self->_sections;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_7608C;
  v12 = &unk_25F950;
  v13 = v3;
  v5 = v3;
  [(NSMutableArray *)sections enumerateObjectsUsingBlock:&v9];
  title = self->_title;
  v14[0] = @"title";
  v14[1] = @"sections";
  v15[0] = title;
  v15[1] = v5;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2, v9, v10, v11, v12];

  return v7;
}

- (void)_copyPackages
{
  v3 = [NSHashTable hashTableWithOptions:512];
  sections = self->_sections;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_762EC;
  v21[3] = &unk_25F950;
  v5 = v3;
  v22 = v5;
  [(NSMutableArray *)sections enumerateObjectsUsingBlock:v21];
  v6 = [(TUIFeedCaptureController *)self _makeDir:@"packages"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) url];
        v13 = [v12 URLByDeletingLastPathComponent];

        v14 = [v13 lastPathComponent];
        v15 = [v6 URLByAppendingPathComponent:v14];

        v16 = +[NSFileManager defaultManager];
        [v16 copyItemAtURL:v13 toURL:v15 error:0];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)_emitDynamicState
{
  v3 = objc_opt_new();
  sections = self->_sections;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_76680;
  v31[3] = &unk_25F950;
  v5 = v3;
  v32 = v5;
  [(NSMutableArray *)sections enumerateObjectsUsingBlock:v31];
  if ([v5 count])
  {
    v22 = [(TUIFeedCaptureController *)self _makeDir:@"dynamic-state"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        v9 = 0;
        do
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * v9);
          v11 = objc_opt_new();
          v12 = self->_sections;
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_76778;
          v25[3] = &unk_25F9C8;
          v25[4] = v10;
          v26 = v11;
          v13 = v11;
          [(NSMutableArray *)v12 enumerateObjectsUsingBlock:v25];
          v14 = objc_opt_new();
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_76900;
          v23[3] = &unk_25FA18;
          v24 = v14;
          v15 = v14;
          [v13 enumerateKeysAndObjectsUsingBlock:v23];
          v33 = @"instances";
          v34 = v15;
          v16 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v17 = [v22 URLByAppendingPathComponent:v10];
          v18 = [v17 URLByAppendingPathExtension:@"json"];

          v19 = [NSJSONSerialization dataWithJSONObject:v16 options:1 error:0];
          [v19 writeToURL:v18 atomically:0];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v7);
    }

    v5 = v20;
  }
}

- (void)_emitImages
{
  v3 = objc_opt_new();
  sections = self->_sections;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_772A0;
  v33[3] = &unk_25F950;
  v5 = v3;
  v34 = v5;
  [(NSMutableArray *)sections enumerateObjectsUsingBlock:v33];
  if ([v5 count])
  {
    v23 = [(TUIFeedCaptureController *)self _makeDir:@"images"];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        v9 = 0;
        do
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v29 + 1) + 8 * v9);
          v11 = objc_opt_new();
          v12 = self->_sections;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_77398;
          v27[3] = &unk_25F9C8;
          v27[4] = v10;
          v28 = v11;
          v13 = v11;
          [(NSMutableArray *)v12 enumerateObjectsUsingBlock:v27];
          v14 = objc_opt_new();
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_77520;
          v24[3] = &unk_25FAB8;
          v15 = v23;
          v25 = v15;
          v26 = v14;
          v16 = v14;
          [v13 enumerateKeysAndObjectsUsingBlock:v24];
          v35 = @"instances";
          v36 = v16;
          v17 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v18 = [v15 URLByAppendingPathComponent:v10];
          v19 = [v18 URLByAppendingPathExtension:@"json"];

          v20 = [NSJSONSerialization dataWithJSONObject:v17 options:1 error:0];
          [v20 writeToURL:v19 atomically:0];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v7);
    }

    v5 = v21;
  }
}

+ (id)feedCaptureInfoWithURL:(id)a3 packagesURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_TUIFeedCaptureInfo alloc] initWithURL:v6 packagesURL:v5];

  return v7;
}

@end