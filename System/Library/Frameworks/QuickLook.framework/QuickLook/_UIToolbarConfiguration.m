@interface _UIToolbarConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UIToolbarConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [v4 setBarStyle:{-[_UIToolbarConfiguration barStyle](self, "barStyle")}];
    [v4 setTranslucent:{-[_UIToolbarConfiguration isTranslucent](self, "isTranslucent")}];
    v5 = [(_UIToolbarConfiguration *)self shadowImage];
    [v4 setShadowImage:v5];

    v6 = [(_UIToolbarConfiguration *)self backgroundImage];
    [v4 setBackgroundImage:v6];

    v7 = [(_UIToolbarConfiguration *)self backgroundColor];
    [v4 setBackgroundColor:v7];

    v8 = [(_UIToolbarConfiguration *)self barTintColor];
    [v4 setBarTintColor:v8];
  }

  return v4;
}

@end