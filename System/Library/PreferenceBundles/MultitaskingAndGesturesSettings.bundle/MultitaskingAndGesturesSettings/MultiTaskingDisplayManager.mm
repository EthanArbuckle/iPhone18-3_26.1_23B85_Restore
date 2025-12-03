@interface MultiTaskingDisplayManager
- (void)externalDisplayDidConnect:(id)connect;
- (void)externalDisplayDidUpdateProperties:(id)properties;
- (void)externalDisplayWillDisconnect:(id)disconnect;
@end

@implementation MultiTaskingDisplayManager

- (void)externalDisplayDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  sub_12760(sub_128E8, &unk_529D0);
}

- (void)externalDisplayWillDisconnect:(id)disconnect
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
  *(&self->super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo) = 0;
  selfCopy = self;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C8A4();
}

- (void)externalDisplayDidUpdateProperties:(id)properties
{
  propertiesCopy = properties;
  selfCopy = self;
  sub_12760(sub_12864, &unk_52980);
}

@end