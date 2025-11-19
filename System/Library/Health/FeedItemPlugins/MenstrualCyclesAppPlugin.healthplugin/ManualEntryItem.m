@interface ManualEntryItem
- (_TtC24MenstrualCyclesAppPlugin15ManualEntryItem)init;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation ManualEntryItem

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v6 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15ManualEntryItem_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    v11 = *(v10 + 16);
    v12 = a3;
    v13 = self;
    v14 = v11(v12, ObjectType, v10);
    swift_unknownObjectRelease();

    return v14;
  }

  return result;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15ManualEntryItem_dataSource;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    v11 = self;
    v10(a4, ObjectType, v8);

    swift_unknownObjectRelease();
    v12 = sub_29E2C33A4();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v8 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15ManualEntryItem_dataSource;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);
    v12 = a3;
    v13 = self;
    v11(v12, a4, ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

- (_TtC24MenstrualCyclesAppPlugin15ManualEntryItem)init
{
  *&self->dataSource[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15ManualEntryItem_dataSource] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ManualEntryItem();
  return [(ManualEntryItem *)&v4 init];
}

@end