@interface _ProtocolHandler
- (void)didCreateTask:(id)a3 fromRequest:(id)a4 error:(id *)a5;
- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6;
@end

@implementation _ProtocolHandler

- (void)didCreateTask:(id)a3 fromRequest:(id)a4 error:(id *)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = _ProtocolHandler;
  [(_ProtocolHandler *)&v11 didCreateTask:v8 fromRequest:a4 error:a5];
  WeakRetained = objc_loadWeakRetained(&self->_protocolDelegate);
  v10 = sub_1003138F8(WeakRetained, v8);

  if (v10)
  {
    sub_100247EA0(v8, v10);
  }
}

- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v22 = self;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 1024;
    v28 = v7;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "(ProtocolHandler) [%p] Reconfiguring request: %@ for task: %@ redirect: %d", buf, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_protocolDelegate);
  v14 = sub_1003138F8(WeakRetained, v11);

  if (!v14)
  {
    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v22 = self;
      v23 = 2114;
      v24 = v11;
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
    v22 = v19;
    v23 = 2112;
    v24 = v11;
    v25 = 1024;
    LODWORD(v26) = v7;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Reconfiguring request for task: %@ redirect: %d", buf, 0x1Cu);
  }

  if (v16)
  {
    (v16[2].isa)(v16, v10);
LABEL_10:
  }

  v20.receiver = self;
  v20.super_class = _ProtocolHandler;
  [(_ProtocolHandler *)&v20 reconfigureNewRequest:v10 originalTask:v11 redirect:v7 error:a6];
}

@end