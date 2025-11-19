@interface CGRemotePDFDocumentProxy
- (BOOL)isEncrypted;
- (BOOL)isUnlocked;
- (CGRemotePDFDocumentProxy)initWithRemoteDocument:(id)a3;
- (NSDictionary)infoDictionary;
- (id)pageProxyForRemotePage:(id)a3;
- (id)sync_pageAtIndex:(int64_t)a3;
- (unint64_t)pageCount;
- (void)getPageAtIndex:(int64_t)a3 completion:(id)a4;
- (void)getVersionMajor:(int64_t *)a3 andMinor:(int64_t *)a4;
@end

@implementation CGRemotePDFDocumentProxy

- (id)pageProxyForRemotePage:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[CGRemotePDFPageProxy alloc] initWithRemotePage:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)getPageAtIndex:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  documentProxy = self->_documentProxy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__CGRemotePDFDocumentProxy_getPageAtIndex_completion___block_invoke;
  v13[3] = &unk_1E6E336B8;
  v8 = v6;
  v14 = v8;
  v9 = [(CGRemotePDFDocumentProtocol *)documentProxy remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__CGRemotePDFDocumentProxy_getPageAtIndex_completion___block_invoke_2;
  v11[3] = &unk_1E6E336E0;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 getPageAtIndex:a3 completion:v11];
}

uint64_t __54__CGRemotePDFDocumentProxy_getPageAtIndex_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_SError.isa, "[CGRemotePDFDocumentProxy getPageAtIndex:completion:]_block_invoke", a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __54__CGRemotePDFDocumentProxy_getPageAtIndex_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) pageProxyForRemotePage:a2];
  (*(*(a1 + 40) + 16))();
}

- (id)sync_pageAtIndex:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__20906;
  v13 = __Block_byref_object_dispose__20907;
  v14 = 0;
  v5 = [(CGRemotePDFDocumentProtocol *)self->_documentProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_15_20908];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__CGRemotePDFDocumentProxy_sync_pageAtIndex___block_invoke_2;
  v8[3] = &unk_1E6E33690;
  v8[4] = self;
  v8[5] = &v9;
  [v5 getPageAtIndex:a3 completion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __45__CGRemotePDFDocumentProxy_sync_pageAtIndex___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) pageProxyForRemotePage:a2];

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)pageCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CGRemotePDFDocumentProtocol *)self->_documentProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_12_20910];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CGRemotePDFDocumentProxy_pageCount__block_invoke_2;
  v5[3] = &unk_1E6E33668;
  v5[4] = &v6;
  [v2 getPageCount:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isEncrypted
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(CGRemotePDFDocumentProtocol *)self->_documentProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_10_20912];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__CGRemotePDFDocumentProxy_isEncrypted__block_invoke_2;
  v4[3] = &unk_1E6E33640;
  v4[4] = &v5;
  [v2 getIsEncrypted:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isUnlocked
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(CGRemotePDFDocumentProtocol *)self->_documentProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_7_20915];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__CGRemotePDFDocumentProxy_isUnlocked__block_invoke_2;
  v4[3] = &unk_1E6E33640;
  v4[4] = &v5;
  [v2 getIsUnlocked:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)getVersionMajor:(int64_t *)a3 andMinor:(int64_t *)a4
{
  *a4 = 0;
  *a3 = 0;
  v6 = [(CGRemotePDFDocumentProtocol *)self->_documentProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_4_20917];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CGRemotePDFDocumentProxy_getVersionMajor_andMinor___block_invoke_2;
  v7[3] = &__block_descriptor_48_e11_v24__0q8q16l;
  v7[4] = a3;
  v7[5] = a4;
  [v6 getVersion:v7];
}

uint64_t __53__CGRemotePDFDocumentProxy_getVersionMajor_andMinor___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  **(result + 32) = a2;
  *v3 = a3;
  return result;
}

- (NSDictionary)infoDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20906;
  v10 = __Block_byref_object_dispose__20907;
  v11 = 0;
  v2 = [(CGRemotePDFDocumentProtocol *)self->_documentProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20921];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CGRemotePDFDocumentProxy_infoDictionary__block_invoke_2;
  v5[3] = &unk_1E6E335F8;
  v5[4] = &v6;
  [v2 getInfo:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (CGRemotePDFDocumentProxy)initWithRemoteDocument:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CGRemotePDFDocumentProxy;
  v6 = [(CGRemotePDFDocumentProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentProxy, a3);
  }

  return v7;
}

@end