@interface PSSpecifier
+ (id)buttonSpecifierWithName:(id)name target:(id)target action:(SEL)action;
+ (id)cellSpecifierWithName:(id)name target:(id)target action:(SEL)action;
+ (id)groupSpecifierWithName:(id)name footer:(id)footer;
+ (id)groupSpecifierWithName:(id)name subheader:(id)subheader;
+ (id)groupSpecifierWithName:(id)name subheader:(id)subheader footer:(id)footer;
+ (id)switchSpecifierWithName:(id)name property:(id)property target:(id)target;
+ (id)textFieldSpecifierWithName:(id)name property:(id)property target:(id)target;
@end

@implementation PSSpecifier

+ (id)groupSpecifierWithName:(id)name subheader:(id)subheader footer:(id)footer
{
  footerCopy = footer;
  subheaderCopy = subheader;
  v9 = [PSSpecifier groupSpecifierWithName:name];
  [v9 setProperty:subheaderCopy forKey:PSHeaderDetailTextGroupKey];

  [v9 setProperty:footerCopy forKey:PSFooterTextGroupKey];

  return v9;
}

+ (id)groupSpecifierWithName:(id)name subheader:(id)subheader
{
  subheaderCopy = subheader;
  v6 = [PSSpecifier groupSpecifierWithName:name];
  [v6 setProperty:subheaderCopy forKey:PSHeaderDetailTextGroupKey];

  return v6;
}

+ (id)groupSpecifierWithName:(id)name footer:(id)footer
{
  footerCopy = footer;
  v6 = [PSSpecifier groupSpecifierWithName:name];
  [v6 setProperty:footerCopy forKey:PSFooterTextGroupKey];

  return v6;
}

+ (id)cellSpecifierWithName:(id)name target:(id)target action:(SEL)action
{
  v6 = [PSSpecifier preferenceSpecifierNamed:name target:target set:0 get:0 detail:0 cell:1 edit:0];
  [v6 setButtonAction:action];

  return v6;
}

+ (id)buttonSpecifierWithName:(id)name target:(id)target action:(SEL)action
{
  v6 = [PSSpecifier preferenceSpecifierNamed:name target:target set:0 get:0 detail:0 cell:13 edit:0];
  [v6 setButtonAction:action];

  return v6;
}

+ (id)switchSpecifierWithName:(id)name property:(id)property target:(id)target
{
  targetCopy = target;
  propertyCopy = property;
  nameCopy = name;
  v10 = sub_2124(propertyCopy);
  v11 = sub_217C(propertyCopy);
  sub_2220(propertyCopy, targetCopy);
  v12 = [PSSpecifier preferenceSpecifierNamed:nameCopy target:targetCopy set:v11 get:v10 detail:0 cell:6 edit:0];

  [v12 setProperty:propertyCopy forKey:PSKeyNameKey];

  return v12;
}

+ (id)textFieldSpecifierWithName:(id)name property:(id)property target:(id)target
{
  targetCopy = target;
  propertyCopy = property;
  nameCopy = name;
  v10 = sub_2124(propertyCopy);
  v11 = sub_217C(propertyCopy);
  sub_2220(propertyCopy, targetCopy);
  v12 = [PSTextFieldSpecifier preferenceSpecifierNamed:nameCopy target:targetCopy set:v11 get:v10 detail:0 cell:8 edit:0];

  [v12 setProperty:propertyCopy forKey:PSKeyNameKey];

  return v12;
}

@end