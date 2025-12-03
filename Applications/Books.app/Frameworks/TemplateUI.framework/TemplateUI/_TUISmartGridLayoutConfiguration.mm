@interface _TUISmartGridLayoutConfiguration
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)gradientFraction;
- (UIEdgeInsets)gradientInsets;
- (_TUISmartGridLayoutConfiguration)initWithWidth:(double)width height:(double)height box:(id)box;
- (unint64_t)columns;
- (unint64_t)unsignedIntegerWithSpec:(id)spec;
@end

@implementation _TUISmartGridLayoutConfiguration

- (_TUISmartGridLayoutConfiguration)initWithWidth:(double)width height:(double)height box:(id)box
{
  boxCopy = box;
  v13.receiver = self;
  v13.super_class = _TUISmartGridLayoutConfiguration;
  v10 = [(_TUISmartGridLayoutConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_width = width;
    v10->_height = height;
    objc_storeStrong(&v10->_box, box);
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
  columns = [(TUISmartGridBox *)self->_box columns];
  v4 = [(_TUISmartGridLayoutConfiguration *)self unsignedIntegerWithSpec:columns];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)unsignedIntegerWithSpec:(id)spec
{
  specCopy = spec;
  if (!specCopy)
  {
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    integerValue = [specCopy integerValue];
    goto LABEL_10;
  }

  widthSnap = [(TUISmartGridBox *)self->_box widthSnap];
  if (!widthSnap || (v7 = widthSnap, v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) == 0))
  {
LABEL_9:
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  widthSnap2 = [(TUISmartGridBox *)self->_box widthSnap];
  v10 = [widthSnap2 identifierForValue:self->_width];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [specCopy objectForKeyedSubscript:v10];
    v13 = TUIDynamicCast(v11, v12);

    if (!v13)
    {
      v14 = objc_opt_class();
      v15 = [specCopy objectForKeyedSubscript:@"*"];
      v13 = TUIDynamicCast(v14, v15);
    }
  }

  else
  {
    v13 = 0;
  }

  integerValue = [v13 integerValue];

LABEL_10:
  return integerValue;
}

@end