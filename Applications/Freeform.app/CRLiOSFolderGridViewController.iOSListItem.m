@interface CRLiOSFolderGridViewController.iOSListItem
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)isSelected;
- (NSArray)accessibilityCustomActions;
- (void)setSelected:(BOOL)a3;
@end

@implementation CRLiOSFolderGridViewController.iOSListItem

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = _s11iOSListItemCMa();
  return [(CRLiOSFolderGridViewController.iOSListItem *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_1008F30E4(a3);
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = sub_1008F4CAC();

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
  v3 = sub_1008F5A74();

  return v3 & 1;
}

@end