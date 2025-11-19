@interface WarlockFontLoader
+ (id)sharedInstance;
+ (id)solidFontDescriptorWithAttributes:(id)a3;
+ (id)stencilFontDescriptorWithAttributes:(id)a3;
- (WarlockFontLoader)init;
- (id)solidFontCacheKeyWithAttributes:(id)a3;
- (id)solidFontTypographicBoundsWithAttributes:(id)a3;
- (id)solidFontWithAttributes:(id)a3;
- (id)stencilFontCacheKeyWithAttributes:(id)a3;
- (id)stencilFontTypographicBoundsWithAttributes:(id)a3;
- (id)stencilFontWithAttributes:(id)a3;
@end

@implementation WarlockFontLoader

+ (id)sharedInstance
{
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&qword_5A540);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(WarlockFontLoader);
    objc_storeWeak(&qword_5A540, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (WarlockFontLoader)init
{
  v8.receiver = self;
  v8.super_class = WarlockFontLoader;
  v2 = [(WarlockFontLoader *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    fontCache = v2->_fontCache;
    v2->_fontCache = v3;

    v5 = +[NSMutableDictionary dictionary];
    typographicCache = v2->_typographicCache;
    v2->_typographicCache = v5;
  }

  return v2;
}

- (id)stencilFontWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [(WarlockFontLoader *)self stencilFontCacheKeyWithAttributes:v4];
  v6 = [(NSMutableDictionary *)self->_fontCache objectForKey:v5];
  if (!v6)
  {
    v7 = [objc_opt_class() stencilFontDescriptorWithAttributes:v4];
    [v4 fontSize];
    v6 = [CLKFont fontWithDescriptor:v7 size:?];
    [(NSMutableDictionary *)self->_fontCache setObject:v6 forKey:v5];
  }

  return v6;
}

- (id)solidFontWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [(WarlockFontLoader *)self solidFontCacheKeyWithAttributes:v4];
  v6 = [(NSMutableDictionary *)self->_fontCache objectForKey:v5];
  if (!v6)
  {
    v7 = [objc_opt_class() solidFontDescriptorWithAttributes:v4];
    [v4 fontSize];
    v6 = [CLKFont fontWithDescriptor:v7 size:?];
    [(NSMutableDictionary *)self->_fontCache setObject:v6 forKey:v5];
  }

  return v6;
}

- (id)stencilFontTypographicBoundsWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [(WarlockFontLoader *)self stencilFontCacheKeyWithAttributes:v4];
  v6 = [(NSMutableDictionary *)self->_typographicCache objectForKey:v5];
  if (!v6)
  {
    v7 = [(WarlockFontLoader *)self stencilFontWithAttributes:v4];
    v6 = [[NTKTimeFontTypographicBounds alloc] initWithText:@"00" font:v7];
    [(NSMutableDictionary *)self->_typographicCache setObject:v6 forKey:v5];
  }

  return v6;
}

- (id)solidFontTypographicBoundsWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [(WarlockFontLoader *)self solidFontCacheKeyWithAttributes:v4];
  v6 = [(NSMutableDictionary *)self->_typographicCache objectForKey:v5];
  if (!v6)
  {
    v7 = [(WarlockFontLoader *)self solidFontWithAttributes:v4];
    v6 = [[NTKTimeFontTypographicBounds alloc] initWithText:@"00" font:v7];
    [(NSMutableDictionary *)self->_typographicCache setObject:v6 forKey:v5];
  }

  return v6;
}

- (id)stencilFontCacheKeyWithAttributes:(id)a3
{
  v3 = [a3 cacheKey];
  v4 = [NSString stringWithFormat:@"%@-%@", @"stencil", v3];

  return v4;
}

- (id)solidFontCacheKeyWithAttributes:(id)a3
{
  v3 = [a3 cacheKey];
  v4 = [NSString stringWithFormat:@"%@-%@", @"solid", v3];

  return v4;
}

+ (id)stencilFontDescriptorWithAttributes:(id)a3
{
  v3 = qword_5A550;
  v4 = a3;
  if (v3 != -1)
  {
    sub_36C28();
  }

  v5 = qword_5A548;
  v6 = [v4 fontAttributes];

  v7 = [v5 fontDescriptorByAddingAttributes:v6];
  v8 = qword_5A548;
  qword_5A548 = v7;

  v9 = qword_5A548;

  return v9;
}

+ (id)solidFontDescriptorWithAttributes:(id)a3
{
  v3 = qword_5A560[0];
  v4 = a3;
  if (v3 != -1)
  {
    sub_36C3C();
  }

  v5 = qword_5A558;
  v6 = [v4 fontAttributes];

  v7 = [v5 fontDescriptorByAddingAttributes:v6];
  v8 = qword_5A558;
  qword_5A558 = v7;

  v9 = qword_5A558;

  return v9;
}

@end