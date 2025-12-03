@interface CalendarLeafIcon
- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (id)makeIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (void)localeChanged;
@end

@implementation CalendarLeafIcon

- (void)localeChanged
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  [(CalendarLeafIcon *)selfCopy reloadIconImage];
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(CalendarLeafIcon *)&v5 localeChanged];
}

- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v6 = [*(&self->super + OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider) iconImageWithInfo:info traitCollection:context options:?];

  return v6;
}

- (id)makeIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v6 = [*(&self->super + OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider) iconLayerWithInfo:info traitCollection:context options:?];

  return v6;
}

@end