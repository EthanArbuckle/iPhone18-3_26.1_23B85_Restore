@interface _TUIWPDraw
- (BOOL)isEqualToDraw:(id)a3;
- (CAFilter)compositingFilter;
- (_TUIWPDraw)initWithColumns:(id)a3 yOffset:(double)a4 compositingFilterType:(id)a5;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation _TUIWPDraw

- (_TUIWPDraw)initWithColumns:(id)a3 yOffset:(double)a4 compositingFilterType:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _TUIWPDraw;
  v11 = [(_TUIWPDraw *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_columns, a3);
    v12->_yOffset = a4;
    v13 = [v10 copy];
    compositingFilterType = v12->_compositingFilterType;
    v12->_compositingFilterType = v13;

    v15 = [TSWPColumn computeSingleColorWithColumns:v9];
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

- (BOOL)isEqualToDraw:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v4;
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

- (void)drawInContext:(CGContext *)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_B286C;
  v3[3] = &unk_25DED0;
  v3[4] = self;
  v3[5] = a3;
  TUIPlatformRenderInContext(a3, v3);
}

@end