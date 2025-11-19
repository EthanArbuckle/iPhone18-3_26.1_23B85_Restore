@interface PKSwatchColor
+ (PKSwatchColor)swatchColor:(void *)a3 identifier:;
@end

@implementation PKSwatchColor

+ (PKSwatchColor)swatchColor:(void *)a3 identifier:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [PKSwatchColor alloc];
  v7 = v5;
  v8 = v4;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = PKSwatchColor;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v6 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_color, a2);
      v10 = [v8 copy];
      identifier = v6->_identifier;
      v6->_identifier = v10;
    }
  }

  return v6;
}

@end