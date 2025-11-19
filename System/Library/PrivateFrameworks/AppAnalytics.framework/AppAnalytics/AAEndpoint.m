@interface AAEndpoint
- (AAEndpoint)init;
- (AAEndpoint)initWithURL:(id)a3 name:(id)a4 sharedContainerIdentifier:(id)a5;
- (NSString)name;
- (NSString)sharedContainerIdentifier;
- (NSURL)url;
@end

@implementation AAEndpoint

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___AAEndpoint_name);
  v3 = *(self + OBJC_IVAR___AAEndpoint_name + 8);

  v4 = sub_1B6AB92B0();

  return v4;
}

- (NSURL)url
{
  v3 = sub_1B6AB8BB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___AAEndpoint_url, v3);
  v8 = sub_1B6AB8B20();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSString)sharedContainerIdentifier
{
  if (*(self + OBJC_IVAR___AAEndpoint_sharedContainerIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR___AAEndpoint_sharedContainerIdentifier);
    v3 = *(self + OBJC_IVAR___AAEndpoint_sharedContainerIdentifier + 8);

    v4 = sub_1B6AB92B0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (AAEndpoint)initWithURL:(id)a3 name:(id)a4 sharedContainerIdentifier:(id)a5
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B6AB8BB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8B60();
  v13 = sub_1B6AB92E0();
  v15 = v14;
  if (a5)
  {
    a5 = sub_1B6AB92E0();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  (*(v9 + 16))(self + OBJC_IVAR___AAEndpoint_url, v12, v8);
  v18 = (self + OBJC_IVAR___AAEndpoint_name);
  *v18 = v13;
  v18[1] = v15;
  v19 = (self + OBJC_IVAR___AAEndpoint_sharedContainerIdentifier);
  *v19 = a5;
  v19[1] = v17;
  v22.receiver = self;
  v22.super_class = ObjectType;
  v20 = [(AAEndpoint *)&v22 init];
  (*(v9 + 8))(v12, v8);
  return v20;
}

- (AAEndpoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end