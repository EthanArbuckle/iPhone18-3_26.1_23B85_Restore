@interface Window
- (_TtC16MusicApplication6Window)initWithCoder:(id)a3;
- (_TtC16MusicApplication6Window)initWithWindowScene:(id)a3;
- (void)_updateWindowTraitsAndNotify:(BOOL)a3;
- (void)layoutSubviews;
- (void)sendEvent:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation Window

- (_TtC16MusicApplication6Window)initWithWindowScene:(id)a3
{
  v3 = a3;
  v4 = sub_307920(v3);

  return v4;
}

- (_TtC16MusicApplication6Window)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication6Window_screenDimensionsDidChangeHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication6Window_boundsSizeDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)sendEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Window();
  v4 = a3;
  v5 = v7.receiver;
  [(Window *)&v7 sendEvent:v4];
  v6 = [objc_opt_self() defaultCenter];
  if (qword_DE6A88 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_E71470 object:v5];
}

- (void)layoutSubviews
{
  v2 = self;
  Window.layoutSubviews()();
}

- (void)_updateWindowTraitsAndNotify:(BOOL)a3
{
  v3 = a3;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection) = 0;
  v5 = self;

  v6.receiver = v5;
  v6.super_class = type metadata accessor for Window();
  [(Window *)&v6 _updateWindowTraitsAndNotify:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication6Window_overrideTraitCollection) = 0;
  v5 = a3;
  v6 = self;

  v7.receiver = v6;
  v7.super_class = type metadata accessor for Window();
  [(Window *)&v7 traitCollectionDidChange:v5];
}

@end