@interface MusicAlbumsViewControllerRestorationClass
+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
- (MusicAlbumsViewControllerRestorationClass)init;
@end

@implementation MusicAlbumsViewControllerRestorationClass

+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  pathCopy = path;
  coderCopy = coder;
  sub_141008(coderCopy);
  v8 = v7;

  return v8;
}

- (MusicAlbumsViewControllerRestorationClass)init
{
  v3.receiver = self;
  v3.super_class = _s16MusicApplication16RestorationClassCMa_0();
  return [(MusicAlbumsViewControllerRestorationClass *)&v3 init];
}

@end