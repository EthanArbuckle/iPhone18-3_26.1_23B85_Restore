@interface CRLiOSFolderGridViewController.Item
- (BOOL)accessibilityPerformMagicTap;
- (NSArray)accessibilityCustomActions;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation CRLiOSFolderGridViewController.Item

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_100EE2780(a3);
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _s4ItemCMa();
  v4 = v5.receiver;
  [(CRLiOSFolderGridViewController.Item *)&v5 setHighlighted:v3];
  sub_100EE2A3C();
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
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
  v2 = self;
  v3 = sub_100EE6A3C();

  return v3 & 1;
}

@end