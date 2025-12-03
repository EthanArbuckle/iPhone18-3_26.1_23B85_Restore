@interface ASVRoundedButton
- (ASVRoundedButton)initWithImage:(id)image buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle largeImageInsets:(UIEdgeInsets)insets;
- (ASVRoundedButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle adjustsFontForContentSizeCategory:(BOOL)category;
- (ASVRoundedButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle cornerRadius:(double)radius adjustsFontForContentSizeCategory:(BOOL)category;
- (void)_setupViewWithCornerRadius:(double)radius;
@end

@implementation ASVRoundedButton

- (ASVRoundedButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle adjustsFontForContentSizeCategory:(BOOL)category
{
  v10.receiver = self;
  v10.super_class = ASVRoundedButton;
  v7 = [(ASVButton *)&v10 initWithTitle:title buttonStyle:style textStyle:textStyle controlStyle:controlStyle adjustsFontForContentSizeCategory:category];
  v8 = v7;
  if (v7)
  {
    [(ASVRoundedButton *)v7 _setupViewWithCornerRadius:16.0];
  }

  return v8;
}

- (ASVRoundedButton)initWithImage:(id)image buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle largeImageInsets:(UIEdgeInsets)insets
{
  v10.receiver = self;
  v10.super_class = ASVRoundedButton;
  v7 = [(ASVButton *)&v10 initWithImage:image buttonStyle:style textStyle:textStyle controlStyle:controlStyle largeImageInsets:insets.top, insets.left, insets.bottom, insets.right];
  v8 = v7;
  if (v7)
  {
    [(ASVRoundedButton *)v7 _setupViewWithCornerRadius:16.0];
  }

  return v8;
}

- (ASVRoundedButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle cornerRadius:(double)radius adjustsFontForContentSizeCategory:(BOOL)category
{
  v12.receiver = self;
  v12.super_class = ASVRoundedButton;
  v9 = [(ASVButton *)&v12 initWithTitle:title buttonStyle:style textStyle:textStyle controlStyle:controlStyle adjustsFontForContentSizeCategory:category];
  v10 = v9;
  if (v9)
  {
    [(ASVRoundedButton *)v9 _setupViewWithCornerRadius:radius];
  }

  return v10;
}

- (void)_setupViewWithCornerRadius:(double)radius
{
  [(ASVRoundedButton *)self _setContinuousCornerRadius:radius];

  [(ASVRoundedButton *)self setClipsToBounds:1];
}

@end