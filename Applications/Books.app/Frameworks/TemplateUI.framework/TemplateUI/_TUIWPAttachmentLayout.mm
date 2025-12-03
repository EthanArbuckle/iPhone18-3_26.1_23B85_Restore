@interface _TUIWPAttachmentLayout
- (_TUIWPAttachmentLayout)initWithLayout:(id)layout baselineOffset:(double)offset intrinsic:(BOOL)intrinsic charIndex:(unint64_t)index;
- (double)inlineVerticalOffset;
@end

@implementation _TUIWPAttachmentLayout

- (_TUIWPAttachmentLayout)initWithLayout:(id)layout baselineOffset:(double)offset intrinsic:(BOOL)intrinsic charIndex:(unint64_t)index
{
  intrinsicCopy = intrinsic;
  layoutCopy = layout;
  v22.receiver = self;
  v22.super_class = _TUIWPAttachmentLayout;
  v12 = [(_TUIWPAttachmentLayout *)&v22 initWithInfo:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layout, layout);
    v13->_baselineOffset = offset;
    v13->_charIndex = index;
    if (intrinsicCopy)
    {
      [layoutCopy validatedIntrinsicSize];
    }

    else
    {
      [layoutCopy computedNaturalSize];
    }

    v16 = v14;
    v17 = v15;
    v18 = [TSDLayoutGeometry alloc];
    if (layoutCopy)
    {
      [layoutCopy computedTransform];
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