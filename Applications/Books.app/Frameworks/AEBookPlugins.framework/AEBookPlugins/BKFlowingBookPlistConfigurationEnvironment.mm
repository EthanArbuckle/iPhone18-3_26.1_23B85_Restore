@interface BKFlowingBookPlistConfigurationEnvironment
- (BKFlowingBookFontSizeConfiguration)fontSizeConfiguration;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFlowingBookPlistConfigurationEnvironment:(id)environment;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key;
- (int64_t)_semanticFontSize;
- (void)setLargeSizeFactor:(double)factor;
@end

@implementation BKFlowingBookPlistConfigurationEnvironment

- (void)setLargeSizeFactor:(double)factor
{
  fontSizeConfiguration = [(BKFlowingBookPlistConfigurationEnvironment *)self fontSizeConfiguration];
  [fontSizeConfiguration setLargeSizeFactor:factor];
}

- (int64_t)_semanticFontSize
{
  [(BKFlowingBookPlistConfigurationEnvironment *)self fontSize];
  if (v3 == 0.0)
  {
    return 0;
  }

  [(BKFlowingBookPlistConfigurationEnvironment *)self fontSize];
  v5 = v4;
  fontSizeConfiguration = [(BKFlowingBookPlistConfigurationEnvironment *)self fontSizeConfiguration];
  [fontSizeConfiguration smallSize];
  v8 = v7;

  if (v5 < v8)
  {
    return 0;
  }

  [(BKFlowingBookPlistConfigurationEnvironment *)self fontSize];
  v11 = v10;
  fontSizeConfiguration2 = [(BKFlowingBookPlistConfigurationEnvironment *)self fontSizeConfiguration];
  [fontSizeConfiguration2 mediumSize];
  v14 = v13;

  if (v11 < v14)
  {
    return 1;
  }

  [(BKFlowingBookPlistConfigurationEnvironment *)self fontSize];
  v16 = v15;
  fontSizeConfiguration3 = [(BKFlowingBookPlistConfigurationEnvironment *)self fontSizeConfiguration];
  [fontSizeConfiguration3 largeSize];
  v19 = v18;

  if (v16 >= v19)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"scroll"])
  {
    v5 = [NSNumber numberWithBool:[(BKFlowingBookPlistConfigurationEnvironment *)self scroll]];
LABEL_7:
    v7 = v5;
    goto LABEL_8;
  }

  if (![keyCopy isEqualToString:@"fontsize"])
  {
    v9.receiver = self;
    v9.super_class = BKFlowingBookPlistConfigurationEnvironment;
    v5 = [(BKFlowingBookPlistConfigurationEnvironment *)&v9 valueForKey:keyCopy];
    goto LABEL_7;
  }

  _semanticFontSize = [(BKFlowingBookPlistConfigurationEnvironment *)self _semanticFontSize];
  if (_semanticFontSize > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E3B70[_semanticFontSize];
  }

LABEL_8:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = BKFlowingBookPlistConfigurationEnvironment;
  v4 = [(BKFlowingBookPlistConfigurationEnvironment *)&v6 copyWithZone:zone];
  [v4 setScroll:{-[BKFlowingBookPlistConfigurationEnvironment scroll](self, "scroll")}];
  [(BKFlowingBookPlistConfigurationEnvironment *)self fontSize];
  [v4 setFontSize:?];
  return v4;
}

- (BOOL)isEqualToFlowingBookPlistConfigurationEnvironment:(id)environment
{
  environmentCopy = environment;
  scroll = [(BKFlowingBookPlistConfigurationEnvironment *)self scroll];
  if (scroll == [environmentCopy scroll] && (-[BKFlowingBookPlistConfigurationEnvironment fontSize](self, "fontSize"), v7 = v6, objc_msgSend(environmentCopy, "fontSize"), v7 == v8))
  {
    WeakRetained = objc_loadWeakRetained(&self->_fontSizeConfiguration);
    v10 = objc_loadWeakRetained(environmentCopy + 3);
    if (WeakRetained == v10)
    {
      v13 = 1;
    }

    else
    {
      v11 = objc_loadWeakRetained(&self->_fontSizeConfiguration);
      v12 = objc_loadWeakRetained(environmentCopy + 3);
      v13 = [v11 isEqual:v12];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = BKFlowingBookPlistConfigurationEnvironment, [(BKFlowingBookPlistConfigurationEnvironment *)&v7 isEqual:equalCopy]))
    {
      v5 = [(BKFlowingBookPlistConfigurationEnvironment *)self isEqualToFlowingBookPlistConfigurationEnvironment:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BKFlowingBookFontSizeConfiguration)fontSizeConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_fontSizeConfiguration);

  return WeakRetained;
}

@end