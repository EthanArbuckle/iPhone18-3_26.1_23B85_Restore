@interface CRLiOSFolderGridViewController.iOSListItem
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)isSelected;
- (NSArray)accessibilityCustomActions;
- (void)setSelected:(BOOL)selected;
@end

@implementation CRLiOSFolderGridViewController.iOSListItem

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = _s11iOSListItemCMa();
  return [(CRLiOSFolderGridViewController.iOSListItem *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_1008F30E4(selected);
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1008F5A74();

  return v3 & 1;
}

@end