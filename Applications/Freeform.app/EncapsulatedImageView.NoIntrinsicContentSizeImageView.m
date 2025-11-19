@interface EncapsulatedImageView.NoIntrinsicContentSizeImageView
- (CGSize)intrinsicContentSize;
- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithCoder:(id)a3;
- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithFrame:(CGRect)a3;
- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithImage:(id)a3;
- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
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

- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for EncapsulatedImageView.NoIntrinsicContentSizeImageView();
  return [(EncapsulatedImageView.NoIntrinsicContentSizeImageView *)&v5 initWithImage:a3];
}

- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EncapsulatedImageView.NoIntrinsicContentSizeImageView();
  return [(EncapsulatedImageView.NoIntrinsicContentSizeImageView *)&v7 initWithImage:a3 highlightedImage:a4];
}

- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EncapsulatedImageView.NoIntrinsicContentSizeImageView();
  return [(EncapsulatedImageView.NoIntrinsicContentSizeImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8FreeformP33_22C834EA6031CC5FD96573982091823D21EncapsulatedImageView31NoIntrinsicContentSizeImageView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EncapsulatedImageView.NoIntrinsicContentSizeImageView();
  v4 = a3;
  v5 = [(EncapsulatedImageView.NoIntrinsicContentSizeImageView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end