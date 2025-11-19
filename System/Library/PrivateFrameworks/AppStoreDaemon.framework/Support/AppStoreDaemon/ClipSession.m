@interface ClipSession
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4;
- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation ClipSession

- (void)dealloc
{
  [(NSProgress *)self->_overallProgress removeObserver:self forKeyPath:@"fractionCompleted"];
  v3.receiver = self;
  v3.super_class = ClipSession;
  [(ClipSession *)&v3 dealloc];
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v6 = a4;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  signpostID = self->_logContext.signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, signpostID, "Clip::Event/Coordinator/Cancel", "", buf, 2u);
  }

  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001C966C;
  v13[3] = &unk_10051B570;
  v13[4] = self;
  v14 = v6;
  v11 = v6;
  v12 = v11;
  if (dispatchQueue)
  {
    dispatch_sync(dispatchQueue->_queue, v13);
    v12 = v14;
  }
}

- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4
{
  v5 = ASDLogHandleForCategory();
  v6 = v5;
  signpostID = self->_logContext.signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, signpostID, "Clip::Event/Coordinator/Complete", "", buf, 2u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C9790;
  block[3] = &unk_10051AF98;
  block[4] = self;
  if (dispatchQueue)
  {
    dispatch_sync(dispatchQueue->_queue, block);
  }
}

- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4
{
  v5 = ASDLogHandleForCategory();
  v6 = v5;
  signpostID = self->_logContext.signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, signpostID, "Clip::Event/Coordinator/Placeholder", "", buf, 2u);
  }

  v8 = ASDLogHandleForCategory();
  v9 = v8;
  v10 = self->_logContext.signpostID;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "Clip::Coordinator/Placeholder", "", buf, 2u);
  }

  channel = self->_channel;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001C9A54;
  v13[3] = &unk_10051B5C0;
  v13[4] = self;
  v12 = [(ASDClipSessionChannel *)channel synchronousRemoteObjectProxyWithErrorHandler:v13];
  [v12 channelNotifyDidInstallPlaceholder];

  sub_1001C9B28(self, 1);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  v9 = a3;
  v10 = ASDLogHandleForCategory();
  v11 = v10;
  signpostID = self->_logContext.signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, signpostID, "Clip::Event/Download/Progress", "", v15, 2u);
  }

  v13 = [v9 isEqualToString:@"fractionCompleted"];
  if (v13)
  {
    [v8 fractionCompleted];
    sub_1001C9E74(self, v14);
  }
}

@end