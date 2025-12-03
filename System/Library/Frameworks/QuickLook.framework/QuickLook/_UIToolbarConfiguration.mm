@interface _UIToolbarConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIToolbarConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [v4 setBarStyle:{-[_UIToolbarConfiguration barStyle](self, "barStyle")}];
    [v4 setTranslucent:{-[_UIToolbarConfiguration isTranslucent](self, "isTranslucent")}];
    shadowImage = [(_UIToolbarConfiguration *)self shadowImage];
    [v4 setShadowImage:shadowImage];

    backgroundImage = [(_UIToolbarConfiguration *)self backgroundImage];
    [v4 setBackgroundImage:backgroundImage];

    backgroundColor = [(_UIToolbarConfiguration *)self backgroundColor];
    [v4 setBackgroundColor:backgroundColor];

    barTintColor = [(_UIToolbarConfiguration *)self barTintColor];
    [v4 setBarTintColor:barTintColor];
  }

  return v4;
}

@end