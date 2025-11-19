@interface FollowHeaderButton
- (NSString)accessibilityIdentifier;
- (NSString)accessibilityLabel;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)primaryActionTriggered;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation FollowHeaderButton

- (void)primaryActionTriggered
{
  v2 = self;
  sub_AF124();
}

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_AF438(a3);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  sub_124C4(0, &qword_400A88);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_B8A24(0, 0, 0, sub_B076C, v4);

  return v5;
}

- (NSString)accessibilityIdentifier
{
  v2 = self;
  sub_B032C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_30C098();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)accessibilityLabel
{
  v3 = *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState);
  if (v3 == 6)
  {
    v4 = 0;
  }

  else
  {
    sub_ADFEC(v3);
    if (v6)
    {
      v7 = sub_30C098();

      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end