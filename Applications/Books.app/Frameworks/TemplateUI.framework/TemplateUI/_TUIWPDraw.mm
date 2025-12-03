@interface _TUIWPDraw
- (BOOL)isEqualToDraw:(id)draw;
- (CAFilter)compositingFilter;
- (_TUIWPDraw)initWithColumns:(id)columns yOffset:(double)offset compositingFilterType:(id)type;
- (void)drawInContext:(CGContext *)context;
@end

@implementation _TUIWPDraw

- (_TUIWPDraw)initWithColumns:(id)columns yOffset:(double)offset compositingFilterType:(id)type
{
  columnsCopy = columns;
  typeCopy = type;
  v19.receiver = self;
  v19.super_class = _TUIWPDraw;
  v11 = [(_TUIWPDraw *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_columns, columns);
    v12->_yOffset = offset;
    v13 = [typeCopy copy];
    compositingFilterType = v12->_compositingFilterType;
    v12->_compositingFilterType = v13;

    v15 = [TSWPColumn computeSingleColorWithColumns:columnsCopy];
    if (v15)
    {
      v16 = [UIColor colorWithCGColor:v15];
      shadingColor = v12->_shadingColor;
      v12->_shadingColor = v16;
    }
  }

  return v12;
}

- (CAFilter)compositingFilter
{
  if (self->_compositingFilterType)
  {
    v3 = [CAFilter filterWithType:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqualToDraw:(id)draw
{
  drawCopy = draw;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = drawCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7 == self)
  {
    goto LABEL_13;
  }

  if (v7)
  {
    if (self->_columns == v7->_columns && self->_yOffset == v7->_yOffset)
    {
      shadingColor = self->_shadingColor;
      if (shadingColor == v8->_shadingColor || [(UIColor *)shadingColor isEqual:?])
      {
        compositingFilterType = self->_compositingFilterType;
        if (compositingFilterType != v8->_compositingFilterType)
        {
          v9 = [(NSString *)compositingFilterType isEqual:?];
          goto LABEL_14;
        }

LABEL_13:
        v9 = 1;
        goto LABEL_14;
      }
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)drawInContext:(CGContext *)context
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_B286C;
  v3[3] = &unk_25DED0;
  v3[4] = self;
  v3[5] = context;
  TUIPlatformRenderInContext(context, v3);
}

@end