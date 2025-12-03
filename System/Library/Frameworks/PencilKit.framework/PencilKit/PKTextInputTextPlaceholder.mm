@interface PKTextInputTextPlaceholder
+ (PKTextInputTextPlaceholder)placeholderWithText:(id)text rects:(id)rects;
+ (PKTextInputTextPlaceholder)placeholderWithTextPlaceholder:(id)placeholder;
+ (PKTextInputTextPlaceholder)placeholderWithToken:(id)token frame:(CGRect)frame;
+ (PKTextInputTextPlaceholder)placeholderWithWebTextPlaceholder:(id)placeholder;
- (id)rects;
@end

@implementation PKTextInputTextPlaceholder

+ (PKTextInputTextPlaceholder)placeholderWithTextPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v5 = objc_alloc_init(self);
  [v5 setPlaceholder:placeholderCopy];

  return v5;
}

+ (PKTextInputTextPlaceholder)placeholderWithWebTextPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v5 = objc_alloc_init(self);
  [v5 setPlaceholder:placeholderCopy];

  [v5 setShouldIgnoreOrigin:1];

  return v5;
}

+ (PKTextInputTextPlaceholder)placeholderWithToken:(id)token frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v10 = objc_alloc_init(self);
  [v10 setPlaceholder:tokenCopy];

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

+ (PKTextInputTextPlaceholder)placeholderWithText:(id)text rects:(id)rects
{
  rectsCopy = rects;
  textCopy = text;
  v8 = objc_alloc_init(self);
  [v8 setPlaceholder:textCopy];

  [v8 set_rects:rectsCopy];

  return v8;
}

- (id)rects
{
  _rects = [(PKTextInputTextPlaceholder *)self _rects];

  if (_rects)
  {
    _rects2 = [(PKTextInputTextPlaceholder *)self _rects];
  }

  else
  {
    placeholder = [(PKTextInputTextPlaceholder *)self placeholder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      placeholder2 = [(PKTextInputTextPlaceholder *)self placeholder];
      _rects2 = [placeholder2 rects];
    }

    else
    {
      _rects2 = MEMORY[0x1E695E0F0];
    }
  }

  return _rects2;
}

@end