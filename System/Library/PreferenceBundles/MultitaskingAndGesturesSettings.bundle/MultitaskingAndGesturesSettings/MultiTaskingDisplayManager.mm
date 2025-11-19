@interface MultiTaskingDisplayManager
- (void)externalDisplayDidConnect:(id)a3;
- (void)externalDisplayDidUpdateProperties:(id)a3;
- (void)externalDisplayWillDisconnect:(id)a3;
@end

@implementation MultiTaskingDisplayManager

- (void)externalDisplayDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_12760(sub_128E8, &unk_529D0);
}

- (void)externalDisplayWillDisconnect:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
  *(&self->super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo) = 0;
  v4 = self;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C8A4();
}

- (void)externalDisplayDidUpdateProperties:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_12760(sub_12864, &unk_52980);
}

@end