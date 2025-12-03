@interface BKFlowingBookFontSizeConfiguration
+ (double)fontSizeFactorForViewportSize:(CGSize)size useOldFontStepsAndSpacing:(BOOL)spacing;
- (BKFlowingBookFontSizeConfiguration)initWithViewController:(id)controller configurationEnvironment:(id)environment;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFlowingBookFontSizeConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_reloadFontSizes;
@end

@implementation BKFlowingBookFontSizeConfiguration

- (BKFlowingBookFontSizeConfiguration)initWithViewController:(id)controller configurationEnvironment:(id)environment
{
  v7.receiver = self;
  v7.super_class = BKFlowingBookFontSizeConfiguration;
  v4 = [(BKFlowingBookFontSizeConfiguration *)&v7 initWithViewController:controller configurationEnvironment:environment];
  v5 = v4;
  if (v4)
  {
    [(BKFlowingBookFontSizeConfiguration *)v4 viewSizeChanged];
  }

  return v5;
}

- (void)_reloadFontSizes
{
  v3 = +[NSUserDefaults standardUserDefaults];
  self->_useOldFontStepsAndSpacing = [v3 BOOLForKey:@"BKUseOldFontStepsAndSpacing"];

  self->_largeSizeFactor = 1.0;
  sizes = self->_sizes;
  *self->_sizes = xmmword_1938A0;
  self->_sizes[2] = 1.0;
  environment = [(BKFlowingBookFontSizeConfiguration *)self environment];
  [environment size];
  v7 = v6;
  v9 = v8;

  if (v7 >= kIMConfigurationSize_superPhone)
  {
    if (v7 <= kIMConfigurationSize_proMaxPhone)
    {
      *sizes = xmmword_1938B0;
      v11 = 2.2;
    }

    else
    {
      if (v7 >= 1366.0)
      {
        v10 = xmmword_1938C0;
      }

      else
      {
        v10 = xmmword_1938D0;
      }

      *sizes = v10;
      v11 = 4.0;
    }

    self->_sizes[2] = v11;
  }

  else
  {
    *sizes = xmmword_1938B0;
  }

  [objc_opt_class() fontSizeFactorForViewportSize:self->_useOldFontStepsAndSpacing useOldFontStepsAndSpacing:{v7, v9}];
  *sizes = vmulq_n_f64(*sizes, v12);
  self->_sizes[2] = v12 * self->_sizes[2];
  [(BKFlowingBookFontSizeConfiguration *)self largeSizeFactor];
  self->_sizes[2] = v13 * self->_sizes[2];
}

+ (double)fontSizeFactorForViewportSize:(CGSize)size useOldFontStepsAndSpacing:(BOOL)spacing
{
  if (spacing)
  {
    v4 = 1.0;
    if (size.width >= 1366.0)
    {
      return 1.13;
    }
  }

  else if (size.width >= 375.0)
  {
    v4 = 1.0;
    if (size.width >= 768.0)
    {
      return dbl_1938E0[size.width < 1024.0];
    }
  }

  else
  {
    return 0.96;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = BKFlowingBookFontSizeConfiguration;
  v4 = [(BKFlowingBookFontSizeConfiguration *)&v7 copyWithZone:zone];
  if (v4)
  {
    [(BKFlowingBookFontSizeConfiguration *)self largeSizeFactor];
    [v4 setLargeSizeFactor:?];
    v5 = self->_sizes[2];
    *(v4 + 1) = *self->_sizes;
    *(v4 + 4) = v5;
  }

  return v4;
}

- (BOOL)isEqualToFlowingBookFontSizeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(BKFlowingBookFontSizeConfiguration *)self largeSizeFactor];
  v6 = v5;
  [configurationCopy largeSizeFactor];
  v10 = v6 == v7 && *&self->_sizes[0] == configurationCopy[2] && *&self->_sizes[1] == configurationCopy[3] && *&self->_sizes[2] == configurationCopy[4];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BKFlowingBookFontSizeConfiguration *)self isEqualToFlowingBookFontSizeConfiguration:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BKFlowingBookFontSizeConfiguration;
  v3 = [(BKFlowingBookFontSizeConfiguration *)&v7 description];
  [(BKFlowingBookFontSizeConfiguration *)self largeSizeFactor];
  v4 = [NSNumber numberWithDouble:?];
  v5 = [NSString stringWithFormat:@"%@\nBKFlowingBookFontSizeConfiguration: largeSizeFactor:%@", v3, v4];

  return v5;
}

@end