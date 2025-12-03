@interface _ProtocolDelegate
- (_ProtocolDelegate)init;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation _ProtocolDelegate

- (_ProtocolDelegate)init
{
  v6.receiver = self;
  v6.super_class = _ProtocolDelegate;
  v2 = [(_ProtocolDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ThreadSafeDictionary);
    tagEnvironment = v2->_tagEnvironment;
    v2->_tagEnvironment = v3;
  }

  return v2;
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  taskCopy = task;
  requestCopy = request;
  completionCopy = completion;
  logKey = [requestCopy logKey];
  v13 = sub_1003138F8(self, taskCopy);
  v15 = v13;
  if (v13)
  {
    v16 = objc_getProperty(v13, v14, 32, 1);
    if (v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v25 = logKey;
      v26 = 2114;
      v27 = taskCopy;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Environment not found for task: %{public}@", buf, 0x16u);
    }
  }

  v18 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v25 = logKey;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Using silent presenter for authentication as no other presenter was specified", buf, 0xCu);
  }

  v16 = objc_alloc_init(SilentRequestPresenter);
LABEL_10:
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100313BA8;
  v21[3] = &unk_10051E040;
  v22 = logKey;
  v23 = completionCopy;
  v19 = completionCopy;
  v20 = logKey;
  [(SilentRequestPresenter *)v16 presentAuthenticateRequest:requestCopy resultHandler:v21];
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  taskCopy = task;
  requestCopy = request;
  completionCopy = completion;
  logKey = [requestCopy logKey];
  v13 = sub_1003138F8(self, taskCopy);
  v15 = v13;
  if (v13)
  {
    v16 = objc_getProperty(v13, v14, 32, 1);
    if (v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v25 = logKey;
      v26 = 2114;
      v27 = taskCopy;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Environment not found for task: %{public}@", buf, 0x16u);
    }
  }

  v18 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v25 = logKey;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Using silent presenter for dialog as no other presenter was specified", buf, 0xCu);
  }

  v16 = objc_alloc_init(SilentRequestPresenter);
LABEL_10:
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100313F20;
  v21[3] = &unk_10051E068;
  v22 = logKey;
  v23 = completionCopy;
  v19 = completionCopy;
  v20 = logKey;
  [(SilentRequestPresenter *)v16 presentDialogRequest:requestCopy resultHandler:v21];
}

- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  requestCopy = request;
  logKey = [requestCopy logKey];
  v13 = sub_1003138F8(self, taskCopy);
  v15 = v13;
  if (v13)
  {
    v17 = objc_getProperty(v13, v14, 32, 1);
    if (v17)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = logKey;
      v29 = 2114;
      v30 = taskCopy;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Environment not found for task: %{public}@", buf, 0x16u);
    }
  }

  v19 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v28 = logKey;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%{public}@] Using silent presenter for engagement as no other presenter was specified", buf, 0xCu);
  }

  v17 = objc_alloc_init(SilentRequestPresenter);
  if (!v15)
  {
    Property = 0;
    goto LABEL_11;
  }

LABEL_10:
  Property = objc_getProperty(v15, v16, 8, 1);
LABEL_11:
  v21 = Property;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1003142C8;
  v24[3] = &unk_10051F1C8;
  v25 = logKey;
  v26 = completionCopy;
  v22 = completionCopy;
  v23 = logKey;
  [(SilentRequestPresenter *)v17 presentEngagementRequest:requestCopy withClientInfo:v21 resultHandler:v24];
}

@end