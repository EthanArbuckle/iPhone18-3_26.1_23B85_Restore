@interface PSSpecifier
- (SEL)_aaui_selectorForKey:(id)key;
- (id)aaui_performSuperGetter;
- (void)aaui_overrideAccessorsWithTarget:(id)target getter:(SEL)getter setter:(SEL)setter;
- (void)aaui_performSuperSetterWithValue:(id)value;
@end

@implementation PSSpecifier

- (void)aaui_overrideAccessorsWithTarget:(id)target getter:(SEL)getter setter:(SEL)setter
{
  targetCopy = target;
  v8 = [(PSSpecifier *)self propertyForKey:@"_aaui_overridenTarget"];
  if (!v8)
  {
    target = [(PSSpecifier *)self target];
    [(PSSpecifier *)self setProperty:target forKey:@"_aaui_overridenTarget"];
  }

  v10 = [(PSSpecifier *)self propertyForKey:@"_aaui_overridenGetter"];
  if (!v10)
  {
    v11 = NSStringFromSelector(*(self + OBJC_IVAR___PSSpecifier_getter));
    [(PSSpecifier *)self setProperty:v11 forKey:@"_aaui_overridenGetter"];
  }

  v12 = [(PSSpecifier *)self propertyForKey:@"_aaui_overridenSetter"];
  if (!v12)
  {
    v13 = NSStringFromSelector(*(self + OBJC_IVAR___PSSpecifier_setter));
    [(PSSpecifier *)self setProperty:v13 forKey:@"_aaui_overridenSetter"];
  }

  [(PSSpecifier *)self setTarget:targetCopy];
  *(self + OBJC_IVAR___PSSpecifier_getter) = getter;
  *(self + OBJC_IVAR___PSSpecifier_setter) = setter;
}

- (id)aaui_performSuperGetter
{
  v3 = [(PSSpecifier *)self propertyForKey:@"_aaui_overridenTarget"];
  v4 = [(PSSpecifier *)self _aaui_selectorForKey:@"_aaui_overridenGetter"];
  if (v4 && (v5 = v4, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v6 = ([v3 methodForSelector:v5])(v3, v5, self);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)aaui_performSuperSetterWithValue:(id)value
{
  valueCopy = value;
  v4 = [(PSSpecifier *)self propertyForKey:@"_aaui_overridenTarget"];
  v5 = [(PSSpecifier *)self _aaui_selectorForKey:@"_aaui_overridenSetter"];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      ([v4 methodForSelector:v6])(v4, v6, valueCopy, self);
    }
  }
}

- (SEL)_aaui_selectorForKey:(id)key
{
  v3 = [(PSSpecifier *)self propertyForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = NSSelectorFromString(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end