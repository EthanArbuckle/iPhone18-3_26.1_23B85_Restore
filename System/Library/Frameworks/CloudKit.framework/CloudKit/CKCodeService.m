@interface CKCodeService
- (CKCodeService)init;
- (CKContainer)container;
- (NSString)serviceName;
- (NSURL)serviceInstanceURL;
- (id)boxedDatabaseScope;
- (id)initInternalWithImplementation:(id)a3 container:(id)a4;
- (void)addOperation:(id)a3;
@end

@implementation CKCodeService

- (CKCodeService)init
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKCodeService.m", 119, @"Use [CKContainer codeServiceWithName:] or [CKContainer codeServiceWithName:database:] instead of creating your own");

  return 0;
}

- (id)initInternalWithImplementation:(id)a3 container:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKCodeService;
  v9 = [(CKCodeService *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_implementation, a3);
    objc_storeWeak(p_isa + 1, v8);
  }

  return p_isa;
}

- (NSString)serviceName
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_serviceName(v3, v4, v5);

  return v6;
}

- (NSURL)serviceInstanceURL
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_serviceInstanceURL(v3, v4, v5);

  return v6;
}

- (id)boxedDatabaseScope
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_boxedDatabaseScope(v3, v4, v5);

  return v6;
}

- (void)addOperation:(id)a3
{
  v4 = a3;
  v14 = objc_msgSend_implementation(self, v5, v6);
  v9 = objc_msgSend_container(self, v7, v8);
  v12 = objc_msgSend_convenienceConfiguration(v9, v10, v11);
  objc_msgSend_addOperation_wrappingCodeService_convenienceConfiguration_(v14, v13, v4, self, v12);
}

- (CKContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end