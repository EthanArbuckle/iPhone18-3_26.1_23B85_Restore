@interface MailQuickLookScene
+ (OS_os_log)log;
- (id)dismissActionsForPreviewController:(id)a3;
- (id)stateRestorationActivityForMailScene;
- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4;
- (void)_switchToComposeSceneAsReply:(BOOL)a3 composeType:(int64_t)a4;
- (void)mailSceneDidConnectWithOptions:(id)a3;
- (void)mailSceneWillEnterForeground;
@end

@implementation MailQuickLookScene

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100123310;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD120 != -1)
  {
    dispatch_once(&qword_1006DD120, block);
  }

  v2 = qword_1006DD118;

  return v2;
}

- (void)mailSceneDidConnectWithOptions:(id)a3
{
  v47.receiver = self;
  v47.super_class = MailQuickLookScene;
  v46 = a3;
  [(MailScene *)&v47 mailSceneDidConnectWithOptions:?];
  v4 = [(MailQuickLookScene *)self session];
  v5 = [v4 stateRestorationActivity];
  if (v5)
  {
LABEL_2:

    goto LABEL_4;
  }

  v6 = [v46 userActivities];
  v5 = [v6 anyObject];

  if (!v5)
  {
    v4 = +[MailQuickLookScene log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004890C8(v4, v39, v40, v41, v42, v43, v44, v45);
    }

    v5 = 0;
    goto LABEL_2;
  }

LABEL_4:
  v7 = [MFMailQLAttachmentContext contextWithUserActivity:v5];
  if (v7)
  {
    v8 = [QLItem alloc];
    v9 = [v7 attachmentURL];
    v10 = [v8 initWithURL:v9];

    if (!v10)
    {
      v11 = +[MailQuickLookScene log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100489100(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    v19 = [v7 attachmentURL];
    v20 = [v19 lastPathComponent];
    [(MailQuickLookScene *)self setTitle:v20];

    if (v10)
    {
      v48 = v10;
      v21 = [NSArray arrayWithObjects:&v48 count:1];
      goto LABEL_15;
    }
  }

  else
  {
    v22 = +[MailQuickLookScene log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100489138(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v10 = 0;
  v21 = &__NSArray0__struct;
LABEL_15:
  v30 = [[QLPreviewController alloc] initWithPreviewItems:v21];
  [v30 setIsContentManaged:{objc_msgSend(v7, "isContentManaged")}];
  if ([v7 editBehavior] == 2)
  {
    [v30 setAppearanceActions:4];
  }

  [v30 setDelegate:self];
  v31 = objc_alloc_init(UIViewController);
  v32 = +[UIColor systemBackgroundColor];
  v33 = [v31 view];
  [v33 setBackgroundColor:v32];

  [(MailQuickLookScene *)self setContext:v7];
  [(MailScene *)self setMf_rootViewController:v31];
  [(MailQuickLookScene *)self setPreviewController:v30];
  v34 = [v7 attachmentURL];
  v35 = [v34 absoluteString];
  v36 = [NSPredicate predicateWithFormat:@"self ENDSWITH %@", v35];

  v37 = [(MailQuickLookScene *)self activationConditions];
  [v37 setCanActivateForTargetContentIdentifierPredicate:v36];

  v38 = [(MailQuickLookScene *)self activationConditions];
  [v38 setPrefersToActivateForTargetContentIdentifierPredicate:v36];
}

- (void)mailSceneWillEnterForeground
{
  v9.receiver = self;
  v9.super_class = MailQuickLookScene;
  [(MailScene *)&v9 mailSceneWillEnterForeground];
  v3 = [(MailScene *)self mf_rootViewController];
  v4 = [v3 presentedViewController];

  v5 = +[MailQuickLookScene log];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preview controller already presented", v8, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Present preview controller", v8, 2u);
    }

    v5 = [(MailScene *)self mf_rootViewController];
    v7 = [(MailQuickLookScene *)self previewController];
    [v5 presentViewController:v7 animated:0 completion:0];
  }
}

- (id)stateRestorationActivityForMailScene
{
  v2 = [(MailQuickLookScene *)self context];
  v3 = [v2 userActivity];

  return v3;
}

- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4
{
  v4 = [(MailQuickLookScene *)self context:a3];
  v5 = 2 * ([v4 editBehavior] != 0);

  return v5;
}

- (id)dismissActionsForPreviewController:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(MailQuickLookScene *)self context];
  v6 = [v5 shouldShowReplyAll];

  v7 = [(MailQuickLookScene *)self context];
  v8 = [v7 senderDisplayName];

  objc_initWeak(location, self);
  if (v8)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"REPLY_TO_SENDER" value:&stru_100662A88 table:@"Main"];
    v11 = [NSString stringWithFormat:v10, v8];
    v12 = [UIImage systemImageNamed:MFImageGlyphReply];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100123F40;
    v27[3] = &unk_100650D08;
    objc_copyWeak(&v28, location);
    v13 = [QLDismissAction actionWithTitle:v11 image:v12 handler:v27];

    [v4 addObject:v13];
    objc_destroyWeak(&v28);
  }

  if (v6)
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"REPLY_ALL" value:&stru_100662A88 table:@"Main"];
    v16 = [UIImage systemImageNamed:MFImageGlyphReplyAll];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100123FA4;
    v25[3] = &unk_100650D08;
    objc_copyWeak(&v26, location);
    v17 = [QLDismissAction actionWithTitle:v15 image:v16 handler:v25];

    [v4 addObject:v17];
    objc_destroyWeak(&v26);
  }

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"TITLE_NEW_MESSAGE" value:&stru_100662A88 table:@"Main"];
  v20 = [UIImage systemImageNamed:MFImageGlyphCompose];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100124008;
  v23[3] = &unk_100650D08;
  objc_copyWeak(&v24, location);
  v21 = [QLDismissAction actionWithTitle:v19 image:v20 handler:v23];

  [v4 addObject:v21];
  objc_destroyWeak(&v24);
  objc_destroyWeak(location);

  return v4;
}

- (void)_switchToComposeSceneAsReply:(BOOL)a3 composeType:(int64_t)a4
{
  v5 = a3;
  v8 = [(MailQuickLookScene *)self context];
  v7 = [(MailQuickLookScene *)self modifiedContentsURL];
  [(MailScene *)self _switchToComposeSceneWithContext:v8 modifiedContentsURL:v7 isReply:v5 composeType:a4];
}

@end