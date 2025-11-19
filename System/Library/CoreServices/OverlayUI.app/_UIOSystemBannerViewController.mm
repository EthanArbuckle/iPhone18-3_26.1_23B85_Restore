@interface _UIOSystemBannerViewController
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (NSString)requesterIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (_UIOSystemBannerViewController)initWithBannerRequest:(id)a3;
- (_UIOSystemBannerViewControllerDelegate)delegate;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
@end

@implementation _UIOSystemBannerViewController

- (_UIOSystemBannerViewController)initWithBannerRequest:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = _UIOSystemBannerViewController;
  v6 = [(_UIOSystemBannerViewController *)&v27 init];
  if (v6)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v7 = qword_10000E320;
    v32 = qword_10000E320;
    if (!qword_10000E320)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100002A98;
      v28[3] = &unk_100008328;
      v28[4] = &v29;
      sub_100002A98(v28);
      v7 = v30[3];
    }

    v8 = v7;
    _Block_object_dispose(&v29, 8);
    v9 = objc_opt_new();
    v10 = objc_alloc_init(NSMutableArray);
    v11 = [v5 primaryTitleText];

    if (v11)
    {
      v12 = objc_alloc(sub_100002788());
      v13 = [v5 primaryTitleText];
      v14 = [v12 initWithText:v13 style:1];
      [v10 addObject:v14];
    }

    v15 = [v5 secondaryTitleText];

    if (v15)
    {
      v16 = objc_alloc(sub_100002788());
      v17 = [v5 secondaryTitleText];
      v18 = [v16 initWithText:v17 style:2];
      [v10 addObject:v18];
    }

    [v9 setCenterContentItems:v10];
    [v9 setAutoresizingMask:18];
    v19 = [(_UIOSystemBannerViewController *)v6 view];
    [v19 bounds];
    [v9 setFrame:?];

    v20 = [(_UIOSystemBannerViewController *)v6 view];
    [v20 addSubview:v9];

    pillView = v6->_pillView;
    v6->_pillView = v9;
    v22 = v9;

    v23 = +[NSUUID UUID];
    v24 = [v23 UUIDString];
    requestIdentifier = v6->_requestIdentifier;
    v6->_requestIdentifier = v24;

    objc_storeStrong(&v6->_request, a3);
  }

  return v6;
}

- (NSString)requesterIdentifier
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (UIEdgeInsets)bannerContentOutsets
{
  [(PLPillView *)self->_pillView shadowOutsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  [(PLPillView *)self->_pillView systemLayoutSizeFittingSize:a3.width, a3.height, a4.width, a4.height];
  v6 = v5;
  v8 = v7;
  [(_UISystemBannerRequest *)self->_request preferredMinimumBannerWidth];
  v10 = v9;
  [(_UISystemBannerRequest *)self->_request preferredMaximumBannerWidth];
  if (v11 <= 0.0 || v6 <= v11)
  {
    if (v10 > 0.0 && v6 < v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }
  }

  v14 = v8;
  result.height = v14;
  result.width = v11;
  return result;
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v5 = a4;
  v6 = [(_UIOSystemBannerViewController *)self delegate];
  [v6 presentable:self willDisappearWithReason:v5];
}

- (_UIOSystemBannerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end