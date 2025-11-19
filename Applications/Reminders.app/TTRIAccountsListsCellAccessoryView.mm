@interface TTRIAccountsListsCellAccessoryView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (unint64_t)accessibilityTraits;
- (void)_didInvalidateIntrinsicContentSize;
- (void)buttonShapesSettingDidChange;
- (void)dealloc;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)sizeToFit;
@end

@implementation TTRIAccountsListsCellAccessoryView

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView);
  if (v3)
  {
    [v3 effectiveLayoutSizeFittingSize:{result.width, result.height}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)sizeToFit
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView);
  if (v2)
  {
    v3 = self;
    [v2 intrinsicContentSize];
    [(TTRIAccountsListsCellAccessoryView *)v3 frame];
    [(TTRIAccountsListsCellAccessoryView *)v3 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView);
  if (v2)
  {
    [v2 intrinsicContentSize];
  }

  else
  {
    __break(1u);
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v6[3] = ObjectType;
  v6[0] = self;
  v4 = self;
  static UIAccessibility.removeButtonShapesStatusChangeObserver(_:)();
  sub_100004758(v6);
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(TTRIAccountsListsCellAccessoryView *)&v5 dealloc];
}

- (void)_didInvalidateIntrinsicContentSize
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(TTRIAccountsListsCellAccessoryView *)&v6 _didInvalidateIntrinsicContentSize];
  v3 = &v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_layoutDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (void)buttonShapesSettingDidChange
{
  v2 = self;
  sub_1004B2404();
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  v3 = [(TTRIAccountsListsCellAccessoryView *)&v7 accessibilityTraits];
  v4 = UIAccessibilityTraitHeader;

  v5 = -1;
  if ((v4 & v3) != 0)
  {
    v5 = ~v4;
  }

  return v5 & v3;
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TTRIAccountsListsCellAccessoryView *)&v4 setAccessibilityTraits:a3];
}

@end