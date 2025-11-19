@interface CLSContextProviderService
- (CLSContextProviderService)init;
- (CLSContextProviderService)initWithExtension:(id)a3;
- (id)description;
- (void)connectWithCompletionHandler:(id)a3;
- (void)disconnect;
- (void)getMainAppContextPathWithCompletion:(id)a3;
- (void)updateDescendantsOfContextPath:(id)a3 completion:(id)a4;
@end

@implementation CLSContextProviderService

- (CLSContextProviderService)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v8, @"The method [%@ %@] is not available.", v6, v7);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v3, v10, v4, v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (CLSContextProviderService)initWithExtension:(id)a3
{
  v5 = a3;
  v41.receiver = self;
  v41.super_class = CLSContextProviderService;
  v6 = [(CLSContextProviderService *)&v41 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.ClassKit.ContextProviderServiceConnection", v8);
    v10 = *(v6 + 1);
    *(v6 + 1) = v9;

    objc_storeStrong(v6 + 2, a3);
    v13 = objc_msgSend_identifier(v5, v11, v12);
    v14 = *(v6 + 8);
    *(v6 + 8) = v13;

    v15 = objc_alloc(MEMORY[0x277CC1E50]);
    v17 = objc_msgSend_initWithBundleIdentifier_error_(v15, v16, *(v6 + 8), 0);
    v20 = v17;
    if (v17)
    {
      v21 = objc_msgSend_containingBundleRecord(v17, v18, v19);
      v24 = objc_msgSend_infoDictionary(v21, v22, v23);
      v27 = objc_msgSend_bundleIdentifier(v21, v25, v26);
      v28 = *(v6 + 9);
      *(v6 + 9) = v27;

      v29 = *MEMORY[0x277CBED50];
      v30 = objc_opt_class();
      v32 = objc_msgSend_objectForKey_ofClass_(v24, v31, v29, v30);
      v33 = *(v6 + 10);
      *(v6 + 10) = v32;

      if (!objc_msgSend_length(*(v6 + 10), v34, v35))
      {
        objc_storeStrong(v6 + 10, *(v6 + 9));
      }

      v38 = objc_msgSend_localizedName(v21, v36, v37);
      v39 = *(v6 + 11);
      *(v6 + 11) = v38;
    }
  }

  return v6;
}

- (void)connectWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  serviceConnectionQueue = self->_serviceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FC3C64;
  block[3] = &unk_278A18E98;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(serviceConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)disconnect
{
  objc_initWeak(&location, self);
  serviceConnectionQueue = self->_serviceConnectionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_236FC4334;
  v4[3] = &unk_278A184B8;
  objc_copyWeak(&v5, &location);
  dispatch_async(serviceConnectionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)getMainAppContextPathWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  serviceConnectionQueue = self->_serviceConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FC44A8;
  block[3] = &unk_278A18E98;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(serviceConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updateDescendantsOfContextPath:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  serviceConnectionQueue = self->_serviceConnectionQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_236FC4884;
  v11[3] = &unk_278A18EC0;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(serviceConnectionQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)description
{
  v3 = objc_opt_new();
  objc_msgSend_appendFormat_(v3, v4, @"CLSContextProviderService: <%p>\n", self);
  objc_msgSend_appendFormat_(v3, v5, @"  extensionIdentifier: %@\n", self->_extensionIdentifier);
  objc_msgSend_appendFormat_(v3, v6, @"  appIdentifier      : %@\n", self->_appIdentifier);
  objc_msgSend_appendFormat_(v3, v7, @"  appName            : %@\n", self->_appName);
  objc_msgSend_appendFormat_(v3, v8, @"  localizedAppName   : %@\n", self->_localizedAppName);
  objc_msgSend_appendFormat_(v3, v9, @"  mainAppContextPath : %@\n", self->_mainAppContextPath);
  v10 = atomic_load(&self->_connectionCount);
  objc_msgSend_appendFormat_(v3, v11, @"  connectionCount    : %d\n", v10);
  v14 = objc_msgSend_copy(v3, v12, v13);

  return v14;
}

@end