@interface CalendarLeafIcon
- (id)makeIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (id)makeIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (void)localeChanged;
@end

@implementation CalendarLeafIcon

- (void)localeChanged
{
  ObjectType = swift_getObjectType();
  v4 = self;
  [(CalendarLeafIcon *)v4 reloadIconImage];
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(CalendarLeafIcon *)&v5 localeChanged];
}

- (id)makeIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v6 = [*(&self->super + OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider) iconImageWithInfo:a3 traitCollection:a5 options:?];

  return v6;
}

- (id)makeIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v6 = [*(&self->super + OBJC_IVAR____TtC15CarPlaySettings16CalendarLeafIcon_imageProvider) iconLayerWithInfo:a3 traitCollection:a5 options:?];

  return v6;
}

@end