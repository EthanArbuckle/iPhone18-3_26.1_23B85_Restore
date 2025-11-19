@interface _TUIWPInlineDrawable
- (_TUIWPInlineDrawable)initWithContext:(id)a3 box:(id)a4 baselineOffset:(double)a5;
@end

@implementation _TUIWPInlineDrawable

- (_TUIWPInlineDrawable)initWithContext:(id)a3 box:(id)a4 baselineOffset:(double)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = _TUIWPInlineDrawable;
  v10 = [(_TUIWPInlineDrawable *)&v13 initWithContext:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_box, a4);
    v11->_baselineOffset = a5;
  }

  return v11;
}

@end