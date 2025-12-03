@interface WebPageViewController
- (_TtC19CoreDynamicUIPlugin21WebPageViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info;
- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
- (void)webViewController:(id)controller didResolveWithResult:(id)result error:(id)error completion:(id)completion;
- (void)willDismissWebViewController:(id)controller;
@end

@implementation WebPageViewController

- (_TtC19CoreDynamicUIPlugin21WebPageViewController)initWithBag:(id)bag account:(id)account clientInfo:(id)info
{
  swift_unknownObjectRetain();
  accountCopy = account;
  infoCopy = info;
  sub_8ADE0();
}

- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_8BE90();
}

- (void)webViewController:(id)controller didResolveWithResult:(id)result error:(id)error completion:(id)completion
{
  v10 = _Block_copy(completion);
  if (result)
  {
    sub_8F564();
  }

  *(swift_allocObject() + 16) = v10;
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_8C54C();
}

- (void)willDismissWebViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_8D330();
}

@end