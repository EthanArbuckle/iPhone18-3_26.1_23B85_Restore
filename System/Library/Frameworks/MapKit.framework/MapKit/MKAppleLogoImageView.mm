@interface MKAppleLogoImageView
+ (id)logoForMapType:(unint64_t)type forDarkMode:(BOOL)mode;
- (id)initForMapType:(unint64_t)type forDarkMode:(BOOL)mode;
- (void)setImage:(id)image;
- (void)updateForMapType:(unint64_t)type darkMode:(BOOL)mode;
@end

@implementation MKAppleLogoImageView

- (void)updateForMapType:(unint64_t)type darkMode:(BOOL)mode
{
  v5 = [MKAppleLogoImageView logoForMapType:type forDarkMode:mode];
  [(MKAppleLogoImageView *)self setImage:v5];
}

- (void)setImage:(id)image
{
  v4.receiver = self;
  v4.super_class = MKAppleLogoImageView;
  [(MKAppleLogoImageView *)&v4 setImage:image];
  [(MKAppleLogoImageView *)self sizeToFit];
}

- (id)initForMapType:(unint64_t)type forDarkMode:(BOOL)mode
{
  modeCopy = mode;
  v10.receiver = self;
  v10.super_class = MKAppleLogoImageView;
  v6 = [(MKAppleLogoImageView *)&v10 init];
  if (v6)
  {
    v7 = [MKAppleLogoImageView logoForMapType:type forDarkMode:modeCopy];
    [(MKAppleLogoImageView *)v6 setImage:v7];

    v8 = v6;
  }

  return v6;
}

+ (id)logoForMapType:(unint64_t)type forDarkMode:(BOOL)mode
{
  v4 = @"Apple_Maps_blk";
  if (mode)
  {
    v4 = @"Apple_Maps_wht";
  }

  if (type == 107)
  {
    v4 = @"Apple_Maps_wht";
  }

  if (type - 1 >= 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Apple_Maps_wht";
  }

  return [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:v5];
}

@end