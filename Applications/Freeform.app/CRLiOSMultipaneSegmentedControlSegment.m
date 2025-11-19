@interface CRLiOSMultipaneSegmentedControlSegment
+ (id)segmentWithImage:(id)a3 edgeInsets:(UIEdgeInsets)a4;
+ (id)segmentWithObject:(id)a3 edgeInsets:(UIEdgeInsets)a4;
+ (id)segmentWithString:(id)a3 edgeInsets:(UIEdgeInsets)a4;
- (CRLiOSMultipaneSegmentedControlSegment)initWithType:(int64_t)a3 title:(id)a4 image:(id)a5 edgeInsets:(UIEdgeInsets)a6;
- (NSLayoutXAxisAnchor)previousTrailingAnchor;
- (UIEdgeInsets)edgeInsets;
- (void)setImage:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateAccessibilityLabel;
@end

@implementation CRLiOSMultipaneSegmentedControlSegment

- (CRLiOSMultipaneSegmentedControlSegment)initWithType:(int64_t)a3 title:(id)a4 image:(id)a5 edgeInsets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v14 = a4;
  v15 = a5;
  v22.receiver = self;
  v22.super_class = CRLiOSMultipaneSegmentedControlSegment;
  v16 = [(CRLiOSMultipaneSegmentedControlSegment *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = a3;
    objc_storeStrong(&v16->_title, a4);
    v18 = [v15 imageWithRenderingMode:2];
    image = v17->_image;
    v17->_image = v18;

    v20 = [v15 accessibilityLabel];
    [(UIImage *)v17->_image setAccessibilityLabel:v20];

    v17->_width = 0.0;
    v17->_edgeInsets.top = top;
    v17->_edgeInsets.left = left;
    v17->_edgeInsets.bottom = bottom;
    v17->_edgeInsets.right = right;
    v17->_enabled = 1;
    [(CRLiOSMultipaneSegmentedControlSegment *)v17 updateAccessibilityLabel];
  }

  return v17;
}

+ (id)segmentWithString:(id)a3 edgeInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = [[a1 alloc] initWithType:0 title:v9 image:0 edgeInsets:{top, left, bottom, right}];

  return v10;
}

+ (id)segmentWithImage:(id)a3 edgeInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = [[a1 alloc] initWithType:1 title:0 image:v9 edgeInsets:{top, left, bottom, right}];

  return v10;
}

+ (id)segmentWithObject:(id)a3 edgeInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = sub_100014370(v10, v9);
  if (v11)
  {
    v12 = [a1 segmentWithString:v11 edgeInsets:{top, left, bottom, right}];
  }

  else
  {
    v13 = objc_opt_class();
    v14 = sub_100014370(v13, v9);
    if (v14)
    {
      v12 = [a1 segmentWithImage:v14 edgeInsets:{top, left, bottom, right}];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)setTitle:(id)a3
{
  self->_type = 0;
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  image = self->_image;
  self->_image = 0;

  [(CRLiOSMultipaneSegmentedControlSegment *)self updateAccessibilityLabel];
}

- (void)setImage:(id)a3
{
  title = self->_title;
  self->_type = 1;
  self->_title = 0;
  v5 = a3;

  v6 = [v5 imageWithRenderingMode:2];

  image = self->_image;
  self->_image = v6;

  [(CRLiOSMultipaneSegmentedControlSegment *)self updateAccessibilityLabel];
}

- (void)updateAccessibilityLabel
{
  if (self->_type)
  {
    v3 = [(UIImage *)self->_image accessibilityLabel];
  }

  else
  {
    v3 = self->_title;
  }

  v4 = v3;
  [(CRLiOSMultipaneSegmentedControlSegment *)self setAccessibilityLabel:v3];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSLayoutXAxisAnchor)previousTrailingAnchor
{
  WeakRetained = objc_loadWeakRetained(&self->_previousTrailingAnchor);

  return WeakRetained;
}

@end