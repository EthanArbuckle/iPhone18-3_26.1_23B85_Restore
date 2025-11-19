@interface WebPageViewController
- (_TtC19CoreDynamicUIPlugin21WebPageViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5;
- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)webViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5 completion:(id)a6;
- (void)willDismissWebViewController:(id)a3;
@end

@implementation WebPageViewController

- (_TtC19CoreDynamicUIPlugin21WebPageViewController)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = a5;
  sub_8ADE0();
}

- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_8BE90();
}

- (void)webViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  if (a4)
  {
    sub_8F564();
  }

  *(swift_allocObject() + 16) = v10;
  v11 = a3;
  v12 = a5;
  v13 = self;
  sub_8C54C();
}

- (void)willDismissWebViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_8D330();
}

@end