@interface MusicPlaylistsViewControllerRestorationClass
+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
- (MusicPlaylistsViewControllerRestorationClass)init;
@end

@implementation MusicPlaylistsViewControllerRestorationClass

+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_4978D8();

  return v7;
}

- (MusicPlaylistsViewControllerRestorationClass)init
{
  v3.receiver = self;
  v3.super_class = _s16MusicApplication16RestorationClassCMa_3();
  return [(MusicPlaylistsViewControllerRestorationClass *)&v3 init];
}

@end