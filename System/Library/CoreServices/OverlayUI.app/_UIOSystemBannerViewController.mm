@interface _UIOSystemBannerViewController
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (NSString)requesterIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (_UIOSystemBannerViewController)initWithBannerRequest:(id)request;
- (_UIOSystemBannerViewControllerDelegate)delegate;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
@end

@implementation _UIOSystemBannerViewController

- (_UIOSystemBannerViewController)initWithBannerRequest:(id)request
{
  requestCopy = request;
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
    primaryTitleText = [requestCopy primaryTitleText];

    if (primaryTitleText)
    {
      v12 = objc_alloc(sub_100002788());
      primaryTitleText2 = [requestCopy primaryTitleText];
      v14 = [v12 initWithText:primaryTitleText2 style:1];
      [v10 addObject:v14];
    }

    secondaryTitleText = [requestCopy secondaryTitleText];

    if (secondaryTitleText)
    {
      v16 = objc_alloc(sub_100002788());
      secondaryTitleText2 = [requestCopy secondaryTitleText];
      v18 = [v16 initWithText:secondaryTitleText2 style:2];
      [v10 addObject:v18];
    }

    [v9 setCenterContentItems:v10];
    [v9 setAutoresizingMask:18];
    view = [(_UIOSystemBannerViewController *)v6 view];
    [view bounds];
    [v9 setFrame:?];

    view2 = [(_UIOSystemBannerViewController *)v6 view];
    [view2 addSubview:v9];

    pillView = v6->_pillView;
    v6->_pillView = v9;
    v22 = v9;

    v23 = +[NSUUID UUID];
    uUIDString = [v23 UUIDString];
    requestIdentifier = v6->_requestIdentifier;
    v6->_requestIdentifier = uUIDString;

    objc_storeStrong(&v6->_request, request);
  }

  return v6;
}

- (NSString)requesterIdentifier
{
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
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

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  [(PLPillView *)self->_pillView systemLayoutSizeFittingSize:size.width, size.height, containerSize.width, containerSize.height];
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

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  reasonCopy = reason;
  delegate = [(_UIOSystemBannerViewController *)self delegate];
  [delegate presentable:self willDisappearWithReason:reasonCopy];
}

- (_UIOSystemBannerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end