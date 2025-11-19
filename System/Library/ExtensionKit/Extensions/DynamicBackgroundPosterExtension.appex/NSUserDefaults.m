@interface NSUserDefaults
- (BOOL)deleteSnaphotsAtLaunch;
- (BOOL)enableCustomGlitter;
- (BOOL)resumeFromLastPlayTime;
- (NSString)customGlitterVariant;
- (NSString)customVariant;
- (float)glitterAmbientContrast;
- (float)glitterAmbientIntensity;
- (float)glitterBackgroundGlitterIntensity;
- (float)glitterGlintIntensity;
- (float)glitterGyroIntensity;
- (float)glitterParallaxIntensity;
- (float)glitterPrismaticIntensity;
- (float)glitterRotateOnGround;
- (float)glitterTapStrength;
- (float)luminance;
- (void)setCustomGlitterVariant:(id)a3;
- (void)setCustomVariant:(id)a3;
- (void)setGlitterAmbientContrast:(float)a3;
- (void)setGlitterAmbientIntensity:(float)a3;
- (void)setGlitterBackgroundGlitterIntensity:(float)a3;
- (void)setGlitterGlintIntensity:(float)a3;
- (void)setGlitterGyroIntensity:(float)a3;
- (void)setGlitterParallaxIntensity:(float)a3;
- (void)setGlitterPrismaticIntensity:(float)a3;
- (void)setGlitterRotateOnGround:(float)a3;
- (void)setGlitterTapStrength:(float)a3;
- (void)setLuminance:(float)a3;
@end

@implementation NSUserDefaults

- (float)glitterAmbientContrast
{
  v2 = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterAmbientContrast:(float)a3
{
  v6 = self;
  v4 = sub_10004D05C();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (float)glitterAmbientIntensity
{
  v2 = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterAmbientIntensity:(float)a3
{
  v6 = self;
  v4 = sub_10004D05C();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (float)glitterBackgroundGlitterIntensity
{
  v2 = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterBackgroundGlitterIntensity:(float)a3
{
  v6 = self;
  v4 = sub_10004D05C();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (float)glitterGlintIntensity
{
  v2 = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterGlintIntensity:(float)a3
{
  v6 = self;
  v4 = sub_10004D05C();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (float)glitterGyroIntensity
{
  v2 = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterGyroIntensity:(float)a3
{
  v6 = self;
  v4 = sub_10004D05C();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (float)glitterParallaxIntensity
{
  v2 = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterParallaxIntensity:(float)a3
{
  v6 = self;
  v4 = sub_10004D05C();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (float)glitterPrismaticIntensity
{
  v2 = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterPrismaticIntensity:(float)a3
{
  v6 = self;
  v4 = sub_10004D05C();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (float)glitterRotateOnGround
{
  v2 = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterRotateOnGround:(float)a3
{
  v6 = self;
  v4 = sub_10004D05C();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (float)glitterTapStrength
{
  v2 = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterTapStrength:(float)a3
{
  v6 = self;
  v4 = sub_10004D05C();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (BOOL)enableCustomGlitter
{
  v2 = self;
  v3 = sub_10004D05C();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (float)luminance
{
  v2 = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)v2 floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setLuminance:(float)a3
{
  v6 = self;
  v4 = sub_10004D05C();
  *&v5 = a3;
  [(NSUserDefaults *)v6 setFloat:v4 forKey:v5];
}

- (NSString)customVariant
{
  v2 = self;
  v3 = sub_10004D05C();
  v4 = [(NSUserDefaults *)v2 stringForKey:v3];

  if (v4)
  {
    sub_10004D08C();

    v5 = sub_10004D05C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setCustomVariant:(id)a3
{
  if (a3)
  {
    sub_10004D08C();
    v4 = self;
    v5 = sub_10004D05C();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7 = sub_10004D05C();
  [(NSUserDefaults *)self setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

- (NSString)customGlitterVariant
{
  v2 = self;
  v3 = sub_10004D05C();
  v4 = [(NSUserDefaults *)v2 stringForKey:v3];

  if (v4)
  {
    sub_10004D08C();

    v5 = sub_10004D05C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setCustomGlitterVariant:(id)a3
{
  if (a3)
  {
    sub_10004D08C();
    v4 = self;
    v5 = sub_10004D05C();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7 = sub_10004D05C();
  [(NSUserDefaults *)self setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

- (BOOL)deleteSnaphotsAtLaunch
{
  v2 = self;
  v3 = sub_10004D05C();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (BOOL)resumeFromLastPlayTime
{
  v2 = self;
  v3 = sub_10004D05C();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

@end