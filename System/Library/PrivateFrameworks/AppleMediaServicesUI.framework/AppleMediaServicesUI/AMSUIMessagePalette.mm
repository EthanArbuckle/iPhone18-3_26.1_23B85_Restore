@interface AMSUIMessagePalette
- (AMSUIMessagePalette)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (AMSUIMessagePalette)initWithServiceType:(id)type placement:(id)placement bag:(id)bag account:(id)account context:(id)context;
- (id)widthProvider;
- (void)enqueueImpressionMetrics;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didLoadDialogRequest:(id)request;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size;
- (void)setWidthProvider:(id)provider;
@end

@implementation AMSUIMessagePalette

- (AMSUIMessagePalette)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  requestCopy = request;
  swift_unknownObjectRetain();
  accountCopy = account;
  return UIMessagePalette.init(request:bag:account:)(requestCopy, bag, account);
}

- (AMSUIMessagePalette)initWithServiceType:(id)type placement:(id)placement bag:(id)bag account:(id)account context:(id)context
{
  v10 = sub_1BB1DD378();
  v12 = v11;
  v13 = sub_1BB1DD378();
  v15 = v14;
  if (context)
  {
    context = sub_1BB1DD2D8();
  }

  swift_unknownObjectRetain();
  accountCopy = account;
  return UIMessagePalette.init(serviceType:placement:bag:account:context:)(v10, v12, v13, v15, bag, account, context);
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

- (void)setWidthProvider:(id)provider
{
  v4 = _Block_copy(provider);
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

  selfCopy = self;
  sub_1BB12A7C4(v4, v5);
}

- (void)enqueueImpressionMetrics
{
  selfCopy = self;
  sub_1BB12A978();
}

- (void)messageViewController:(id)controller didLoadDialogRequest:(id)request
{
  controllerCopy = controller;
  requestCopy = request;
  selfCopy = self;
  UIMessagePalette.messageViewController(_:didLoad:)(controllerCopy, requestCopy);
}

- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  selfCopy = self;
  UIMessagePalette.messageViewController(_:didUpdate:)(controllerCopy, width, height);
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  UIMessagePalette.messageViewController(_:didSelectActionWith:)(controllerCopy, resultCopy);
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  UIMessagePalette.messageViewController(_:didFailWithError:)(controllerCopy, error);
}

@end