@interface CNPhotoPickerHeaderViewTextField
- (CGRect)editingRectForBounds:(CGRect)a3;
@end

@implementation CNPhotoPickerHeaderViewTextField

- (CGRect)editingRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v27.receiver = self;
  v27.super_class = CNPhotoPickerHeaderViewTextField;
  height = a3.size.height;
  [(CNPhotoPickerHeaderViewTextField *)&v27 editingRectForBounds:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([(CNPhotoPickerHeaderViewTextField *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v15 = -10.0;
  }

  else
  {
    v15 = 10.0;
  }

  v16 = v12 + 10.0;
  [(CNPhotoPickerHeaderViewTextField *)self maxWidth];
  if (v16 >= v17)
  {
    v26.receiver = self;
    v26.super_class = CNPhotoPickerHeaderViewTextField;
    [(CNPhotoPickerHeaderViewTextField *)&v26 editingRectForBounds:x, y, width, height];
    v10 = v19;
    v16 = v20;
    v14 = v21;
  }

  else
  {
    v18 = v8 - v15;
  }

  v22 = v10;
  v23 = v16;
  v24 = v14;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v18;
  return result;
}

@end