@interface BECustomViewMenuEditDelegate
- (_TtC8BookCore28BECustomViewMenuEditDelegate)init;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation BECustomViewMenuEditDelegate

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10 = sub_1D3A38();

  return v10;
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  selfCopy = self;
  view = [interactionCopy view];
  if (view)
  {
    v8 = view;
    [view removeInteraction:interactionCopy];

    v9 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8BookCore28BECustomViewMenuEditDelegate_interaction);
    *(&selfCopy->super.isa + OBJC_IVAR____TtC8BookCore28BECustomViewMenuEditDelegate_interaction) = 0;

    v10 = v9;
  }

  else
  {

    v10 = selfCopy;
  }
}

- (_TtC8BookCore28BECustomViewMenuEditDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8BookCore28BECustomViewMenuEditDelegate_interaction) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BECustomViewMenuEditDelegate();
  return [(BECustomViewMenuEditDelegate *)&v3 init];
}

@end