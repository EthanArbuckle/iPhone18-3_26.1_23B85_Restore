@interface MusicAlbumsViewControllerRestorationClass
+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
- (MusicAlbumsViewControllerRestorationClass)init;
@end

@implementation MusicAlbumsViewControllerRestorationClass

+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_141008(v6);
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