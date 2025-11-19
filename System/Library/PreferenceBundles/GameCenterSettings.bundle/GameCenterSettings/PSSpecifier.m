@interface PSSpecifier
+ (id)buttonSpecifierWithName:(id)a3 target:(id)a4 action:(SEL)a5;
+ (id)cellSpecifierWithName:(id)a3 target:(id)a4 action:(SEL)a5;
+ (id)groupSpecifierWithName:(id)a3 footer:(id)a4;
+ (id)groupSpecifierWithName:(id)a3 subheader:(id)a4;
+ (id)groupSpecifierWithName:(id)a3 subheader:(id)a4 footer:(id)a5;
+ (id)switchSpecifierWithName:(id)a3 property:(id)a4 target:(id)a5;
+ (id)textFieldSpecifierWithName:(id)a3 property:(id)a4 target:(id)a5;
@end

@implementation PSSpecifier

+ (id)groupSpecifierWithName:(id)a3 subheader:(id)a4 footer:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [PSSpecifier groupSpecifierWithName:a3];
  [v9 setProperty:v8 forKey:PSHeaderDetailTextGroupKey];

  [v9 setProperty:v7 forKey:PSFooterTextGroupKey];

  return v9;
}

+ (id)groupSpecifierWithName:(id)a3 subheader:(id)a4
{
  v5 = a4;
  v6 = [PSSpecifier groupSpecifierWithName:a3];
  [v6 setProperty:v5 forKey:PSHeaderDetailTextGroupKey];

  return v6;
}

+ (id)groupSpecifierWithName:(id)a3 footer:(id)a4
{
  v5 = a4;
  v6 = [PSSpecifier groupSpecifierWithName:a3];
  [v6 setProperty:v5 forKey:PSFooterTextGroupKey];

  return v6;
}

+ (id)cellSpecifierWithName:(id)a3 target:(id)a4 action:(SEL)a5
{
  v6 = [PSSpecifier preferenceSpecifierNamed:a3 target:a4 set:0 get:0 detail:0 cell:1 edit:0];
  [v6 setButtonAction:a5];

  return v6;
}

+ (id)buttonSpecifierWithName:(id)a3 target:(id)a4 action:(SEL)a5
{
  v6 = [PSSpecifier preferenceSpecifierNamed:a3 target:a4 set:0 get:0 detail:0 cell:13 edit:0];
  [v6 setButtonAction:a5];

  return v6;
}

+ (id)switchSpecifierWithName:(id)a3 property:(id)a4 target:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = sub_2124(v8);
  v11 = sub_217C(v8);
  sub_2220(v8, v7);
  v12 = [PSSpecifier preferenceSpecifierNamed:v9 target:v7 set:v11 get:v10 detail:0 cell:6 edit:0];

  [v12 setProperty:v8 forKey:PSKeyNameKey];

  return v12;
}

+ (id)textFieldSpecifierWithName:(id)a3 property:(id)a4 target:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = sub_2124(v8);
  v11 = sub_217C(v8);
  sub_2220(v8, v7);
  v12 = [PSTextFieldSpecifier preferenceSpecifierNamed:v9 target:v7 set:v11 get:v10 detail:0 cell:8 edit:0];

  [v12 setProperty:v8 forKey:PSKeyNameKey];

  return v12;
}

@end