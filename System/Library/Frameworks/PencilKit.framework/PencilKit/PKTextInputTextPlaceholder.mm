@interface PKTextInputTextPlaceholder
+ (PKTextInputTextPlaceholder)placeholderWithText:(id)a3 rects:(id)a4;
+ (PKTextInputTextPlaceholder)placeholderWithTextPlaceholder:(id)a3;
+ (PKTextInputTextPlaceholder)placeholderWithToken:(id)a3 frame:(CGRect)a4;
+ (PKTextInputTextPlaceholder)placeholderWithWebTextPlaceholder:(id)a3;
- (id)rects;
@end

@implementation PKTextInputTextPlaceholder

+ (PKTextInputTextPlaceholder)placeholderWithTextPlaceholder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setPlaceholder:v4];

  return v5;
}

+ (PKTextInputTextPlaceholder)placeholderWithWebTextPlaceholder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setPlaceholder:v4];

  [v5 setShouldIgnoreOrigin:1];

  return v5;
}

+ (PKTextInputTextPlaceholder)placeholderWithToken:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = objc_alloc_init(a1);
  [v10 setPlaceholder:v9];

  v11 = [PKTextInputTextSelectionRect alloc];
  if (v11)
  {
    v16.receiver = v11;
    v16.super_class = PKTextInputTextSelectionRect;
    v12 = objc_msgSendSuper2(&v16, sel_init);
    v13 = v12;
    if (v12)
    {
      *(v12 + 3) = x;
      *(v12 + 4) = y;
      *(v12 + 5) = width;
      *(v12 + 6) = height;
    }
  }

  else
  {
    v13 = 0;
  }

  v17[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v10 set_rects:v14];

  return v10;
}

+ (PKTextInputTextPlaceholder)placeholderWithText:(id)a3 rects:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setPlaceholder:v7];

  [v8 set_rects:v6];

  return v8;
}

- (id)rects
{
  v3 = [(PKTextInputTextPlaceholder *)self _rects];

  if (v3)
  {
    v4 = [(PKTextInputTextPlaceholder *)self _rects];
  }

  else
  {
    v5 = [(PKTextInputTextPlaceholder *)self placeholder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(PKTextInputTextPlaceholder *)self placeholder];
      v4 = [v7 rects];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }
  }

  return v4;
}

@end