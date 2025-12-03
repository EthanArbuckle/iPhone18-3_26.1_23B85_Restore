@interface GAXSBInCallPresentationManagerOverride
- (void)handleOpenApplicationRequest:(id)request clientWorkspace:(id)workspace actions:(id)actions origin:(id)origin options:(id)options withResult:(id)result;
@end

@implementation GAXSBInCallPresentationManagerOverride

- (void)handleOpenApplicationRequest:(id)request clientWorkspace:(id)workspace actions:(id)actions origin:(id)origin options:(id)options withResult:(id)result
{
  requestCopy = request;
  workspaceCopy = workspace;
  actionsCopy = actions;
  originCopy = origin;
  optionsCopy = options;
  resultCopy = result;
  v20 = +[GAXSpringboard sharedInstance];
  if ([v20 isActive] && (objc_msgSend(v20, "frontmostAppIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", @"com.apple.ContactlessUIService"), v21, v22))
  {
    v23 = GAXLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Informing Tap2Pay of activation for InCallPresentation.", buf, 2u);
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v24 = qword_3B320;
    v35 = qword_3B320;
    if (!qword_3B320)
    {
      *buf = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_13548;
      v30 = &unk_2C9C8;
      v31 = &v32;
      sub_13548(buf);
      v24 = v33[3];
    }

    v25 = v24;
    _Block_object_dispose(&v32, 8);
    [v24 notifyIncomingCallAction:&stru_2F9C0];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = GAXSBInCallPresentationManagerOverride;
    [(GAXSBInCallPresentationManagerOverride *)&v26 handleOpenApplicationRequest:requestCopy clientWorkspace:workspaceCopy actions:actionsCopy origin:originCopy options:optionsCopy withResult:resultCopy];
  }
}

@end