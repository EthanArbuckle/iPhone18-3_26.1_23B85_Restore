@interface PSSpecifier
+ (id)buttonSpecifierWithTitle:(id)a3 target:(id)a4 action:(SEL)a5 confirmationInfo:(id)a6;
+ (id)switchSpecifierWithTitle:(id)a3 target:(id)a4 setter:(SEL)a5 getter:(SEL)a6 key:(id)a7;
@end

@implementation PSSpecifier

+ (id)switchSpecifierWithTitle:(id)a3 target:(id)a4 setter:(SEL)a5 getter:(SEL)a6 key:(id)a7
{
  v11 = a7;
  v12 = [PSSpecifier preferenceSpecifierNamed:a3 target:a4 set:a5 get:a6 detail:0 cell:6 edit:0];
  v13 = v12;
  if (v11)
  {
    [v12 setProperty:v11 forKey:PSKeyNameKey];
  }

  return v13;
}

+ (id)buttonSpecifierWithTitle:(id)a3 target:(id)a4 action:(SEL)a5 confirmationInfo:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = PSSpecifier_ptr;
  if (v11)
  {
    v12 = PSConfirmationSpecifier_ptr;
  }

  v13 = *v12;
  v14 = [objc_opt_class() preferenceSpecifierNamed:v9 target:v10 set:0 get:0 detail:0 cell:13 edit:0];
  v15 = v14;
  *&v14[OBJC_IVAR___PSSpecifier_action] = a5;
  if (v11)
  {
    [v14 setupWithDictionary:v11];
  }

  return v15;
}

@end