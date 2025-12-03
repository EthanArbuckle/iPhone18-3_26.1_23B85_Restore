@interface BSInternalSharedWithYouContainer
- (BSInternalSharedWithYouContainer)initWithAttributionView:(id)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
@end

@implementation BSInternalSharedWithYouContainer

- (BSInternalSharedWithYouContainer)initWithAttributionView:(id)view
{
  viewCopy = view;
  v5 = [(BSInternalSharedWithYouContainer *)self init];
  v6 = v5;
  if (v5)
  {
    [(BSInternalSharedWithYouContainer *)v5 setAttributionView:viewCopy];
    attributionView = [(BSInternalSharedWithYouContainer *)v6 attributionView];
    [attributionView setHorizontalAlignment:1];

    attributionView2 = [(BSInternalSharedWithYouContainer *)v6 attributionView];
    [(BSInternalSharedWithYouContainer *)v6 addSubview:attributionView2];
  }

  return v6;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = BSInternalSharedWithYouContainer;
  [(BSInternalSharedWithYouContainer *)&v13 layoutSubviews];
  [(BSInternalSharedWithYouContainer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  attributionView = [(BSInternalSharedWithYouContainer *)self attributionView];
  [attributionView intrinsicContentSize];
  v11 = v10;

  attributionView2 = [(BSInternalSharedWithYouContainer *)self attributionView];
  [attributionView2 setFrame:{v4, v6, v8, v11}];
}

- (void)setFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = BSInternalSharedWithYouContainer;
  [(BSInternalSharedWithYouContainer *)&v14 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(BSInternalSharedWithYouContainer *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  attributionView = [(BSInternalSharedWithYouContainer *)self attributionView];
  [attributionView intrinsicContentSize];
  v12 = v11;

  attributionView2 = [(BSInternalSharedWithYouContainer *)self attributionView];
  [attributionView2 setFrame:{v5, v7, v9, v12}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = [(BSInternalSharedWithYouContainer *)self attributionView:fits.width];
  [v4 intrinsicContentSize];
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end