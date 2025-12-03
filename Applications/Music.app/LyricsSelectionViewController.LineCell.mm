@interface LyricsSelectionViewController.LineCell
- (BOOL)isHighlighted;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (UIBezierPath)accessibilityPath;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation LyricsSelectionViewController.LineCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = _s8LineCellCMa();
  return [(LyricsSelectionViewController.LineCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = _s8LineCellCMa();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(LyricsSelectionViewController.LineCell *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(LyricsSelectionViewController.LineCell *)&v8 setHighlighted:highlightedCopy];
  sub_1007F1910(isHighlighted);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1007F3124();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1007F37B8(change);
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = _s8LineCellCMa();
  [(LyricsSelectionViewController.LineCell *)&v4 setIsAccessibilityElement:elementCopy];
}

- (UIBezierPath)accessibilityPath
{
  accessibilityPath = [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_containerView) accessibilityPath];

  return accessibilityPath;
}

- (NSString)accessibilityLabel
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)accessibilityHint
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1007F4640();

  return v3;
}

@end