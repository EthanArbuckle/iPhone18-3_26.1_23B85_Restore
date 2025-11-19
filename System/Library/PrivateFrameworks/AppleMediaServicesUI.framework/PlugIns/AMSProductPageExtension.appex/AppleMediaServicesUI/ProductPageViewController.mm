@interface ProductPageViewController
- (BOOL)lookupItemDidLoad:(id)a3 parameters:(id)a4;
- (_TtC23AMSProductPageExtension25ProductPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation ProductPageViewController

- (void)loadView
{
  v2 = self;
  sub_100003368();
}

- (BOOL)lookupItemDidLoad:(id)a3 parameters:(id)a4
{
  v6 = sub_100004540();
  v7 = a3;
  v8 = self;
  sub_100003450(v7, v6);

  return 0;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1000034F4();
}

- (_TtC23AMSProductPageExtension25ProductPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100004580();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000039AC(v5, v7, a4);
}

- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5
{
  if (a4)
  {
    v8 = sub_100004540();
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_100003C68(v11, v8);
}

@end