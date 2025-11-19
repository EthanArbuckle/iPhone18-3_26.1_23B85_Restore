@interface HypertensionEventListDataProvider
- (_TtC5Heart33HypertensionEventListDataProvider)init;
- (_TtC5Heart33HypertensionEventListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5;
- (id)sampleTypes;
- (id)viewControllerForItemAtIndexPath:(id)a3;
@end

@implementation HypertensionEventListDataProvider

- (_TtC5Heart33HypertensionEventListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a4;
  result = [ObjCClassFromMetadata hypertensionEventType];
  if (result)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC5Heart33HypertensionEventListDataProvider_sampleType) = result;
    v12.receiver = self;
    v12.super_class = type metadata accessor for HypertensionEventListDataProvider();
    v11 = [(WDSampleListDataProvider *)&v12 initWithDisplayType:v8 profile:v9];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)viewControllerForItemAtIndexPath:(id)a3
{
  v4 = sub_29D933DB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933D58();
  v10 = self;
  v11 = sub_29D754BA4();

  (*(v5 + 8))(v9, v4);

  return v11;
}

- (id)sampleTypes
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D940030;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5Heart33HypertensionEventListDataProvider_sampleType);
  *(v3 + 32) = v4;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v5 = v4;
  v6 = sub_29D939F18();

  return v6;
}

- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5
{
  v8 = sub_29D933DB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  v14 = a4;
  v15 = a5;
  v16 = self;
  sub_29D93A868();
  sub_29D936978();
  sub_29D933D58();

  v17 = sub_29D7551EC(v19, v13, v15);
  (*(v9 + 8))(v13, v8);
  sub_29D69417C(v19);

  return v17;
}

- (_TtC5Heart33HypertensionEventListDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end