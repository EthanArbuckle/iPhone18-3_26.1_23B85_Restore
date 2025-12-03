@interface Window
- (_TtC5Music6Window)initWithCoder:(id)coder;
- (_TtC5Music6Window)initWithWindowScene:(id)scene;
- (void)_updateWindowTraitsAndNotify:(BOOL)notify;
- (void)layoutSubviews;
- (void)sendEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation Window

- (_TtC5Music6Window)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v4 = sub_10002ECEC(sceneCopy);

  return v4;
}

- (void)_updateWindowTraitsAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music6Window_overrideTraitCollection);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music6Window_overrideTraitCollection) = 0;
  selfCopy = self;

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for Window();
  [(Window *)&v6 _updateWindowTraitsAndNotify:notifyCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music6Window_overrideTraitCollection);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music6Window_overrideTraitCollection) = 0;
  changeCopy = change;
  selfCopy = self;

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for Window();
  [(Window *)&v7 traitCollectionDidChange:changeCopy];
}

- (void)layoutSubviews
{
  selfCopy = self;
  Window.layoutSubviews()();
}

- (_TtC5Music6Window)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music6Window_screenDimensionsDidChangeHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music6Window_boundsSizeDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music6Window_overrideTraitCollection) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)sendEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Window();
  eventCopy = event;
  v5 = v7.receiver;
  [(Window *)&v7 sendEvent:eventCopy];
  defaultCenter = [objc_opt_self() defaultCenter];
  if (qword_10117F190 != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:qword_101218600 object:v5];
}

@end