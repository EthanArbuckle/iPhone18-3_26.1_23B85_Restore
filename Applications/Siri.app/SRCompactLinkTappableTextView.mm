@interface SRCompactLinkTappableTextView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (SRCompactLinkTappableTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)setSelectable:(BOOL)selectable;
@end

@implementation SRCompactLinkTappableTextView

- (SRCompactLinkTappableTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  v7.receiver = self;
  v7.super_class = SRCompactLinkTappableTextView;
  v4 = [(SRCompactLinkTappableTextView *)&v7 initWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(SRCompactLinkTappableTextView *)v4 setSelectable:1];
  }

  return v5;
}

- (void)setSelectable:(BOOL)selectable
{
  if (!selectable)
  {
    v3 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"SRCompactLinkTappableTextView must be selectable" userInfo:0];
    objc_exception_throw(v3);
  }

  v4.receiver = self;
  v4.super_class = SRCompactLinkTappableTextView;
  [(SRCompactLinkTappableTextView *)&v4 setSelectable:1];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  attributedText = [(SRCompactLinkTappableTextView *)self attributedText];

  if (attributedText)
  {
    v9 = [(SRCompactLinkTappableTextView *)self closestPositionToPoint:x, y];
    tokenizer = [(SRCompactLinkTappableTextView *)self tokenizer];
    v11 = [tokenizer rangeEnclosingPosition:v9 withGranularity:0 inDirection:3];

    beginningOfDocument = [(SRCompactLinkTappableTextView *)self beginningOfDocument];
    start = [v11 start];
    v14 = [(SRCompactLinkTappableTextView *)self offsetFromPosition:beginningOfDocument toPosition:start];

    attributedText2 = [(SRCompactLinkTappableTextView *)self attributedText];
    v16 = [attributedText2 attribute:NSLinkAttributeName atIndex:v14 effectiveRange:0];
    v17 = v16 != 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SRCompactLinkTappableTextView;
    v17 = [(SRCompactLinkTappableTextView *)&v19 pointInside:eventCopy withEvent:x, y];
  }

  return v17;
}

@end