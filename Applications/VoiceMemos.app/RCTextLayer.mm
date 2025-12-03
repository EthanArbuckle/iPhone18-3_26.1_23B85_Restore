@interface RCTextLayer
- (CGRect)textRectWithAlignment:(int64_t)alignment inLayoutBounds:(CGRect)bounds;
- (CGSize)_displaySize;
- (RCTextLayer)init;
- (id)_attributes;
- (void)drawInContext:(CGContext *)context;
- (void)setFrame:(CGRect)frame;
- (void)setText:(id)text;
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
  textColor = [(RCTextLayer *)self textColor];
  [v3 setObject:textColor forKeyedSubscript:NSForegroundColorAttributeName];

  font = [(RCTextLayer *)self font];
  [v3 setObject:font forKeyedSubscript:NSFontAttributeName];

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
  _attributes = [(RCTextLayer *)self _attributes];
  text = [(RCTextLayer *)self text];
  v5 = [text hash];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [_attributes allValues];
  v7 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v5 ^= [*(*(&v18 + 1) + 8 * v10) hash];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if (v5 != self->_cachedSizeHash)
  {
    text2 = [(RCTextLayer *)self text];
    [text2 sizeWithAttributes:_attributes];
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

- (CGRect)textRectWithAlignment:(int64_t)alignment inLayoutBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(RCTextLayer *)self _displaySize];
  v10 = v9;
  if (alignment == 1)
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    x = x + (CGRectGetWidth(v18) - v10) * 0.5;
  }

  else if (alignment == 2)
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

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, text);
    [(RCTextLayer *)self setNeedsDisplay];
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = RCTextLayer;
  [(RCTextLayer *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(RCTextLayer *)self setNeedsDisplay];
}

- (void)drawInContext:(CGContext *)context
{
  UIGraphicsPushContext(context);
  text = self->_text;
  textAlignment = [(RCTextLayer *)self textAlignment];
  [(RCTextLayer *)self bounds];
  [(RCTextLayer *)self textRectWithAlignment:textAlignment inLayoutBounds:?];
  v7 = v6;
  v9 = v8;
  _attributes = [(RCTextLayer *)self _attributes];
  [(NSString *)text drawAtPoint:_attributes withAttributes:v7, v9];

  UIGraphicsPopContext();
}

@end