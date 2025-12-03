@interface CRLiOSMultipaneSegmentedControlSegment
+ (id)segmentWithImage:(id)image edgeInsets:(UIEdgeInsets)insets;
+ (id)segmentWithObject:(id)object edgeInsets:(UIEdgeInsets)insets;
+ (id)segmentWithString:(id)string edgeInsets:(UIEdgeInsets)insets;
- (CRLiOSMultipaneSegmentedControlSegment)initWithType:(int64_t)type title:(id)title image:(id)image edgeInsets:(UIEdgeInsets)insets;
- (NSLayoutXAxisAnchor)previousTrailingAnchor;
- (UIEdgeInsets)edgeInsets;
- (void)setImage:(id)image;
- (void)setTitle:(id)title;
- (void)updateAccessibilityLabel;
@end

@implementation CRLiOSMultipaneSegmentedControlSegment

- (CRLiOSMultipaneSegmentedControlSegment)initWithType:(int64_t)type title:(id)title image:(id)image edgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  titleCopy = title;
  imageCopy = image;
  v22.receiver = self;
  v22.super_class = CRLiOSMultipaneSegmentedControlSegment;
  v16 = [(CRLiOSMultipaneSegmentedControlSegment *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    objc_storeStrong(&v16->_title, title);
    v18 = [imageCopy imageWithRenderingMode:2];
    image = v17->_image;
    v17->_image = v18;

    accessibilityLabel = [imageCopy accessibilityLabel];
    [(UIImage *)v17->_image setAccessibilityLabel:accessibilityLabel];

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

+ (id)segmentWithString:(id)string edgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  stringCopy = string;
  v10 = [[self alloc] initWithType:0 title:stringCopy image:0 edgeInsets:{top, left, bottom, right}];

  return v10;
}

+ (id)segmentWithImage:(id)image edgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  imageCopy = image;
  v10 = [[self alloc] initWithType:1 title:0 image:imageCopy edgeInsets:{top, left, bottom, right}];

  return v10;
}

+ (id)segmentWithObject:(id)object edgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  objectCopy = object;
  v10 = objc_opt_class();
  v11 = sub_100014370(v10, objectCopy);
  if (v11)
  {
    v12 = [self segmentWithString:v11 edgeInsets:{top, left, bottom, right}];
  }

  else
  {
    v13 = objc_opt_class();
    v14 = sub_100014370(v13, objectCopy);
    if (v14)
    {
      v12 = [self segmentWithImage:v14 edgeInsets:{top, left, bottom, right}];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)setTitle:(id)title
{
  self->_type = 0;
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  image = self->_image;
  self->_image = 0;

  [(CRLiOSMultipaneSegmentedControlSegment *)self updateAccessibilityLabel];
}

- (void)setImage:(id)image
{
  title = self->_title;
  self->_type = 1;
  self->_title = 0;
  imageCopy = image;

  v6 = [imageCopy imageWithRenderingMode:2];

  image = self->_image;
  self->_image = v6;

  [(CRLiOSMultipaneSegmentedControlSegment *)self updateAccessibilityLabel];
}

- (void)updateAccessibilityLabel
{
  if (self->_type)
  {
    accessibilityLabel = [(UIImage *)self->_image accessibilityLabel];
  }

  else
  {
    accessibilityLabel = self->_title;
  }

  v4 = accessibilityLabel;
  [(CRLiOSMultipaneSegmentedControlSegment *)self setAccessibilityLabel:accessibilityLabel];
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