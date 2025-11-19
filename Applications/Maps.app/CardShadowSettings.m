@interface CardShadowSettings
+ (id)darkButtonShadowSettings;
+ (id)darkCardMacShadowSettings;
+ (id)darkCardShadowSettings;
+ (id)lightButtonShadowSettings;
+ (id)lightCardMacShadowSettings;
+ (id)lightCardShadowSettings;
+ (id)settingsForTraitCollection:(id)a3 button:(BOOL)a4;
- (CardShadowSettings)initWithRadius:(double)a3 opacity:(double)a4 rimOpacity:(double)a5 cornerRadius:(double)a6;
@end

@implementation CardShadowSettings

+ (id)lightButtonShadowSettings
{
  v2 = [a1 alloc];
  +[MapsTheme buttonCornerRadius];
  v4 = [v2 initWithRadius:7.0 opacity:0.150000006 rimOpacity:0.0500000007 cornerRadius:v3];

  return v4;
}

- (CardShadowSettings)initWithRadius:(double)a3 opacity:(double)a4 rimOpacity:(double)a5 cornerRadius:(double)a6
{
  v14.receiver = self;
  v14.super_class = CardShadowSettings;
  v10 = [(CardShadowSettings *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_radius = a3;
    v10->_opacity = a4;
    v10->_rimOpacity = a5;
    v10->_cornerRadius = a6;
    v12 = v10;
  }

  return v11;
}

+ (id)settingsForTraitCollection:(id)a3 button:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 userInterfaceStyle];
  v8 = [v6 userInterfaceIdiom];

  if (v7 == 2)
  {
    if (v8 == 5)
    {
      v9 = [a1 darkCardMacShadowSettings];
      goto LABEL_13;
    }

    if (a4)
    {
      [a1 darkButtonShadowSettings];
    }

    else
    {
      [a1 darkCardShadowSettings];
    }
  }

  else
  {
    if (v8 == 5)
    {
      v9 = [a1 lightCardMacShadowSettings];
      goto LABEL_13;
    }

    if (a4)
    {
      [a1 lightButtonShadowSettings];
    }

    else
    {
      [a1 lightCardShadowSettings];
    }
  }
  v9 = ;
LABEL_13:

  return v9;
}

+ (id)darkCardMacShadowSettings
{
  v2 = [a1 alloc];
  +[MapsTheme cardCornerRadius];
  v4 = [v2 initWithRadius:15.0 opacity:0.217999995 rimOpacity:0.135100007 cornerRadius:v3];

  return v4;
}

+ (id)lightCardMacShadowSettings
{
  v2 = [a1 alloc];
  +[MapsTheme cardCornerRadius];
  v4 = [v2 initWithRadius:15.0 opacity:0.200000003 rimOpacity:0.100000001 cornerRadius:v3];

  return v4;
}

+ (id)darkButtonShadowSettings
{
  v2 = [a1 alloc];
  +[MapsTheme buttonCornerRadius];
  v4 = [v2 initWithRadius:7.0 opacity:0.234999999 rimOpacity:0.116499998 cornerRadius:v3];

  return v4;
}

+ (id)darkCardShadowSettings
{
  v2 = [a1 alloc];
  +[MapsTheme cardCornerRadius];
  v4 = [v2 initWithRadius:15.0 opacity:0.217999995 rimOpacity:0.135100007 cornerRadius:v3];

  return v4;
}

+ (id)lightCardShadowSettings
{
  v2 = [a1 alloc];
  +[MapsTheme cardCornerRadius];
  v4 = [v2 initWithRadius:15.0 opacity:0.0799999982 rimOpacity:0.0700000003 cornerRadius:v3];

  return v4;
}

@end