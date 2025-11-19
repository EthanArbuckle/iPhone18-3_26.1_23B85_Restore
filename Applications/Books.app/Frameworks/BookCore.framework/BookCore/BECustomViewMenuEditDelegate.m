@interface BECustomViewMenuEditDelegate
- (_TtC8BookCore28BECustomViewMenuEditDelegate)init;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation BECustomViewMenuEditDelegate

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1D3A38();

  return v10;
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v6 = a3;
  v11 = self;
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    [v7 removeInteraction:v6];

    v9 = *(&v11->super.isa + OBJC_IVAR____TtC8BookCore28BECustomViewMenuEditDelegate_interaction);
    *(&v11->super.isa + OBJC_IVAR____TtC8BookCore28BECustomViewMenuEditDelegate_interaction) = 0;

    v10 = v9;
  }

  else
  {

    v10 = v11;
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