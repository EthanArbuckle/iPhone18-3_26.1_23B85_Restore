@interface SharedDefaults
+ (id)defaults;
+ (int64_t)currentMeasureUnits;
+ (void)setupSpecifier:(id)specifier;
- (SharedDefaults)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SharedDefaults

- (SharedDefaults)init
{
  v6.receiver = self;
  v6.super_class = SharedDefaults;
  v2 = [(SharedDefaults *)&v6 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    measureUnits = [objc_opt_class() measureUnits];
    [v3 addObserver:v2 forKeyPath:measureUnits options:5 context:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  measureUnits = [objc_opt_class() measureUnits];
  [v3 removeObserver:self forKeyPath:measureUnits];

  v5.receiver = self;
  v5.super_class = SharedDefaults;
  [(SharedDefaults *)&v5 dealloc];
}

+ (id)defaults
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1DB4;
  block[3] = &unk_42B8;
  block[4] = self;
  if (qword_8548[0] != -1)
  {
    dispatch_once(qword_8548, block);
  }

  v2 = qword_8540;

  return v2;
}

+ (void)setupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:PSDefaultsKey];
  v5 = [specifierCopy propertyForKey:PSKeyNameKey];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && [v4 isEqualToString:@"com.apple.measure"])
  {
    getDefaultValues = [self getDefaultValues];
    v9 = [getDefaultValues objectForKeyedSubscript:v6];
    if (v9)
    {
      [specifierCopy setProperty:v9 forKey:PSDefaultValueKey];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  measureUnits = [objc_opt_class() measureUnits];
  v9 = [pathCopy isEqualToString:measureUnits];

  if (v9)
  {
    v10 = +[NSUserDefaults standardUserDefaults];
    measureUnits2 = [objc_opt_class() measureUnits];
    v13 = [v10 valueForKeyPath:measureUnits2];

    if (v13)
    {
      integerValue = [v13 integerValue];
    }

    else
    {
      integerValue = sub_1BAC();
    }

    [(SharedDefaults *)self setCachedMeasureUnits:integerValue];
  }
}

+ (int64_t)currentMeasureUnits
{
  defaults = [self defaults];
  cachedMeasureUnits = [defaults cachedMeasureUnits];

  return cachedMeasureUnits;
}

@end