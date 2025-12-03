@interface _ProtocolHandler
- (void)didCreateTask:(id)task fromRequest:(id)request error:(id *)error;
- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error;
@end

@implementation _ProtocolHandler

- (void)didCreateTask:(id)task fromRequest:(id)request error:(id *)error
{
  taskCopy = task;
  v11.receiver = self;
  v11.super_class = _ProtocolHandler;
  [(_ProtocolHandler *)&v11 didCreateTask:taskCopy fromRequest:request error:error];
  WeakRetained = objc_loadWeakRetained(&self->_protocolDelegate);
  v10 = sub_1003138F8(WeakRetained, taskCopy);

  if (v10)
  {
    sub_100247EA0(taskCopy, v10);
  }
}

- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error
{
  redirectCopy = redirect;
  requestCopy = request;
  taskCopy = task;
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    selfCopy2 = self;
    v23 = 2112;
    v24 = requestCopy;
    v25 = 2112;
    v26 = taskCopy;
    v27 = 1024;
    v28 = redirectCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "(ProtocolHandler) [%p] Reconfiguring request: %@ for task: %@ redirect: %d", buf, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_protocolDelegate);
  v14 = sub_1003138F8(WeakRetained, taskCopy);

  if (!v14)
  {
    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v23 = 2114;
      v24 = taskCopy;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "(ProtocolHandler) [%p] Environment not found for task: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v16 = objc_getProperty(v14, v15, 24, 1);
  v17 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_getProperty(v14, v18, 16, 1);
    *buf = 138412802;
    selfCopy2 = v19;
    v23 = 2112;
    v24 = taskCopy;
    v25 = 1024;
    LODWORD(v26) = redirectCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Reconfiguring request for task: %@ redirect: %d", buf, 0x1Cu);
  }

  if (v16)
  {
    (v16[2].isa)(v16, requestCopy);
LABEL_10:
  }

  v20.receiver = self;
  v20.super_class = _ProtocolHandler;
  [(_ProtocolHandler *)&v20 reconfigureNewRequest:requestCopy originalTask:taskCopy redirect:redirectCopy error:error];
}

@end