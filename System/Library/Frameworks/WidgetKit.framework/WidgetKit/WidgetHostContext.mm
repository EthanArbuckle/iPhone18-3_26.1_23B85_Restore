@interface WidgetHostContext
- (_TtC9WidgetKit17WidgetHostContext)init;
- (_TtC9WidgetKit17WidgetHostContext)initWithInputItems:(id)items;
- (_TtC9WidgetKit17WidgetHostContext)initWithInputItems:(id)items contextUUID:(id)d;
- (_TtC9WidgetKit17WidgetHostContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
@end

@implementation WidgetHostContext

- (_TtC9WidgetKit17WidgetHostContext)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WidgetHostContext();
  return [(_WidgetExtensionBaseContext *)&v3 init];
}

- (_TtC9WidgetKit17WidgetHostContext)initWithInputItems:(id)items
{
  if (items)
  {
    sub_192227B70();
    v4 = sub_192227B60();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for WidgetHostContext();
  v5 = [(_WidgetExtensionBaseContext *)&v7 initWithInputItems:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC9WidgetKit17WidgetHostContext)initWithInputItems:(id)items contextUUID:(id)d
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  if (items)
  {
    items = sub_192227B70();
  }

  if (d)
  {
    sub_192225190();
    v10 = sub_1922251B0();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1922251B0();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  return sub_19218B26C(items, v9);
}

- (_TtC9WidgetKit17WidgetHostContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  if (items)
  {
    items = sub_192227B70();
  }

  if (d)
  {
    sub_192225190();
    v12 = sub_1922251B0();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_1922251B0();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  endpointCopy = endpoint;
  return sub_19218B52C(items, endpoint, v11);
}

@end