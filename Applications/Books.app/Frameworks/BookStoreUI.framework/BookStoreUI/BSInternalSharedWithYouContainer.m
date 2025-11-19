@interface BSInternalSharedWithYouContainer
- (BSInternalSharedWithYouContainer)initWithAttributionView:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
@end

@implementation BSInternalSharedWithYouContainer

- (BSInternalSharedWithYouContainer)initWithAttributionView:(id)a3
{
  v4 = a3;
  v5 = [(BSInternalSharedWithYouContainer *)self init];
  v6 = v5;
  if (v5)
  {
    [(BSInternalSharedWithYouContainer *)v5 setAttributionView:v4];
    v7 = [(BSInternalSharedWithYouContainer *)v6 attributionView];
    [v7 setHorizontalAlignment:1];

    v8 = [(BSInternalSharedWithYouContainer *)v6 attributionView];
    [(BSInternalSharedWithYouContainer *)v6 addSubview:v8];
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
  v9 = [(BSInternalSharedWithYouContainer *)self attributionView];
  [v9 intrinsicContentSize];
  v11 = v10;

  v12 = [(BSInternalSharedWithYouContainer *)self attributionView];
  [v12 setFrame:{v4, v6, v8, v11}];
}

- (void)setFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = BSInternalSharedWithYouContainer;
  [(BSInternalSharedWithYouContainer *)&v14 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(BSInternalSharedWithYouContainer *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(BSInternalSharedWithYouContainer *)self attributionView];
  [v10 intrinsicContentSize];
  v12 = v11;

  v13 = [(BSInternalSharedWithYouContainer *)self attributionView];
  [v13 setFrame:{v5, v7, v9, v12}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = [(BSInternalSharedWithYouContainer *)self attributionView:a3.width];
  [v4 intrinsicContentSize];
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end