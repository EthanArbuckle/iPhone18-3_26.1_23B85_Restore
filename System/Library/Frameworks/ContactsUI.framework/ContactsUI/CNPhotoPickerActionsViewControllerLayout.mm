@interface CNPhotoPickerActionsViewControllerLayout
+ (double)buttonHeight;
+ (double)heightForButtonsViewWithButtonCount:(int64_t)a3;
- (CGRect)actionButtonsViewFrame;
- (CGRect)actionButtonsViewFrameForButtonCount:(int64_t)a3;
- (CGRect)imageContainerViewFrame;
- (CGSize)containerSize;
- (CNPhotoPickerActionsViewControllerLayout)initWithContainerSize:(CGSize)a3 insets:(UIEdgeInsets)a4 buttonCount:(int64_t)a5;
- (UIEdgeInsets)edgeInsets;
@end

@implementation CNPhotoPickerActionsViewControllerLayout

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

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)imageContainerViewFrame
{
  [(CNPhotoPickerActionsViewControllerLayout *)self actionButtonsViewFrameForButtonCount:+[CNPhotoPickerActionsModel maximumNumberOfButtons]];
  v4 = v3;
  v6 = v5;
  [(CNPhotoPickerActionsViewControllerLayout *)self containerSize];
  v8 = v7;
  [(CNPhotoPickerActionsViewControllerLayout *)self containerSize];
  if (v8 <= v9)
  {
    [(CNPhotoPickerActionsViewControllerLayout *)self containerSize];
  }

  else
  {
    [(CNPhotoPickerActionsViewControllerLayout *)self containerSize];
    v11 = v10 - v6;
    [(CNPhotoPickerActionsViewControllerLayout *)self edgeInsets];
    v13 = v11 - v12;
    [(CNPhotoPickerActionsViewControllerLayout *)self edgeInsets];
    v15 = v13 - v14 + -15.0;
  }

  v16 = fmin(v15, 212.0);
  [(CNPhotoPickerActionsViewControllerLayout *)self containerSize];
  v18 = floor((v17 - v16) * 0.5);
  v19 = v4 - v4 * 0.5 - v16 * 0.5 + 15.0;
  v20 = v16;
  v21 = v16;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)actionButtonsViewFrame
{
  v3 = [(CNPhotoPickerActionsViewControllerLayout *)self buttonCount];

  [(CNPhotoPickerActionsViewControllerLayout *)self actionButtonsViewFrameForButtonCount:v3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)actionButtonsViewFrameForButtonCount:(int64_t)a3
{
  [objc_opt_class() heightForButtonsViewWithButtonCount:a3];
  v5 = v4;
  [(CNPhotoPickerActionsViewControllerLayout *)self containerSize];
  v7 = v6 + -20.0;
  [(CNPhotoPickerActionsViewControllerLayout *)self containerSize];
  v9 = v8;
  [(CNPhotoPickerActionsViewControllerLayout *)self edgeInsets];
  v11 = v9 - v10 - v5 + -10.0;
  v12 = 10.0;
  v13 = v7;
  v14 = v5;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (CNPhotoPickerActionsViewControllerLayout)initWithContainerSize:(CGSize)a3 insets:(UIEdgeInsets)a4 buttonCount:(int64_t)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v16.receiver = self;
  v16.super_class = CNPhotoPickerActionsViewControllerLayout;
  v12 = [(CNPhotoPickerActionsViewControllerLayout *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_containerSize.width = width;
    v12->_containerSize.height = height;
    v12->_edgeInsets.top = top;
    v12->_edgeInsets.left = left;
    v12->_edgeInsets.bottom = bottom;
    v12->_edgeInsets.right = right;
    v12->_buttonCount = a5;
    v14 = v12;
  }

  return v13;
}

+ (double)heightForButtonsViewWithButtonCount:(int64_t)a3
{
  v4 = a3;
  [a1 buttonHeight];
  return (a3 - 1) * 10.0 + v4 * v5;
}

+ (double)buttonHeight
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
  [v2 ascender];
  v4 = v3;
  [v2 descender];
  v6 = fmax(v4 - v5 + 28.0, 50.0);

  return v6;
}

@end