@interface WebViewRepresentableProvider.Coordinator
- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5;
- (void)webViewController:(id)a3 didEncodeNetworkRequest:(id)a4;
- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)webViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5 completion:(id)a6;
@end

@implementation WebViewRepresentableProvider.Coordinator

- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1BB1DD2D8();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_1BB1D3730(v11, v8, sub_1BB1D9AAC, v9);

  return self & 1;
}

- (void)webViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  if (a4)
  {
    sub_1BB1DD2D8();
  }

  *(swift_allocObject() + 16) = v10;
  v11 = a3;
  v12 = a5;
  v13 = self;
  sub_1BB1D3BB4();
}

- (void)webViewController:(id)a3 didEncodeNetworkRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BB1D3DF8(v8, v7);
}

- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1BB1D3FBC(v11, a4, a5);
}

@end