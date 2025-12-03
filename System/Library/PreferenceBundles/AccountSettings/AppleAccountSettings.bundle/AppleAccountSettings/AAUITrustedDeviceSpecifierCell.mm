@interface AAUITrustedDeviceSpecifierCell
- (id)blankIcon;
- (id)getLazyIcon;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AAUITrustedDeviceSpecifierCell

- (id)blankIcon
{
  if (qword_6A200 != -1)
  {
    sub_33C7C();
  }

  v3 = qword_6A1F8;

  return v3;
}

- (id)getLazyIcon
{
  v3 = [_AAUITrustedDeviceImage alloc];
  v7.receiver = self;
  v7.super_class = AAUITrustedDeviceSpecifierCell;
  getLazyIcon = [(AAUITrustedDeviceSpecifierCell *)&v7 getLazyIcon];
  v5 = -[_AAUITrustedDeviceImage initWithCGImage:](v3, "initWithCGImage:", [getLazyIcon CGImage]);

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = AAUITrustedDeviceSpecifierCell;
  [(AAUITrustedDeviceSpecifierCell *)&v5 refreshCellContentsWithSpecifier:specifier];
  imageView = [(AAUITrustedDeviceSpecifierCell *)self imageView];
  [imageView setContentMode:2];
}

@end