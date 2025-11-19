@interface SharedDefaults
+ (id)defaults;
+ (int64_t)currentMeasureUnits;
+ (void)setupSpecifier:(id)a3;
- (SharedDefaults)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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
    v4 = [objc_opt_class() measureUnits];
    [v3 addObserver:v2 forKeyPath:v4 options:5 context:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [objc_opt_class() measureUnits];
  [v3 removeObserver:self forKeyPath:v4];

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
  block[4] = a1;
  if (qword_8548[0] != -1)
  {
    dispatch_once(qword_8548, block);
  }

  v2 = qword_8540;

  return v2;
}

+ (void)setupSpecifier:(id)a3
{
  v10 = a3;
  v4 = [v10 propertyForKey:PSDefaultsKey];
  v5 = [v10 propertyForKey:PSKeyNameKey];
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
    v8 = [a1 getDefaultValues];
    v9 = [v8 objectForKeyedSubscript:v6];
    if (v9)
    {
      [v10 setProperty:v9 forKey:PSDefaultValueKey];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v8 = [objc_opt_class() measureUnits];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [objc_opt_class() measureUnits];
    v13 = [v10 valueForKeyPath:v11];

    if (v13)
    {
      v12 = [v13 integerValue];
    }

    else
    {
      v12 = sub_1BAC();
    }

    [(SharedDefaults *)self setCachedMeasureUnits:v12];
  }
}

+ (int64_t)currentMeasureUnits
{
  v2 = [a1 defaults];
  v3 = [v2 cachedMeasureUnits];

  return v3;
}

@end