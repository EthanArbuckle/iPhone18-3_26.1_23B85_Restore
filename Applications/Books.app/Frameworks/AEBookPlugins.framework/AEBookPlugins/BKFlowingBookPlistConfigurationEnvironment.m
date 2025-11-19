@interface BKFlowingBookPlistConfigurationEnvironment
- (BKFlowingBookFontSizeConfiguration)fontSizeConfiguration;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFlowingBookPlistConfigurationEnvironment:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)valueForKey:(id)a3;
- (int64_t)_semanticFontSize;
- (void)setLargeSizeFactor:(double)a3;
@end

@implementation BKFlowingBookPlistConfigurationEnvironment

- (void)setLargeSizeFactor:(double)a3
{
  v4 = [(BKFlowingBookPlistConfigurationEnvironment *)self fontSizeConfiguration];
  [v4 setLargeSizeFactor:a3];
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
  v6 = [(BKFlowingBookPlistConfigurationEnvironment *)self fontSizeConfiguration];
  [v6 smallSize];
  v8 = v7;

  if (v5 < v8)
  {
    return 0;
  }

  [(BKFlowingBookPlistConfigurationEnvironment *)self fontSize];
  v11 = v10;
  v12 = [(BKFlowingBookPlistConfigurationEnvironment *)self fontSizeConfiguration];
  [v12 mediumSize];
  v14 = v13;

  if (v11 < v14)
  {
    return 1;
  }

  [(BKFlowingBookPlistConfigurationEnvironment *)self fontSize];
  v16 = v15;
  v17 = [(BKFlowingBookPlistConfigurationEnvironment *)self fontSizeConfiguration];
  [v17 largeSize];
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

- (id)valueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"scroll"])
  {
    v5 = [NSNumber numberWithBool:[(BKFlowingBookPlistConfigurationEnvironment *)self scroll]];
LABEL_7:
    v7 = v5;
    goto LABEL_8;
  }

  if (![v4 isEqualToString:@"fontsize"])
  {
    v9.receiver = self;
    v9.super_class = BKFlowingBookPlistConfigurationEnvironment;
    v5 = [(BKFlowingBookPlistConfigurationEnvironment *)&v9 valueForKey:v4];
    goto LABEL_7;
  }

  v6 = [(BKFlowingBookPlistConfigurationEnvironment *)self _semanticFontSize];
  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E3B70[v6];
  }

LABEL_8:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = BKFlowingBookPlistConfigurationEnvironment;
  v4 = [(BKFlowingBookPlistConfigurationEnvironment *)&v6 copyWithZone:a3];
  [v4 setScroll:{-[BKFlowingBookPlistConfigurationEnvironment scroll](self, "scroll")}];
  [(BKFlowingBookPlistConfigurationEnvironment *)self fontSize];
  [v4 setFontSize:?];
  return v4;
}

- (BOOL)isEqualToFlowingBookPlistConfigurationEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(BKFlowingBookPlistConfigurationEnvironment *)self scroll];
  if (v5 == [v4 scroll] && (-[BKFlowingBookPlistConfigurationEnvironment fontSize](self, "fontSize"), v7 = v6, objc_msgSend(v4, "fontSize"), v7 == v8))
  {
    WeakRetained = objc_loadWeakRetained(&self->_fontSizeConfiguration);
    v10 = objc_loadWeakRetained(v4 + 3);
    if (WeakRetained == v10)
    {
      v13 = 1;
    }

    else
    {
      v11 = objc_loadWeakRetained(&self->_fontSizeConfiguration);
      v12 = objc_loadWeakRetained(v4 + 3);
      v13 = [v11 isEqual:v12];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = BKFlowingBookPlistConfigurationEnvironment, [(BKFlowingBookPlistConfigurationEnvironment *)&v7 isEqual:v4]))
    {
      v5 = [(BKFlowingBookPlistConfigurationEnvironment *)self isEqualToFlowingBookPlistConfigurationEnvironment:v4];
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