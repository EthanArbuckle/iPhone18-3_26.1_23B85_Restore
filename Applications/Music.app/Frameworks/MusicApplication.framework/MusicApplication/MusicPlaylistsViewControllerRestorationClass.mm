@interface MusicPlaylistsViewControllerRestorationClass
+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
- (MusicPlaylistsViewControllerRestorationClass)init;
@end

@implementation MusicPlaylistsViewControllerRestorationClass

+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  pathCopy = path;
  coderCopy = coder;
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