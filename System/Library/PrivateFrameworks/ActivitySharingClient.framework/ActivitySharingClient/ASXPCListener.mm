@interface ASXPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC21ActivitySharingClient13ASXPCListener)init;
- (void)dealloc;
- (void)transportRequest:(int64_t)a3 data:(id)a4 completion:(id)a5;
@end

@implementation ASXPCListener

- (void)transportRequest:(int64_t)a3 data:(id)a4 completion:(id)a5
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v21 - v10;
  v12 = _Block_copy(a5);
  v13 = self;
  if (a4)
  {
    v14 = a4;
    a4 = sub_23E5C8BB0();
    v16 = v15;
  }

  else
  {
    v16 = 0xF000000000000000;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v18 = sub_23E5C8EB0();
  __swift_project_value_buffer(v18, qword_280C09128);
  sub_23E560890(0xD000000000000063, 0x800000023E5D0310, 0xD000000000000024, 0x800000023E5D0260);
  v19 = sub_23E5C9110();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = self;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = v16;
  v20[8] = sub_23E56117C;
  v20[9] = v17;
  sub_23E59D0CC(0, 0, v11, &unk_23E5CD298, v20);
}

- (_TtC21ActivitySharingClient13ASXPCListener)init
{
  v2 = *MEMORY[0x277CE9330];
  sub_23E5C8F40();
  v3 = objc_allocWithZone(type metadata accessor for ASXPCListener());
  v4 = ASXPCListener.init(machServiceName:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)dealloc
{
  v2 = qword_280C09100;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD000000000000063, 0x800000023E5D0310, 0x6164696C61766E69, 0xEC00000029286574);
  v5 = OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_listener;
  [*(&v3->super.isa + OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_listener) setDelegate_];
  [*(&v3->super.isa + v5) invalidate];
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ASXPCListener();
  [(ASXPCListener *)&v6 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_requiredEntitlements);
  v6 = a4;
  v7 = self;
  v8 = sub_23E5A2820(v6, v5);
  if (v8)
  {
    sub_23E5A1E50(v6);
  }

  return v8 & 1;
}

@end