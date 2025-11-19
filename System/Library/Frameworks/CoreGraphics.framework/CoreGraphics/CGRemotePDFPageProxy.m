@interface CGRemotePDFPageProxy
- (CGRect)rectForBox:(int)a3;
- (CGRemotePDFPageProxy)initWithRemotePage:(id)a3;
- (NSString)pageText;
- (NSUUID)identifier;
- (id)getPageTextAndReturnError:(id *)a3;
- (int64_t)rotation;
- (void)drawWithBox:(int)a3 size:(CGSize)a4 colorSpace:(id)a5 options:(id)a6 completion:(id)a7;
@end

@implementation CGRemotePDFPageProxy

- (id)getPageTextAndReturnError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10758;
  v20 = __Block_byref_object_dispose__10759;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10758;
  v14 = __Block_byref_object_dispose__10759;
  v15 = 0;
  pageProxy = self->_pageProxy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__CGRemotePDFPageProxy_getPageTextAndReturnError___block_invoke;
  v9[3] = &unk_1E6E32FC0;
  v9[4] = &v10;
  v5 = [(CGRemotePDFPageProtocol *)pageProxy synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CGRemotePDFPageProxy_getPageTextAndReturnError___block_invoke_2;
  v8[3] = &unk_1E6E2D3C8;
  v8[4] = &v16;
  [v5 getPageText:v8];

  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __50__CGRemotePDFPageProxy_getPageTextAndReturnError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_SError.isa, "[CGRemotePDFPageProxy getPageTextAndReturnError:]_block_invoke", v3);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSString)pageText
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10758;
  v10 = __Block_byref_object_dispose__10759;
  v11 = 0;
  v2 = [(CGRemotePDFPageProtocol *)self->_pageProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_11_10765];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CGRemotePDFPageProxy_pageText__block_invoke_2;
  v5[3] = &unk_1E6E2D3C8;
  v5[4] = &v6;
  [v2 getPageText:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)drawWithBox:(int)a3 size:(CGSize)a4 colorSpace:(id)a5 options:(id)a6 completion:(id)a7
{
  height = a4.height;
  width = a4.width;
  v11 = *&a3;
  v13 = a7;
  pageProxy = self->_pageProxy;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __71__CGRemotePDFPageProxy_drawWithBox_size_colorSpace_options_completion___block_invoke;
  v22[3] = &unk_1E6E336B8;
  v15 = v13;
  v23 = v15;
  v16 = a6;
  v17 = a5;
  v18 = [(CGRemotePDFPageProtocol *)pageProxy remoteObjectProxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__CGRemotePDFPageProxy_drawWithBox_size_colorSpace_options_completion___block_invoke_2;
  v20[3] = &unk_1E6E2D3A0;
  v21 = v15;
  v19 = v15;
  [v18 drawWithBox:v11 size:v17 colorSpace:v16 options:v20 completion:{width, height}];
}

uint64_t __71__CGRemotePDFPageProxy_drawWithBox_size_colorSpace_options_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_SError.isa, "[CGRemotePDFPageProxy drawWithBox:size:colorSpace:options:completion:]_block_invoke", a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (CGRect)rectForBox:(int)a3
{
  v3 = *&a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4010000000;
  v17 = "";
  v18 = 0u;
  v19 = 0u;
  v4 = [(CGRemotePDFPageProtocol *)self->_pageProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_7_10769];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__CGRemotePDFPageProxy_rectForBox___block_invoke_2;
  v13[3] = &unk_1E6E2D378;
  v13[4] = &v14;
  [v4 getBoxRect:v3 completion:v13];

  v5 = v15[4];
  v6 = v15[5];
  v7 = v15[6];
  v8 = v15[7];
  _Block_object_dispose(&v14, 8);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

uint64_t __35__CGRemotePDFPageProxy_rectForBox___block_invoke_2(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = *(*(result + 32) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return result;
}

- (int64_t)rotation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CGRemotePDFPageProtocol *)self->_pageProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_4_10772];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CGRemotePDFPageProxy_rotation__block_invoke_2;
  v5[3] = &unk_1E6E33668;
  v5[4] = &v6;
  [v2 getRotation:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSUUID)identifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10758;
  v10 = __Block_byref_object_dispose__10759;
  v11 = 0;
  v2 = [(CGRemotePDFPageProtocol *)self->_pageProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_10775];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__CGRemotePDFPageProxy_identifier__block_invoke_2;
  v5[3] = &unk_1E6E2D350;
  v5[4] = &v6;
  [v2 getIdentifier:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (CGRemotePDFPageProxy)initWithRemotePage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CGRemotePDFPageProxy;
  v6 = [(CGRemotePDFPageProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pageProxy, a3);
  }

  return v7;
}

@end