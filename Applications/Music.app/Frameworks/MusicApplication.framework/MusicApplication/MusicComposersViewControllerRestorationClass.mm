@interface MusicComposersViewControllerRestorationClass
+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
- (MusicComposersViewControllerRestorationClass)init;
@end

@implementation MusicComposersViewControllerRestorationClass

+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  v4 = [objc_allocWithZone(type metadata accessor for ComposersViewController()) init];

  return v4;
}

- (MusicComposersViewControllerRestorationClass)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RestorationClass();
  return [(MusicComposersViewControllerRestorationClass *)&v3 init];
}

@end