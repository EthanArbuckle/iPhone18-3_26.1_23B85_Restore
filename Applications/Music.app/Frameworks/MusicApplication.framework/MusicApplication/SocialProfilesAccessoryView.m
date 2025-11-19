@interface SocialProfilesAccessoryView
- (_TtC16MusicApplication27SocialProfilesAccessoryView)initWithCoder:(id)a3;
- (_TtC16MusicApplication27SocialProfilesAccessoryView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SocialProfilesAccessoryView

- (void)layoutSubviews
{
  v2 = self;
  sub_3AD730();
}

- (_TtC16MusicApplication27SocialProfilesAccessoryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_accessorySocialPersons) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_artworkCachingReference) = 0;
  v9 = (self + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_overlayMargins);
  v10 = *&UIEdgeInsetsZero.bottom;
  *v9 = *&UIEdgeInsetsZero.top;
  v9[1] = v10;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27SocialProfilesAccessoryView_peopleBadgeView) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(SocialProfilesAccessoryView *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplication27SocialProfilesAccessoryView)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_3AF7D0(v3);

  return v4;
}

@end