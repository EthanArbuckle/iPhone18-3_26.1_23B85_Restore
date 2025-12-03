@interface CardShadowSettings
+ (id)darkButtonShadowSettings;
+ (id)darkCardMacShadowSettings;
+ (id)darkCardShadowSettings;
+ (id)lightButtonShadowSettings;
+ (id)lightCardMacShadowSettings;
+ (id)lightCardShadowSettings;
+ (id)settingsForTraitCollection:(id)collection button:(BOOL)button;
- (CardShadowSettings)initWithRadius:(double)radius opacity:(double)opacity rimOpacity:(double)rimOpacity cornerRadius:(double)cornerRadius;
@end

@implementation CardShadowSettings

+ (id)lightButtonShadowSettings
{
  v2 = [self alloc];
  +[MapsTheme buttonCornerRadius];
  v4 = [v2 initWithRadius:7.0 opacity:0.150000006 rimOpacity:0.0500000007 cornerRadius:v3];

  return v4;
}

- (CardShadowSettings)initWithRadius:(double)radius opacity:(double)opacity rimOpacity:(double)rimOpacity cornerRadius:(double)cornerRadius
{
  v14.receiver = self;
  v14.super_class = CardShadowSettings;
  v10 = [(CardShadowSettings *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_radius = radius;
    v10->_opacity = opacity;
    v10->_rimOpacity = rimOpacity;
    v10->_cornerRadius = cornerRadius;
    v12 = v10;
  }

  return v11;
}

+ (id)settingsForTraitCollection:(id)collection button:(BOOL)button
{
  collectionCopy = collection;
  userInterfaceStyle = [collectionCopy userInterfaceStyle];
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];

  if (userInterfaceStyle == 2)
  {
    if (userInterfaceIdiom == 5)
    {
      darkCardMacShadowSettings = [self darkCardMacShadowSettings];
      goto LABEL_13;
    }

    if (button)
    {
      [self darkButtonShadowSettings];
    }

    else
    {
      [self darkCardShadowSettings];
    }
  }

  else
  {
    if (userInterfaceIdiom == 5)
    {
      darkCardMacShadowSettings = [self lightCardMacShadowSettings];
      goto LABEL_13;
    }

    if (button)
    {
      [self lightButtonShadowSettings];
    }

    else
    {
      [self lightCardShadowSettings];
    }
  }
  darkCardMacShadowSettings = ;
LABEL_13:

  return darkCardMacShadowSettings;
}

+ (id)darkCardMacShadowSettings
{
  v2 = [self alloc];
  +[MapsTheme cardCornerRadius];
  v4 = [v2 initWithRadius:15.0 opacity:0.217999995 rimOpacity:0.135100007 cornerRadius:v3];

  return v4;
}

+ (id)lightCardMacShadowSettings
{
  v2 = [self alloc];
  +[MapsTheme cardCornerRadius];
  v4 = [v2 initWithRadius:15.0 opacity:0.200000003 rimOpacity:0.100000001 cornerRadius:v3];

  return v4;
}

+ (id)darkButtonShadowSettings
{
  v2 = [self alloc];
  +[MapsTheme buttonCornerRadius];
  v4 = [v2 initWithRadius:7.0 opacity:0.234999999 rimOpacity:0.116499998 cornerRadius:v3];

  return v4;
}

+ (id)darkCardShadowSettings
{
  v2 = [self alloc];
  +[MapsTheme cardCornerRadius];
  v4 = [v2 initWithRadius:15.0 opacity:0.217999995 rimOpacity:0.135100007 cornerRadius:v3];

  return v4;
}

+ (id)lightCardShadowSettings
{
  v2 = [self alloc];
  +[MapsTheme cardCornerRadius];
  v4 = [v2 initWithRadius:15.0 opacity:0.0799999982 rimOpacity:0.0700000003 cornerRadius:v3];

  return v4;
}

@end