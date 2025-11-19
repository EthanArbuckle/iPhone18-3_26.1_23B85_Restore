@interface ScrubberView.CustomButton
- (BOOL)isHighlighted;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtCC11AssetViewer12ScrubberView12CustomButton)initWithCoder:(id)a3;
- (_TtCC11AssetViewer12ScrubberView12CustomButton)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation ScrubberView.CustomButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScrubberView.CustomButton();
  return [(ScrubberView.CustomButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for ScrubberView.CustomButton();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(ScrubberView.CustomButton *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(ScrubberView.CustomButton *)&v8 setHighlighted:v3];
  sub_241285D30(v7);
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  v10.origin.x = sub_241285FEC();
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  v10.origin.x = sub_241285FEC();
  v9.x = x;
  v9.y = y;
  if (!CGRectContainsPoint(v10, v9))
  {

    v6 = 0;
  }

  return v6;
}

- (_TtCC11AssetViewer12ScrubberView12CustomButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberView12CustomButton_highlightAnimator) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ScrubberView.CustomButton();
  return [(ScrubberView.CustomButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC11AssetViewer12ScrubberView12CustomButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC11AssetViewer12ScrubberView12CustomButton_highlightAnimator) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ScrubberView.CustomButton();
  v4 = a3;
  v5 = [(ScrubberView.CustomButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end