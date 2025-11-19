@interface AMSUIMessagePalette
- (AMSUIMessagePalette)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (AMSUIMessagePalette)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5 account:(id)a6 context:(id)a7;
- (id)widthProvider;
- (void)enqueueImpressionMetrics;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didLoadDialogRequest:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
- (void)setWidthProvider:(id)a3;
@end

@implementation AMSUIMessagePalette

- (AMSUIMessagePalette)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  return UIMessagePalette.init(request:bag:account:)(v7, a4, a5);
}

- (AMSUIMessagePalette)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5 account:(id)a6 context:(id)a7
{
  v10 = sub_1BB1DD378();
  v12 = v11;
  v13 = sub_1BB1DD378();
  v15 = v14;
  if (a7)
  {
    a7 = sub_1BB1DD2D8();
  }

  swift_unknownObjectRetain();
  v16 = a6;
  return UIMessagePalette.init(serviceType:placement:bag:account:context:)(v10, v12, v13, v15, a5, a6, a7);
}

- (id)widthProvider
{
  v2 = sub_1BB12A678();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1BB12A6D4;
    v6[3] = &block_descriptor_2;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setWidthProvider:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BB12B760;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1BB12A7C4(v4, v5);
}

- (void)enqueueImpressionMetrics
{
  v2 = self;
  sub_1BB12A978();
}

- (void)messageViewController:(id)a3 didLoadDialogRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  UIMessagePalette.messageViewController(_:didLoad:)(v6, v7);
}

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  UIMessagePalette.messageViewController(_:didUpdate:)(v7, width, height);
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  UIMessagePalette.messageViewController(_:didSelectActionWith:)(v6, v7);
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  UIMessagePalette.messageViewController(_:didFailWithError:)(v6, a4);
}

@end