@interface LocalTransport
- (_TtC21ActivitySharingClient14LocalTransport)init;
- (void)transportRequest:(int64_t)a3 data:(id)a4 completion:(id)a5;
@end

@implementation LocalTransport

- (_TtC21ActivitySharingClient14LocalTransport)init
{
  v3 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_transportDispatchService;
  type metadata accessor for TransportDispatchService();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 14) = MEMORY[0x277D84F98];
  *(&self->super.isa + v3) = v4;
  *(&self->super.isa + OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_proxy) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for LocalTransport();
  return [(LocalTransport *)&v6 init];
}

- (void)transportRequest:(int64_t)a3 data:(id)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = _Block_copy(a5);
  v14 = self;
  if (a4)
  {
    v15 = a4;
    a4 = sub_23E5C8BB0();
    v17 = v16;
  }

  else
  {
    v17 = 0xF000000000000000;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v19 = sub_23E5C8EB0();
  __swift_project_value_buffer(v19, qword_280C09128);
  sub_23E560890(0xD000000000000071, 0x800000023E5D01E0, 0xD000000000000024, 0x800000023E5D0260);
  v20 = sub_23E5C9110();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = self;
  v21[5] = a3;
  v21[6] = a4;
  v21[7] = v17;
  v21[8] = sub_23E56117C;
  v21[9] = v18;
  sub_23E59D0CC(0, 0, v12, &unk_23E5CCB90, v21);
}

@end