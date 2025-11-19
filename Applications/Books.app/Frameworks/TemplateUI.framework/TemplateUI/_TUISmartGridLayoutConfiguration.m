@interface _TUISmartGridLayoutConfiguration
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)gradientFraction;
- (UIEdgeInsets)gradientInsets;
- (_TUISmartGridLayoutConfiguration)initWithWidth:(double)a3 height:(double)a4 box:(id)a5;
- (unint64_t)columns;
- (unint64_t)unsignedIntegerWithSpec:(id)a3;
@end

@implementation _TUISmartGridLayoutConfiguration

- (_TUISmartGridLayoutConfiguration)initWithWidth:(double)a3 height:(double)a4 box:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = _TUISmartGridLayoutConfiguration;
  v10 = [(_TUISmartGridLayoutConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_width = a3;
    v10->_height = a4;
    objc_storeStrong(&v10->_box, a5);
  }

  return v11;
}

- (UIEdgeInsets)contentInsets
{
  [(TUISmartGridBox *)self->_box insets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)gradientInsets
{
  [(TUISmartGridBox *)self->_box gradientInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)gradientFraction
{
  [(TUISmartGridBox *)self->_box gradientFraction];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (unint64_t)columns
{
  v3 = [(TUISmartGridBox *)self->_box columns];
  v4 = [(_TUISmartGridLayoutConfiguration *)self unsignedIntegerWithSpec:v3];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)unsignedIntegerWithSpec:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 integerValue];
    goto LABEL_10;
  }

  v6 = [(TUISmartGridBox *)self->_box widthSnap];
  if (!v6 || (v7 = v6, v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) == 0))
  {
LABEL_9:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  v9 = [(TUISmartGridBox *)self->_box widthSnap];
  v10 = [v9 identifierForValue:self->_width];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [v4 objectForKeyedSubscript:v10];
    v13 = TUIDynamicCast(v11, v12);

    if (!v13)
    {
      v14 = objc_opt_class();
      v15 = [v4 objectForKeyedSubscript:@"*"];
      v13 = TUIDynamicCast(v14, v15);
    }
  }

  else
  {
    v13 = 0;
  }

  v5 = [v13 integerValue];

LABEL_10:
  return v5;
}

@end