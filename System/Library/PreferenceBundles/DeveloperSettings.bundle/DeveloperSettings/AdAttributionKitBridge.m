@interface AdAttributionKitBridge
+ (void)getDeveloperModeEnabledWithCompletion:(id)a3;
+ (void)setDeveloperModeEnabled:(BOOL)a3 completion:(id)a4;
- (_TtC17DeveloperSettings22AdAttributionKitBridge)init;
@end

@implementation AdAttributionKitBridge

+ (void)getDeveloperModeEnabledWithCompletion:(id)a3
{
  v4 = (*(*(sub_214DC(&qword_49BF8, &qword_2EB50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = sub_26F74();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = sub_225CC;
  v10[5] = v8;
  sub_21964(0, 0, v6, &unk_2EBC0, v10);
}

+ (void)setDeveloperModeEnabled:(BOOL)a3 completion:(id)a4
{
  v6 = (*(*(sub_214DC(&qword_49BF8, &qword_2EB50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_26F74();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a3;
  *(v12 + 40) = sub_22540;
  *(v12 + 48) = v10;
  sub_21964(0, 0, v8, &unk_2EBB8, v12);
}

- (_TtC17DeveloperSettings22AdAttributionKitBridge)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AdAttributionKitBridge *)&v3 init];
}

@end