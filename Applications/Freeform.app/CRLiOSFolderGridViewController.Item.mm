@interface CRLiOSFolderGridViewController.Item
- (BOOL)accessibilityPerformMagicTap;
- (NSArray)accessibilityCustomActions;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation CRLiOSFolderGridViewController.Item

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_100EE2780(selected);
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = _s4ItemCMa();
  v4 = v5.receiver;
  [(CRLiOSFolderGridViewController.Item *)&v5 setHighlighted:highlightedCopy];
  sub_100EE2A3C();
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_100EE6160();

  if (v3)
  {
    sub_100006370(0, &qword_101A00130);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (BOOL)accessibilityPerformMagicTap
{
  selfCopy = self;
  v3 = sub_100EE6A3C();

  return v3 & 1;
}

@end