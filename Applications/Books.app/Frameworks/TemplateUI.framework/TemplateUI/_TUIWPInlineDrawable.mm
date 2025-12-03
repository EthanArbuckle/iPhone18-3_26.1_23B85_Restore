@interface _TUIWPInlineDrawable
- (_TUIWPInlineDrawable)initWithContext:(id)context box:(id)box baselineOffset:(double)offset;
@end

@implementation _TUIWPInlineDrawable

- (_TUIWPInlineDrawable)initWithContext:(id)context box:(id)box baselineOffset:(double)offset
{
  boxCopy = box;
  v13.receiver = self;
  v13.super_class = _TUIWPInlineDrawable;
  v10 = [(_TUIWPInlineDrawable *)&v13 initWithContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_box, box);
    v11->_baselineOffset = offset;
  }

  return v11;
}

@end