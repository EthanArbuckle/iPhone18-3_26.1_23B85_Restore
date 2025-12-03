@interface ActionSelectorItem
- (UIColor)color;
- (UIImage)image;
- (_TtC27ActionButtonConfigurationUI18ActionSelectorItem)init;
@end

@implementation ActionSelectorItem

- (UIColor)color
{
  if (*(&self->super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_isConfigured) == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(&self->super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_tintColor) green:*&self->sectionIdentifier[OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_tintColor] blue:*&self->title[OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_tintColor] alpha:*&self->title[OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_tintColor + 8]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)image
{
  selfCopy = self;
  sub_23DDDE4F8();
  v4 = v3;

  return v4;
}

- (_TtC27ActionButtonConfigurationUI18ActionSelectorItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end