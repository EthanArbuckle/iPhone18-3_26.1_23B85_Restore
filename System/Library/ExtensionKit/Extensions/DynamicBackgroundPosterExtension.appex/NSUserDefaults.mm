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
- (void)setCustomGlitterVariant:(id)variant;
- (void)setCustomVariant:(id)variant;
- (void)setGlitterAmbientContrast:(float)contrast;
- (void)setGlitterAmbientIntensity:(float)intensity;
- (void)setGlitterBackgroundGlitterIntensity:(float)intensity;
- (void)setGlitterGlintIntensity:(float)intensity;
- (void)setGlitterGyroIntensity:(float)intensity;
- (void)setGlitterParallaxIntensity:(float)intensity;
- (void)setGlitterPrismaticIntensity:(float)intensity;
- (void)setGlitterRotateOnGround:(float)ground;
- (void)setGlitterTapStrength:(float)strength;
- (void)setLuminance:(float)luminance;
@end

@implementation NSUserDefaults

- (float)glitterAmbientContrast
{
  selfCopy = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterAmbientContrast:(float)contrast
{
  selfCopy = self;
  v4 = sub_10004D05C();
  *&v5 = contrast;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (float)glitterAmbientIntensity
{
  selfCopy = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterAmbientIntensity:(float)intensity
{
  selfCopy = self;
  v4 = sub_10004D05C();
  *&v5 = intensity;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (float)glitterBackgroundGlitterIntensity
{
  selfCopy = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterBackgroundGlitterIntensity:(float)intensity
{
  selfCopy = self;
  v4 = sub_10004D05C();
  *&v5 = intensity;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (float)glitterGlintIntensity
{
  selfCopy = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterGlintIntensity:(float)intensity
{
  selfCopy = self;
  v4 = sub_10004D05C();
  *&v5 = intensity;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (float)glitterGyroIntensity
{
  selfCopy = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterGyroIntensity:(float)intensity
{
  selfCopy = self;
  v4 = sub_10004D05C();
  *&v5 = intensity;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (float)glitterParallaxIntensity
{
  selfCopy = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterParallaxIntensity:(float)intensity
{
  selfCopy = self;
  v4 = sub_10004D05C();
  *&v5 = intensity;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (float)glitterPrismaticIntensity
{
  selfCopy = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterPrismaticIntensity:(float)intensity
{
  selfCopy = self;
  v4 = sub_10004D05C();
  *&v5 = intensity;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (float)glitterRotateOnGround
{
  selfCopy = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterRotateOnGround:(float)ground
{
  selfCopy = self;
  v4 = sub_10004D05C();
  *&v5 = ground;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (float)glitterTapStrength
{
  selfCopy = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setGlitterTapStrength:(float)strength
{
  selfCopy = self;
  v4 = sub_10004D05C();
  *&v5 = strength;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (BOOL)enableCustomGlitter
{
  selfCopy = self;
  v3 = sub_10004D05C();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (float)luminance
{
  selfCopy = self;
  v3 = sub_10004D05C();
  [(NSUserDefaults *)selfCopy floatForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setLuminance:(float)luminance
{
  selfCopy = self;
  v4 = sub_10004D05C();
  *&v5 = luminance;
  [(NSUserDefaults *)selfCopy setFloat:v4 forKey:v5];
}

- (NSString)customVariant
{
  selfCopy = self;
  v3 = sub_10004D05C();
  v4 = [(NSUserDefaults *)selfCopy stringForKey:v3];

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

- (void)setCustomVariant:(id)variant
{
  if (variant)
  {
    sub_10004D08C();
    selfCopy = self;
    v5 = sub_10004D05C();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7 = sub_10004D05C();
  [(NSUserDefaults *)self setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

- (NSString)customGlitterVariant
{
  selfCopy = self;
  v3 = sub_10004D05C();
  v4 = [(NSUserDefaults *)selfCopy stringForKey:v3];

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

- (void)setCustomGlitterVariant:(id)variant
{
  if (variant)
  {
    sub_10004D08C();
    selfCopy = self;
    v5 = sub_10004D05C();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7 = sub_10004D05C();
  [(NSUserDefaults *)self setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

- (BOOL)deleteSnaphotsAtLaunch
{
  selfCopy = self;
  v3 = sub_10004D05C();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (BOOL)resumeFromLastPlayTime
{
  selfCopy = self;
  v3 = sub_10004D05C();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

@end