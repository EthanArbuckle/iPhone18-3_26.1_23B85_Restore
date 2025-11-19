@interface MFFontMetricCache
+ (id)sharedFontMetricCache;
- (BOOL)ensureCacheIsValid;
- (MFFontMetricCache)init;
- (double)cachedFloat:(id)a3 forKey:(id)a4;
- (double)cachedScaledFloatWithValue:(double)a3 fontStyle:(id)a4;
- (double)cachedScaledFloatWithValue:(double)a3 fontStyle:(id)a4 maximumContentSizeCategory:(id)a5;
- (double)cachedScaledFloatWithValue:(double)a3 forKey:(id)a4;
- (id)cachedFont:(id)a3 forKey:(id)a4;
- (id)cachedImage:(id)a3 forKey:(id)a4;
- (id)cachedPreferredFontForStyle:(id)a3;
- (id)cachedPreferredFontForStyle:(id)a3 maximumContentSizeCategory:(id)a4;
- (void)_didReceivePreferredFontChangedNotification:(id)a3;
- (void)_invalidateCache;
@end

@implementation MFFontMetricCache

+ (id)sharedFontMetricCache
{
  if (sharedFontMetricCache_onceToken != -1)
  {
    +[MFFontMetricCache sharedFontMetricCache];
  }

  v3 = sharedFontMetricCache_sharedFontMetricCache;

  return v3;
}

void __42__MFFontMetricCache_sharedFontMetricCache__block_invoke()
{
  v0 = objc_alloc_init(MFFontMetricCache);
  v1 = sharedFontMetricCache_sharedFontMetricCache;
  sharedFontMetricCache_sharedFontMetricCache = v0;
}

- (MFFontMetricCache)init
{
  v14.receiver = self;
  v14.super_class = MFFontMetricCache;
  v2 = [(MFFontMetricCache *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = [v3 preferredContentSizeCategory];
    preferredSizeValidationKey = v2->_preferredSizeValidationKey;
    v2->_preferredSizeValidationKey = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    metricCacheDictionary = v2->_metricCacheDictionary;
    v2->_metricCacheDictionary = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bodyLeadingDictionary = v2->_bodyLeadingDictionary;
    v2->_bodyLeadingDictionary = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    defaultBodyLeadingDictionary = v2->_defaultBodyLeadingDictionary;
    v2->_defaultBodyLeadingDictionary = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v2 selector:sel__didReceivePreferredFontChangedNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v2;
}

- (id)cachedPreferredFontForStyle:(id)a3
{
  v3 = a3;
  v4 = +[MFFontMetricCache sharedFontMetricCache];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__MFFontMetricCache_cachedPreferredFontForStyle___block_invoke;
  v8[3] = &unk_1E806E178;
  v5 = v3;
  v9 = v5;
  v6 = [v4 cachedFont:v8 forKey:v5];

  return v6;
}

- (id)cachedPreferredFontForStyle:(id)a3 maximumContentSizeCategory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MFFontMetricCache sharedFontMetricCache];
  v13 = MEMORY[0x1E69E9820];
  v8 = v5;
  v14 = v8;
  v9 = v6;
  v15 = v9;
  v10 = [v8 stringByAppendingString:{v9, v13, 3221225472, __76__MFFontMetricCache_cachedPreferredFontForStyle_maximumContentSizeCategory___block_invoke, &unk_1E806E1A0}];
  v11 = [v7 cachedFont:&v13 forKey:v10];

  return v11;
}

- (double)cachedScaledFloatWithValue:(double)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = +[MFFontMetricCache sharedFontMetricCache];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__MFFontMetricCache_cachedScaledFloatWithValue_forKey___block_invoke;
  v11[3] = &unk_1E806E1C8;
  v12 = v6;
  v13 = a3;
  v7 = v6;
  [v7 cachedFloat:v11 forKey:v5];
  v9 = v8;

  return v9;
}

double __55__MFFontMetricCache_cachedScaledFloatWithValue_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreferredFontForStyle:*MEMORY[0x1E69DDCF8]];
  [v2 _scaledValueForValue:*(a1 + 40)];
  UIRoundToViewScale();
  v4 = v3;

  return v4;
}

- (double)cachedScaledFloatWithValue:(double)a3 fontStyle:(id)a4
{
  v5 = a4;
  v6 = [(NSMutableDictionary *)self->_bodyLeadingDictionary objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
  }

  else
  {
    v8 = [(MFFontMetricCache *)self cachedPreferredFontForStyle:v5];
    [v8 _bodyLeading];
    bodyLeadingDictionary = self->_bodyLeadingDictionary;
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [(NSMutableDictionary *)bodyLeadingDictionary setValue:v10 forKey:v5];
  }

  v11 = [(NSMutableDictionary *)self->_defaultBodyLeadingDictionary objectForKey:v5];

  if (v11)
  {
    [v11 doubleValue];
  }

  else
  {
    v12 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:v5];
    [v12 _bodyLeading];
    defaultBodyLeadingDictionary = self->_defaultBodyLeadingDictionary;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [(NSMutableDictionary *)defaultBodyLeadingDictionary setValue:v14 forKey:v5];
  }

  UIRoundToViewScale();
  v16 = v15;

  return v16;
}

- (double)cachedScaledFloatWithValue:(double)a3 fontStyle:(id)a4 maximumContentSizeCategory:(id)a5
{
  v7 = a4;
  v8 = [(MFFontMetricCache *)self cachedPreferredFontForStyle:v7 maximumContentSizeCategory:a5];
  [v8 _bodyLeading];
  v9 = [(NSMutableDictionary *)self->_defaultBodyLeadingDictionary objectForKey:v7];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
  }

  else
  {
    v11 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:v7];
    [v11 _bodyLeading];
    defaultBodyLeadingDictionary = self->_defaultBodyLeadingDictionary;
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [(NSMutableDictionary *)defaultBodyLeadingDictionary setValue:v13 forKey:v7];
  }

  UIRoundToViewScale();
  v15 = v14;

  return v15;
}

- (id)cachedFont:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_metricCacheDictionary objectForKey:v7];
  if (!v8)
  {
    v8 = v6[2](v6);
    [(NSMutableDictionary *)self->_metricCacheDictionary setObject:v8 forKey:v7];
  }

  return v8;
}

- (double)cachedFloat:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_metricCacheDictionary objectForKey:v7];
  if (!v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = v6[2](v6);
    *&v10 = v10;
    v8 = [v9 numberWithFloat:v10];
    [NSMutableDictionary setValue:"setValue:forKey:" forKey:?];
  }

  [v8 floatValue];
  v12 = v11;

  return v12;
}

- (id)cachedImage:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_metricCacheDictionary objectForKey:v7];
  if (!v8)
  {
    v8 = v6[2](v6);
    [(NSMutableDictionary *)self->_metricCacheDictionary setObject:v8 forKey:v7];
  }

  return v8;
}

- (void)_invalidateCache
{
  [(NSMutableDictionary *)self->_metricCacheDictionary removeAllObjects];
  [(NSMutableDictionary *)self->_bodyLeadingDictionary removeAllObjects];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"MFFontMetricCacheInvalidationNotification" object:self];
}

- (BOOL)ensureCacheIsValid
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [v4 isEqualToString:self->_preferredSizeValidationKey];
  if ((v5 & 1) == 0)
  {
    objc_storeStrong(&self->_preferredSizeValidationKey, v4);
    [(MFFontMetricCache *)self _invalidateCache];
  }

  return v5;
}

- (void)_didReceivePreferredFontChangedNotification:(id)a3
{
  v7 = a3;
  v4 = [v7 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDC80]];
  preferredSizeValidationKey = self->_preferredSizeValidationKey;
  self->_preferredSizeValidationKey = v5;

  [(MFFontMetricCache *)self _invalidateCache];
}

@end