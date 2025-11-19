@interface SRCompactLinkTappableTextView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (SRCompactLinkTappableTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)setSelectable:(BOOL)a3;
@end

@implementation SRCompactLinkTappableTextView

- (SRCompactLinkTappableTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v7.receiver = self;
  v7.super_class = SRCompactLinkTappableTextView;
  v4 = [(SRCompactLinkTappableTextView *)&v7 initWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(SRCompactLinkTappableTextView *)v4 setSelectable:1];
  }

  return v5;
}

- (void)setSelectable:(BOOL)a3
{
  if (!a3)
  {
    v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"SRCompactLinkTappableTextView must be selectable" userInfo:0];
    objc_exception_throw(v3);
  }

  v4.receiver = self;
  v4.super_class = SRCompactLinkTappableTextView;
  [(SRCompactLinkTappableTextView *)&v4 setSelectable:1];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SRCompactLinkTappableTextView *)self attributedText];

  if (v8)
  {
    v9 = [(SRCompactLinkTappableTextView *)self closestPositionToPoint:x, y];
    v10 = [(SRCompactLinkTappableTextView *)self tokenizer];
    v11 = [v10 rangeEnclosingPosition:v9 withGranularity:0 inDirection:3];

    v12 = [(SRCompactLinkTappableTextView *)self beginningOfDocument];
    v13 = [v11 start];
    v14 = [(SRCompactLinkTappableTextView *)self offsetFromPosition:v12 toPosition:v13];

    v15 = [(SRCompactLinkTappableTextView *)self attributedText];
    v16 = [v15 attribute:NSLinkAttributeName atIndex:v14 effectiveRange:0];
    v17 = v16 != 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SRCompactLinkTappableTextView;
    v17 = [(SRCompactLinkTappableTextView *)&v19 pointInside:v7 withEvent:x, y];
  }

  return v17;
}

@end