@interface MusicGenresViewControllerRestorationClass
+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
- (MusicGenresViewControllerRestorationClass)init;
@end

@implementation MusicGenresViewControllerRestorationClass

+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  v4 = [objc_allocWithZone(type metadata accessor for GenresViewController()) init];

  return v4;
}

- (MusicGenresViewControllerRestorationClass)init
{
  v3.receiver = self;
  v3.super_class = _s16MusicApplication16RestorationClassCMa_2();
  return [(MusicGenresViewControllerRestorationClass *)&v3 init];
}

@end