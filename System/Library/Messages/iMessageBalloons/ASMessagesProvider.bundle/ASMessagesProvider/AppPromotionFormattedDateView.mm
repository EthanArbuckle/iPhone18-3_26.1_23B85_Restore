@interface AppPromotionFormattedDateView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (UIColor)backgroundColor;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AppPromotionFormattedDateView

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_268E5C();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(AppPromotionFormattedDateView *)&v5 dealloc];
}

- (UIColor)backgroundColor
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  backgroundColor = *(&self->super.super.super.isa + v3);
  if (backgroundColor)
  {
    backgroundColor = [backgroundColor backgroundColor];
  }

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v5 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  if (v6)
  {
    [v6 setBackgroundColor:color];
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_26CDFC();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_2707B0(in);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(AppPromotionFormattedDateView *)&v3 _dynamicUserInterfaceTraitDidChange];
  sub_26BFA0();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_26E3E4(change);
}

@end