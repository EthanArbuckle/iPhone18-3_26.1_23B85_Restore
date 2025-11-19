@interface AXCACCustomCommandEditorServiceViewController
- (AXCACCustomCommandEditorServiceViewController)init;
- (void)_dismiss;
- (void)_saveCommandItem;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation AXCACCustomCommandEditorServiceViewController

- (AXCACCustomCommandEditorServiceViewController)init
{
  v20.receiver = self;
  v20.super_class = AXCACCustomCommandEditorServiceViewController;
  v2 = [(AXCACCustomCommandEditorServiceViewController *)&v20 init];
  if (v2)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v3 = qword_100031868;
    v29 = qword_100031868;
    if (!qword_100031868)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100002A68;
      v24 = &unk_100028780;
      v25 = &v26;
      sub_100002A68(&v21);
      v3 = v27[3];
    }

    v4 = v3;
    _Block_object_dispose(&v26, 8);
    v5 = objc_alloc_init(v3);
    [v5 setDelegate:v2];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v6 = qword_100031878;
    v29 = qword_100031878;
    if (!qword_100031878)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100002C34;
      v24 = &unk_100028780;
      v25 = &v26;
      sub_100002C34(&v21);
      v6 = v27[3];
    }

    v7 = v6;
    _Block_object_dispose(&v26, 8);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v8 = qword_100031880;
    v29 = qword_100031880;
    if (!qword_100031880)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100002C8C;
      v24 = &unk_100028780;
      v25 = &v26;
      sub_100002C8C(&v21);
      v8 = v27[3];
    }

    v9 = v8;
    _Block_object_dispose(&v26, 8);
    v10 = [v8 sharedPreferences];
    v11 = [v10 bestLocaleIdentifier];
    v12 = [v6 newCommandItemWithLocale:v11 scope:@"com.apple.speech.SystemWideScope"];
    [v5 setCommandItem:v12];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CommandAndControlCustomCommandEditor.new.command" value:&stru_100028F48 table:@"AXUIViewService"];
    [v5 setTitle:v14];

    editor = v2->_editor;
    v2->_editor = v5;
    v16 = v5;

    v17 = [[UINavigationController alloc] initWithRootViewController:v2->_editor];
    editorNavigationController = v2->_editorNavigationController;
    v2->_editorNavigationController = v17;
  }

  return v2;
}

- (void)_saveCommandItem
{
  v3 = [(AXCACCustomCommandEditorServiceViewController *)self editor];
  v4 = [v3 commandItem];

  v5 = [v4 dictionaryForSavingToPreferences];
  if (v5)
  {
    v6 = [v4 identifier];

    if (v6)
    {
      v23[0] = kAXCACCustomCommandIdentifierKey;
      v7 = [v4 identifier];
      v23[1] = kAXCACCustomCommandDictionaryKey;
      v24[0] = v7;
      v24[1] = v5;
      v8 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
      UIAccessibilityPostNotification(0x7ECu, v8);
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v9 = off_100031888;
      v22 = off_100031888;
      if (!off_100031888)
      {
        v15 = _NSConcreteStackBlock;
        v16 = 3221225472;
        v17 = sub_100002CE4;
        v18 = &unk_100028780;
        v10 = sub_100002AC0();
        v20[3] = dlsym(v10, "CACLogPreferences");
        off_100031888 = v20[3];
        v9 = v20[3];
      }

      _Block_object_dispose(&v19, 8);
      if (!v9)
      {
        sub_100012D7C();
        __break(1u);
      }

      v7 = v9(v11, v12, v13, v14);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100012D08();
      }
    }
  }

  [(AXCACCustomCommandEditorServiceViewController *)self _dismiss:v15];
}

- (void)_dismiss
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000023AC;
  v2[3] = &unk_100028758;
  v2[4] = self;
  [(AXCACCustomCommandEditorServiceViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v8 objectForKeyedSubscript:AXCACCommandEditorTextToInsertKey];

  v10 = [v6 userInfo];
  v11 = [v10 objectForKeyedSubscript:AXCACCommandEditorGestureKey];

  v12 = [v6 userInfo];
  v13 = [v12 objectForKeyedSubscript:AXCACCommandEditorUserActionFlowKey];

  v14 = [v6 userInfo];
  v15 = [v14 objectForKeyedSubscript:AXCACCommandEditorShortcutWorkflowKey];

  v16 = [v6 userInfo];
  v33 = [v16 objectForKeyedSubscript:AXCACCommandEditorPasteboardKey];

  if (!v9 && !v11 && !v13)
  {
    v17 = sub_1000028D4();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100012DA0(v6, v17);
    }
  }

  v18 = [(AXCACCustomCommandEditorServiceViewController *)self editor];
  v19 = [v18 commandItem];

  if (v9)
  {
    if (![v9 length])
    {
      v20 = sub_1000028D4();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100012E38(v20);
      }
    }

    [v19 setCustomType:@"PasteText"];
    [v19 setCustomTextToInsert:v9];
    goto LABEL_30;
  }

  if (v11)
  {
    v32 = v15;
    v35 = 0;
    v21 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v35];
    v22 = v35;
    if (v21)
    {
      [v19 setCustomType:@"RunGesture"];
      [v19 setCustomGesture:v21];
LABEL_29:

      v15 = v32;
      goto LABEL_30;
    }

    v25 = sub_1000028D4();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100012E7C();
    }

    goto LABEL_28;
  }

  if (v13)
  {
    v32 = v15;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v23 = qword_100031898;
    v40 = qword_100031898;
    if (!qword_100031898)
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100002D84;
      v36[3] = &unk_100028780;
      v36[4] = &v37;
      sub_100002D84(v36);
      v23 = v38[3];
    }

    v24 = v23;
    _Block_object_dispose(&v37, 8);
    v34 = 0;
    v21 = [NSKeyedUnarchiver unarchivedObjectOfClass:v23 fromData:v13 error:&v34];
    v22 = v34;
    if (v21)
    {
      [v19 setCustomType:@"RunUserActionFlow"];
      [v19 setCustomUserActionFlow:v21];
      goto LABEL_29;
    }

    v25 = sub_1000028D4();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100012EF0();
    }

LABEL_28:

    goto LABEL_29;
  }

  if (v15)
  {
    v26 = +[AXSiriShortcutsManager sharedManager];
    v27 = [v26 shortcutForIdentifier:v15];

    if (v27)
    {
      [v19 setCustomType:@"RunShortcutsWorkflow"];
      [v19 setCustomShortcutsWorkflowIdentifier:v15];
    }

    else
    {
      v31 = sub_1000028D4();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100012F64();
      }
    }
  }

LABEL_30:
  v28 = [v6 userInfo];
  v29 = [v28 objectForKeyedSubscript:AXCACCommandEditorApplicationIdentifiersToNamesKey];

  v30 = [(AXCACCustomCommandEditorServiceViewController *)self editor];
  [v30 setApplicationIdentifiersToNames:v29];

  if (v7)
  {
    v7[2](v7);
  }
}

@end