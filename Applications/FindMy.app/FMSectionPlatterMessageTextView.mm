@interface FMSectionPlatterMessageTextView
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (_TtC6FindMy31FMSectionPlatterMessageTextView)initWithFrame:(CGRect)a3;
- (void)textViewDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMSectionPlatterMessageTextView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1002405D8(a3);
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v5 = self + OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = a3;
    v10 = self;
    v11 = v8(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)textViewDidChange:(id)a3
{
  v5 = self + OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = a3;
    v10 = self;
    v8(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (_TtC6FindMy31FMSectionPlatterMessageTextView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end