@interface ManualEntryItem
- (_TtC24MenstrualCyclesAppPlugin15ManualEntryItem)init;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation ManualEntryItem

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v6 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15ManualEntryItem_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    v11 = *(v10 + 16);
    viewCopy = view;
    selfCopy = self;
    v14 = v11(viewCopy, ObjectType, v10);
    swift_unknownObjectRelease();

    return v14;
  }

  return result;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15ManualEntryItem_dataSource;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    selfCopy = self;
    v10(row, ObjectType, v8);

    swift_unknownObjectRelease();
    v12 = sub_29E2C33A4();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v8 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15ManualEntryItem_dataSource;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);
    viewCopy = view;
    selfCopy = self;
    v11(viewCopy, row, ObjectType, v9);
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