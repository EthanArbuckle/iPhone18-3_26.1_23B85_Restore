@interface RCTextLayer
- (CGRect)textRectWithAlignment:(int64_t)a3 inLayoutBounds:(CGRect)a4;
- (CGSize)_displaySize;
- (RCTextLayer)init;
- (id)_attributes;
- (void)drawInContext:(CGContext *)a3;
- (void)setFrame:(CGRect)a3;
- (void)setText:(id)a3;
- (void)sizeToFit;
@end

@implementation RCTextLayer

- (RCTextLayer)init
{
  v4.receiver = self;
  v4.super_class = RCTextLayer;
  v2 = [(RCTextLayer *)&v4 init];
  if (v2)
  {
    [(RCTextLayer *)v2 setContentsScale:UIMainScreenScale()];
  }

  return v2;
}

- (id)_attributes
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(RCTextLayer *)self textColor];
  [v3 setObject:v4 forKeyedSubscript:NSForegroundColorAttributeName];

  v5 = [(RCTextLayer *)self font];
  [v3 setObject:v5 forKeyedSubscript:NSFontAttributeName];

  return v3;
}

- (void)sizeToFit
{
  [(RCTextLayer *)self frame];
  v4 = v3;
  v6 = v5;
  [(RCTextLayer *)self _displaySize];

  [(RCTextLayer *)self setFrame:v4, v6, v7, v8];
}

- (CGSize)_displaySize
{
  v3 = [(RCTextLayer *)self _attributes];
  v4 = [(RCTextLayer *)self text];
  v5 = [v4 hash];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v3 allValues];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v5 ^= [*(*(&v18 + 1) + 8 * v10) hash];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if (v5 != self->_cachedSizeHash)
  {
    v11 = [(RCTextLayer *)self text];
    [v11 sizeWithAttributes:v3];
    self->_cachedSize.width = v12;
    self->_cachedSize.height = v13;

    self->_cachedSizeHash = v5;
  }

  width = self->_cachedSize.width;
  height = self->_cachedSize.height;

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGRect)textRectWithAlignment:(int64_t)a3 inLayoutBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(RCTextLayer *)self _displaySize];
  v10 = v9;
  if (a3 == 1)
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    x = x + (CGRectGetWidth(v18) - v10) * 0.5;
  }

  else if (a3 == 2)
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    x = CGRectGetMaxX(v17) - v10;
  }

  v11 = x;
  v12 = rintf(v11);
  v13 = y;
  v14 = rintf(v13);
  v15 = v10;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v12;
  return result;
}

- (void)setText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, a3);
    [(RCTextLayer *)self setNeedsDisplay];
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = RCTextLayer;
  [(RCTextLayer *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(RCTextLayer *)self setNeedsDisplay];
}

- (void)drawInContext:(CGContext *)a3
{
  UIGraphicsPushContext(a3);
  text = self->_text;
  v5 = [(RCTextLayer *)self textAlignment];
  [(RCTextLayer *)self bounds];
  [(RCTextLayer *)self textRectWithAlignment:v5 inLayoutBounds:?];
  v7 = v6;
  v9 = v8;
  v10 = [(RCTextLayer *)self _attributes];
  [(NSString *)text drawAtPoint:v10 withAttributes:v7, v9];

  UIGraphicsPopContext();
}

@end