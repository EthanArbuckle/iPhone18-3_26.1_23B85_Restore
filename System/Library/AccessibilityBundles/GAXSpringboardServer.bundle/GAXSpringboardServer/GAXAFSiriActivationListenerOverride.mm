@interface GAXAFSiriActivationListenerOverride
- (void)_activateWithRequestInfo:(id)info context:(id)context completion:(id)completion;
@end

@implementation GAXAFSiriActivationListenerOverride

- (void)_activateWithRequestInfo:(id)info context:(id)context completion:(id)completion
{
  infoCopy = info;
  contextCopy = context;
  completionCopy = completion;
  v12 = +[GAXSpringboard sharedInstance];
  isActive = [v12 isActive];

  if (!isActive)
  {
    goto LABEL_10;
  }

  v14 = GAXLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Guided Access is active. Blocking Hey Siri request.", buf, 2u);
  }

  v15 = [NSError ax_errorWithDomain:@"GAXAFSiriActivationErrorDomain" description:@"Hey Siri is not permitted in Guided Access or its variants."];
  *buf = 0;
  v29 = buf;
  v30 = 0x2020000000;
  v31 = 0;
  if (completionCopy)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_14B80;
    v24 = &unk_2CCB8;
    v26 = completionCopy;
    v16 = v15;
    v25 = v16;
    v27 = buf;
    AXPerformSafeBlock();

    if (v29[24])
    {
      _Block_object_dispose(buf, 8);

      goto LABEL_11;
    }
  }

  v17 = GAXLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    v18 = NSStringFromSelector(a2);
    sub_168A0(v18, v32, v17);
  }

  v19 = v29[24];
  _Block_object_dispose(buf, 8);

  if ((v19 & 1) == 0)
  {
LABEL_10:
    v20.receiver = self;
    v20.super_class = GAXAFSiriActivationListenerOverride;
    [(GAXAFSiriActivationListenerOverride *)&v20 _activateWithRequestInfo:infoCopy context:contextCopy completion:completionCopy];
  }

LABEL_11:
}

@end