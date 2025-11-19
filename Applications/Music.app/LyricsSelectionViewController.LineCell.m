@interface LyricsSelectionViewController.LineCell
- (BOOL)isHighlighted;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (UIBezierPath)accessibilityPath;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LyricsSelectionViewController.LineCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = _s8LineCellCMa();
  return [(LyricsSelectionViewController.LineCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = _s8LineCellCMa();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(LyricsSelectionViewController.LineCell *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(LyricsSelectionViewController.LineCell *)&v8 setHighlighted:v3];
  sub_1007F1910(v7);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1007F3124();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1007F37B8(a3);
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = _s8LineCellCMa();
  [(LyricsSelectionViewController.LineCell *)&v4 setIsAccessibilityElement:v3];
}

- (UIBezierPath)accessibilityPath
{
  v2 = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView) accessibilityPath];

  return v2;
}

- (NSString)accessibilityLabel
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)accessibilityHint
{
  v2 = self;
  sub_1007F4410();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v2 = self;
  v3 = sub_1007F4640();

  return v3;
}

@end