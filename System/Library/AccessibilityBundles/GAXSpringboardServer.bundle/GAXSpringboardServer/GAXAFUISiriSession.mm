@interface GAXAFUISiriSession
- (void)_startRequestWithFinalOptions:(id)a3 completion:(id)a4;
@end

@implementation GAXAFUISiriSession

- (void)_startRequestWithFinalOptions:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[GAXSpringboard sharedInstance];
  v10 = [v9 isActive];

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = GAXLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Guided Access is active. Blocking Siri request.", buf, 2u);
  }

  v12 = [NSError ax_errorWithDomain:@"GAXAFAssistantUIErrorDomain" description:@"Hey Siri is not permitted in Guided Access or its variants."];
  *buf = 0;
  v26 = buf;
  v27 = 0x2020000000;
  v28 = 0;
  if (v8)
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_9608;
    v21 = &unk_2CCB8;
    v23 = v8;
    v13 = v12;
    v22 = v13;
    v24 = buf;
    AXPerformSafeBlock();

    if (v26[24])
    {
      _Block_object_dispose(buf, 8);

      goto LABEL_11;
    }
  }

  v14 = GAXLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v15 = NSStringFromSelector(a2);
    sub_168A0(v15, v29, v14);
  }

  v16 = v26[24];
  _Block_object_dispose(buf, 8);

  if ((v16 & 1) == 0)
  {
LABEL_10:
    v17.receiver = self;
    v17.super_class = GAXAFUISiriSession;
    [(GAXAFUISiriSession *)&v17 _startRequestWithFinalOptions:v7 completion:v8];
  }

LABEL_11:
}

@end