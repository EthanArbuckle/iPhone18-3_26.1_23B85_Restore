@interface PSSpecifier
+ (id)buttonSpecifierWithTitle:(id)title target:(id)target action:(SEL)action confirmationInfo:(id)info;
+ (id)switchSpecifierWithTitle:(id)title target:(id)target setter:(SEL)setter getter:(SEL)getter key:(id)key;
@end

@implementation PSSpecifier

+ (id)switchSpecifierWithTitle:(id)title target:(id)target setter:(SEL)setter getter:(SEL)getter key:(id)key
{
  keyCopy = key;
  v12 = [PSSpecifier preferenceSpecifierNamed:title target:target set:setter get:getter detail:0 cell:6 edit:0];
  v13 = v12;
  if (keyCopy)
  {
    [v12 setProperty:keyCopy forKey:PSKeyNameKey];
  }

  return v13;
}

+ (id)buttonSpecifierWithTitle:(id)title target:(id)target action:(SEL)action confirmationInfo:(id)info
{
  titleCopy = title;
  targetCopy = target;
  infoCopy = info;
  v12 = PSSpecifier_ptr;
  if (infoCopy)
  {
    v12 = PSConfirmationSpecifier_ptr;
  }

  v13 = *v12;
  v14 = [objc_opt_class() preferenceSpecifierNamed:titleCopy target:targetCopy set:0 get:0 detail:0 cell:13 edit:0];
  v15 = v14;
  *&v14[OBJC_IVAR___PSSpecifier_action] = action;
  if (infoCopy)
  {
    [v14 setupWithDictionary:infoCopy];
  }

  return v15;
}

@end