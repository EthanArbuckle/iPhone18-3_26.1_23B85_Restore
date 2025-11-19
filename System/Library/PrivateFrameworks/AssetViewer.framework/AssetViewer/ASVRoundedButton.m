@interface ASVRoundedButton
- (ASVRoundedButton)initWithImage:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 largeImageInsets:(UIEdgeInsets)a7;
- (ASVRoundedButton)initWithTitle:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 adjustsFontForContentSizeCategory:(BOOL)a7;
- (ASVRoundedButton)initWithTitle:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 cornerRadius:(double)a7 adjustsFontForContentSizeCategory:(BOOL)a8;
- (void)_setupViewWithCornerRadius:(double)a3;
@end

@implementation ASVRoundedButton

- (ASVRoundedButton)initWithTitle:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 adjustsFontForContentSizeCategory:(BOOL)a7
{
  v10.receiver = self;
  v10.super_class = ASVRoundedButton;
  v7 = [(ASVButton *)&v10 initWithTitle:a3 buttonStyle:a4 textStyle:a5 controlStyle:a6 adjustsFontForContentSizeCategory:a7];
  v8 = v7;
  if (v7)
  {
    [(ASVRoundedButton *)v7 _setupViewWithCornerRadius:16.0];
  }

  return v8;
}

- (ASVRoundedButton)initWithImage:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 largeImageInsets:(UIEdgeInsets)a7
{
  v10.receiver = self;
  v10.super_class = ASVRoundedButton;
  v7 = [(ASVButton *)&v10 initWithImage:a3 buttonStyle:a4 textStyle:a5 controlStyle:a6 largeImageInsets:a7.top, a7.left, a7.bottom, a7.right];
  v8 = v7;
  if (v7)
  {
    [(ASVRoundedButton *)v7 _setupViewWithCornerRadius:16.0];
  }

  return v8;
}

- (ASVRoundedButton)initWithTitle:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 cornerRadius:(double)a7 adjustsFontForContentSizeCategory:(BOOL)a8
{
  v12.receiver = self;
  v12.super_class = ASVRoundedButton;
  v9 = [(ASVButton *)&v12 initWithTitle:a3 buttonStyle:a4 textStyle:a5 controlStyle:a6 adjustsFontForContentSizeCategory:a8];
  v10 = v9;
  if (v9)
  {
    [(ASVRoundedButton *)v9 _setupViewWithCornerRadius:a7];
  }

  return v10;
}

- (void)_setupViewWithCornerRadius:(double)a3
{
  [(ASVRoundedButton *)self _setContinuousCornerRadius:a3];

  [(ASVRoundedButton *)self setClipsToBounds:1];
}

@end