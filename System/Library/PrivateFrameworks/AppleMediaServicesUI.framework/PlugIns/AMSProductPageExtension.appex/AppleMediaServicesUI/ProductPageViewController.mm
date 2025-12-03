@interface ProductPageViewController
- (BOOL)lookupItemDidLoad:(id)load parameters:(id)parameters;
- (_TtC23AMSProductPageExtension25ProductPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation ProductPageViewController

- (void)loadView
{
  selfCopy = self;
  sub_100003368();
}

- (BOOL)lookupItemDidLoad:(id)load parameters:(id)parameters
{
  v6 = sub_100004540();
  loadCopy = load;
  selfCopy = self;
  sub_100003450(loadCopy, v6);

  return 0;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1000034F4();
}

- (_TtC23AMSProductPageExtension25ProductPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100004580();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000039AC(v5, v7, bundle);
}

- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error
{
  if (result)
  {
    v8 = sub_100004540();
  }

  else
  {
    v8 = 0;
  }

  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_100003C68(selfCopy, v8);
}

@end