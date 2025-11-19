@interface MusicSongsViewControllerRestorationClass
+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
- (MusicSongsViewControllerRestorationClass)init;
@end

@implementation MusicSongsViewControllerRestorationClass

+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v4 = [objc_allocWithZone(type metadata accessor for SongsViewController()) init];

  return v4;
}

- (MusicSongsViewControllerRestorationClass)init
{
  v3.receiver = self;
  v3.super_class = _s16MusicApplication16RestorationClassCMa_1();
  return [(MusicSongsViewControllerRestorationClass *)&v3 init];
}

@end