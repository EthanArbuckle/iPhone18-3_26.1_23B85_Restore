@interface EncapsulatedImageView.NoIntrinsicContentSizeImageView
- (CGSize)intrinsicContentSize;
- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithCoder:(id)coder;
- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithFrame:(CGRect)frame;
- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithImage:(id)image;
- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation EncapsulatedImageView.NoIntrinsicContentSizeImageView

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithImage:(id)image
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EncapsulatedImageView.NoIntrinsicContentSizeImageView();
  return [(EncapsulatedImageView.NoIntrinsicContentSizeImageView *)&v5 initWithImage:image];
}

- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EncapsulatedImageView.NoIntrinsicContentSizeImageView();
  return [(EncapsulatedImageView.NoIntrinsicContentSizeImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
}

- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EncapsulatedImageView.NoIntrinsicContentSizeImageView();
  return [(EncapsulatedImageView.NoIntrinsicContentSizeImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EncapsulatedImageView.NoIntrinsicContentSizeImageView();
  coderCopy = coder;
  v5 = [(EncapsulatedImageView.NoIntrinsicContentSizeImageView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end