@interface MKAppleLogoImageView
+ (id)logoForMapType:(unint64_t)a3 forDarkMode:(BOOL)a4;
- (id)initForMapType:(unint64_t)a3 forDarkMode:(BOOL)a4;
- (void)setImage:(id)a3;
- (void)updateForMapType:(unint64_t)a3 darkMode:(BOOL)a4;
@end

@implementation MKAppleLogoImageView

- (void)updateForMapType:(unint64_t)a3 darkMode:(BOOL)a4
{
  v5 = [MKAppleLogoImageView logoForMapType:a3 forDarkMode:a4];
  [(MKAppleLogoImageView *)self setImage:v5];
}

- (void)setImage:(id)a3
{
  v4.receiver = self;
  v4.super_class = MKAppleLogoImageView;
  [(MKAppleLogoImageView *)&v4 setImage:a3];
  [(MKAppleLogoImageView *)self sizeToFit];
}

- (id)initForMapType:(unint64_t)a3 forDarkMode:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = MKAppleLogoImageView;
  v6 = [(MKAppleLogoImageView *)&v10 init];
  if (v6)
  {
    v7 = [MKAppleLogoImageView logoForMapType:a3 forDarkMode:v4];
    [(MKAppleLogoImageView *)v6 setImage:v7];

    v8 = v6;
  }

  return v6;
}

+ (id)logoForMapType:(unint64_t)a3 forDarkMode:(BOOL)a4
{
  v4 = @"Apple_Maps_blk";
  if (a4)
  {
    v4 = @"Apple_Maps_wht";
  }

  if (a3 == 107)
  {
    v4 = @"Apple_Maps_wht";
  }

  if (a3 - 1 >= 4)
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