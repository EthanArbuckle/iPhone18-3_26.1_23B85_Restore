@interface UtilityClient
- (_TtC27AppStoreComponentsDaemonKit13UtilityClient)init;
- (void)openURL:(id)a3 withReplyHandler:(id)a4;
- (void)restoreAppStoreWithReplyHandler:(id)a3;
@end

@implementation UtilityClient

- (void)openURL:(id)a3 withReplyHandler:(id)a4
{
  v6 = sub_22273731C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_2227372FC();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_222730818(v10, sub_2227113C4, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)restoreAppStoreWithReplyHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_2227309BC(sub_222710B60, v5);
}

- (_TtC27AppStoreComponentsDaemonKit13UtilityClient)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(UtilityClient *)&v3 init];
}

@end