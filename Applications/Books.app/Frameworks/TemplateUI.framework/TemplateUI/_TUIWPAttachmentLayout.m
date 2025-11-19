@interface _TUIWPAttachmentLayout
- (_TUIWPAttachmentLayout)initWithLayout:(id)a3 baselineOffset:(double)a4 intrinsic:(BOOL)a5 charIndex:(unint64_t)a6;
- (double)inlineVerticalOffset;
@end

@implementation _TUIWPAttachmentLayout

- (_TUIWPAttachmentLayout)initWithLayout:(id)a3 baselineOffset:(double)a4 intrinsic:(BOOL)a5 charIndex:(unint64_t)a6
{
  v7 = a5;
  v11 = a3;
  v22.receiver = self;
  v22.super_class = _TUIWPAttachmentLayout;
  v12 = [(_TUIWPAttachmentLayout *)&v22 initWithInfo:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layout, a3);
    v13->_baselineOffset = a4;
    v13->_charIndex = a6;
    if (v7)
    {
      [v11 validatedIntrinsicSize];
    }

    else
    {
      [v11 computedNaturalSize];
    }

    v16 = v14;
    v17 = v15;
    v18 = [TSDLayoutGeometry alloc];
    if (v11)
    {
      [v11 computedTransform];
    }

    else
    {
      memset(v21, 0, sizeof(v21));
    }

    v19 = [v18 initWithSize:v21 transform:{v16, v17}];
    [(_TUIWPAttachmentLayout *)v13 setGeometry:v19];
  }

  return v13;
}

- (double)inlineVerticalOffset
{
  [(TUILayout *)self->_layout computedNaturalSize];
  v4 = v3;
  [(TUILayout *)self->_layout computedHeightAbovePivot];
  return v4 - v5 - self->_baselineOffset;
}

@end