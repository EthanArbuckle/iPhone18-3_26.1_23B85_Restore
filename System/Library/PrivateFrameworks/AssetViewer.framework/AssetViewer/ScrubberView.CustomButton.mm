@interface ScrubberView.CustomButton
- (BOOL)isHighlighted;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtCC11AssetViewer12ScrubberView12CustomButton)initWithCoder:(id)coder;
- (_TtCC11AssetViewer12ScrubberView12CustomButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ScrubberView.CustomButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScrubberView.CustomButton();
  return [(ScrubberView.CustomButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for ScrubberView.CustomButton();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(ScrubberView.CustomButton *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(ScrubberView.CustomButton *)&v8 setHighlighted:highlightedCopy];
  sub_241285D30(isHighlighted);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  v10.origin.x = sub_241285FEC();
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  selfCopy = self;
  v10.origin.x = sub_241285FEC();
  v9.x = x;
  v9.y = y;
  if (!CGRectContainsPoint(v10, v9))
  {

    selfCopy = 0;
  }

  return selfCopy;
}

- (_TtCC11AssetViewer12ScrubberView12CustomButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberView12CustomButton_highlightAnimator) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ScrubberView.CustomButton();
  return [(ScrubberView.CustomButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC11AssetViewer12ScrubberView12CustomButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberView12CustomButton_highlightAnimator) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ScrubberView.CustomButton();
  coderCopy = coder;
  v5 = [(ScrubberView.CustomButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end