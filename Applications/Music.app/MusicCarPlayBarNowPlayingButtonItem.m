@interface MusicCarPlayBarNowPlayingButtonItem
- (_TtC5MusicP33_281041738FB6904519F511C2104D645A35MusicCarPlayBarNowPlayingButtonItem)init;
- (_TtC5MusicP33_281041738FB6904519F511C2104D645A35MusicCarPlayBarNowPlayingButtonItem)initWithCoder:(id)a3;
@end

@implementation MusicCarPlayBarNowPlayingButtonItem

- (_TtC5MusicP33_281041738FB6904519F511C2104D645A35MusicCarPlayBarNowPlayingButtonItem)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MusicCarPlayBarButtonItem *)&v3 init];
}

- (_TtC5MusicP33_281041738FB6904519F511C2104D645A35MusicCarPlayBarNowPlayingButtonItem)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(MusicCarPlayBarButtonItem *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end