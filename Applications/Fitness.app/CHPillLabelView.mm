@interface CHPillLabelView
+ (id)cacheKeyForColor:(id)color size:(CGSize)size;
+ (id)imageForCacheKey:(id)key;
+ (id)pillImageForColor:(id)color size:(CGSize)size;
+ (id)pillImages;
+ (void)setImage:(id)image forCacheKey:(id)key;
- (CGSize)intrinsicContentSize;
- (CHPillLabelView)initWithFrame:(CGRect)frame;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (void)applyConstraints;
- (void)setIntegerValue:(int64_t)value;
- (void)setPillBackgroundColor:(id)color;
@end

@implementation CHPillLabelView

+ (id)pillImages
{
  if (qword_1008F9AE8 != -1)
  {
    sub_10069CB1C();
  }

  v3 = qword_1008F9AE0;

  return v3;
}

+ (id)cacheKeyForColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  [color getRed:&v17 green:&v16 blue:&v15 alpha:&v14];
  v6 = [NSNumber numberWithDouble:v17];
  v7 = [NSNumber numberWithDouble:v16];
  v8 = [NSNumber numberWithDouble:v15];
  v9 = [NSNumber numberWithDouble:v14];
  v10 = [NSNumber numberWithDouble:width];
  v11 = [NSNumber numberWithDouble:height];
  v12 = [NSString stringWithFormat:@"%@_%@_%@_%@_%@_%@", v6, v7, v8, v9, v10, v11];

  return v12;
}

+ (id)imageForCacheKey:(id)key
{
  keyCopy = key;
  pillImages = [self pillImages];
  v6 = [pillImages objectForKey:keyCopy];

  return v6;
}

+ (void)setImage:(id)image forCacheKey:(id)key
{
  keyCopy = key;
  imageCopy = image;
  pillImages = [self pillImages];
  [pillImages setObject:imageCopy forKey:keyCopy];
}

+ (id)pillImageForColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v8 = [self cacheKeyForColor:colorCopy size:{width, height}];
  v9 = [self imageForCacheKey:v8];
  if (!v9)
  {
    v15.width = width;
    v15.height = height;
    UIGraphicsBeginImageContextWithOptions(v15, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(CurrentContext, [colorCopy CGColor]);
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    v16.size.width = width;
    v16.size.height = height;
    CGContextFillEllipseInRect(CurrentContext, v16);
    v11 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v9 = [v11 resizableImageWithCapInsets:1 resizingMode:{0.0, width * 0.5, 0.0, width * 0.5}];

    if (v9)
    {
      [self setImage:v9 forCacheKey:v8];
    }
  }

  v12 = v9;

  return v12;
}

- (CHPillLabelView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = CHPillLabelView;
  v3 = [(CHPillLabelView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(CHPillLabelView *)v3 setBackgroundColor:v4];

    [(CHPillLabelView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(CHPillLabelView *)v3 setContentCompressionResistancePriority:1 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(CHPillLabelView *)v3 setContentHuggingPriority:1 forAxis:v6];
    v7 = objc_alloc_init(UILabel);
    label = v3->_label;
    v3->_label = v7;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [UIFont systemFontOfSize:9.0 weight:UIFontWeightSemibold];
    [(UILabel *)v3->_label setFont:v9];

    v10 = +[UIColor blackColor];
    [(UILabel *)v3->_label setTextColor:v10];

    v11 = +[UIColor secondaryLabelColor];
    v12 = [objc_opt_class() pillImageForColor:v11 size:{14.0, 14.0}];
    v13 = [[UIImageView alloc] initWithImage:v12];
    imageView = v3->_imageView;
    v3->_imageView = v13;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CHPillLabelView *)v3 addSubview:v3->_imageView];
    [(CHPillLabelView *)v3 addSubview:v3->_label];
    [(CHPillLabelView *)v3 applyConstraints];
  }

  return v3;
}

- (void)setPillBackgroundColor:(id)color
{
  objc_storeStrong(&self->_pillBackgroundColor, color);
  colorCopy = color;
  v6 = [objc_opt_class() pillImageForColor:self->_pillBackgroundColor size:{14.0, 14.0}];
  [(UIImageView *)self->_imageView setImage:v6];
}

- (CGSize)intrinsicContentSize
{
  label = [(CHPillLabelView *)self label];
  [label intrinsicContentSize];
  v4 = v3 + 6.0;

  v5 = 14.0;
  if (v4 >= 14.0)
  {
    v5 = v4;
  }

  v6 = 14.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)applyConstraints
{
  label = [(CHPillLabelView *)self label];
  LODWORD(v4) = 1148846080;
  [label setContentCompressionResistancePriority:0 forAxis:v4];

  label2 = [(CHPillLabelView *)self label];
  LODWORD(v6) = 1148846080;
  [label2 setContentCompressionResistancePriority:1 forAxis:v6];

  label3 = [(CHPillLabelView *)self label];
  LODWORD(v8) = 1148846080;
  [label3 setContentHuggingPriority:0 forAxis:v8];

  label4 = [(CHPillLabelView *)self label];
  LODWORD(v10) = 1148846080;
  [label4 setContentHuggingPriority:1 forAxis:v10];

  label5 = [(CHPillLabelView *)self label];
  centerXAnchor = [label5 centerXAnchor];
  centerXAnchor2 = [(CHPillLabelView *)self centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v14 setActive:1];

  label6 = [(CHPillLabelView *)self label];
  centerYAnchor = [label6 centerYAnchor];
  centerYAnchor2 = [(CHPillLabelView *)self centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v18 setActive:1];

  imageView = [(CHPillLabelView *)self imageView];
  centerXAnchor3 = [imageView centerXAnchor];
  centerXAnchor4 = [(CHPillLabelView *)self centerXAnchor];
  v22 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4 constant:0.0];
  [v22 setActive:1];

  imageView2 = [(CHPillLabelView *)self imageView];
  centerYAnchor3 = [imageView2 centerYAnchor];
  label7 = [(CHPillLabelView *)self label];
  centerYAnchor4 = [label7 centerYAnchor];
  v27 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:0.0];
  [v27 setActive:1];

  imageView3 = [(CHPillLabelView *)self imageView];
  heightAnchor = [imageView3 heightAnchor];
  v30 = [heightAnchor constraintEqualToConstant:14.0];
  [v30 setActive:1];

  imageView4 = [(CHPillLabelView *)self imageView];
  widthAnchor = [imageView4 widthAnchor];
  label8 = [(CHPillLabelView *)self label];
  widthAnchor2 = [label8 widthAnchor];
  v35 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0 constant:6.0];

  LODWORD(v36) = 1144750080;
  [v35 setPriority:v36];
  imageView5 = [(CHPillLabelView *)self imageView];
  widthAnchor3 = [imageView5 widthAnchor];
  v39 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:14.0];

  LODWORD(v40) = 1148846080;
  [v39 setPriority:v40];
  v42[0] = v35;
  v42[1] = v39;
  v41 = [NSArray arrayWithObjects:v42 count:2];
  [NSLayoutConstraint activateConstraints:v41];
}

- (void)setIntegerValue:(int64_t)value
{
  v4 = [NSNumber numberWithInteger:value];
  v6 = [NSNumberFormatter localizedStringFromNumber:v4 numberStyle:0];

  label = [(CHPillLabelView *)self label];
  [label setText:v6];
}

- (id)firstBaselineAnchor
{
  label = [(CHPillLabelView *)self label];
  firstBaselineAnchor = [label firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (id)lastBaselineAnchor
{
  label = [(CHPillLabelView *)self label];
  lastBaselineAnchor = [label lastBaselineAnchor];

  return lastBaselineAnchor;
}

@end