@interface FMSectionPlatterMessageTextView
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (_TtC6FindMy31FMSectionPlatterMessageTextView)initWithFrame:(CGRect)frame;
- (void)textViewDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMSectionPlatterMessageTextView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1002405D8(change);
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  v5 = self + OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    editingCopy = editing;
    selfCopy = self;
    v11 = v8(editingCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)textViewDidChange:(id)change
{
  v5 = self + OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    changeCopy = change;
    selfCopy = self;
    v8(changeCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (_TtC6FindMy31FMSectionPlatterMessageTextView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end