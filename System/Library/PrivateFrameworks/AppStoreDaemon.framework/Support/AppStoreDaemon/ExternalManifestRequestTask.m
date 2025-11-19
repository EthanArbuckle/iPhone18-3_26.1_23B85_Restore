@interface ExternalManifestRequestTask
- (void)main;
@end

@implementation ExternalManifestRequestTask

- (void)main
{
  if (self)
  {
    options = self->super._options;
  }

  else
  {
    options = 0;
  }

  v4 = options;
  v5 = objc_alloc_init(_TtC9appstored6LogKey);
  v6 = qos_class_self();
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(ASDRequestOptions *)v4 manifestURL];
    if (self)
    {
      client = self->super._client;
    }

    else
    {
      client = 0;
    }

    v10 = client;
    v11 = [(XPCClient *)v10 clientID];
    v12 = sub_100304BEC(v6);
    *buf = 138413314;
    v38 = v5;
    v39 = 2114;
    v40 = v8;
    v41 = 2114;
    v42 = v11;
    v43 = 2114;
    v44 = v12;
    v45 = 1024;
    v46 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Manifest for UPP: %{public}@ clientID: %{public}@ qoS: %{public}@ (0x%x)", buf, 0x30u);
  }

  v13 = objc_alloc_init(TaskQueue);
  v14 = [UPPManifestDownloadTask alloc];
  v15 = [(ASDRequestOptions *)v4 manifestURL];
  v16 = sub_1003FA4F0(XPCRequestToken, 1);
  v17 = sub_100215504(v14, v15, v16, [(ASDRequestOptions *)v4 shouldHideUserPrompts]);

  if (v17)
  {
    objc_setProperty_atomic(v17, v18, v5, 90);
  }

  if (self)
  {
    v19 = self->super._client;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  v21 = [(XPCClient *)v20 clientID];
  v23 = v21;
  if (v17)
  {
    objc_setProperty_atomic(v17, v22, v21, 82);

    *(v17 + 78) = v6;
  }

  else
  {
  }

  v36 = v17;
  v24 = [NSArray arrayWithObjects:&v36 count:1];
  if (v13)
  {
    [(NSOperationQueue *)v13->_operationQueue addOperations:v24 waitUntilFinished:1];
  }

  if (v17)
  {
    Property = objc_getProperty(v17, v25, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v27 = Property;
  v28 = [ASDExternalManifestResponse alloc];
  if (v27)
  {
    v29 = [v28 initWithError:v27];
  }

  else
  {
    v29 = [v28 initWithResults:&__NSArray0__struct];
  }

  v30 = v29;
  sub_10020F258(self, v29);
  if (v17)
  {
    v32 = v17[24];
    if (!self)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v32 = 0;
  if (self)
  {
LABEL_22:
    self->super.super._success = v32 & 1;
  }

LABEL_23:
  if (v17)
  {
    v33 = objc_getProperty(v17, v31, 32, 1);
  }

  else
  {
    v33 = 0;
  }

  v35 = v33;
  if (self)
  {
    objc_setProperty_atomic_copy(self, v34, v35, 32);
  }
}

@end