@interface WarlockFontLoader
+ (id)sharedInstance;
+ (id)solidFontDescriptorWithAttributes:(id)attributes;
+ (id)stencilFontDescriptorWithAttributes:(id)attributes;
- (WarlockFontLoader)init;
- (id)solidFontCacheKeyWithAttributes:(id)attributes;
- (id)solidFontTypographicBoundsWithAttributes:(id)attributes;
- (id)solidFontWithAttributes:(id)attributes;
- (id)stencilFontCacheKeyWithAttributes:(id)attributes;
- (id)stencilFontTypographicBoundsWithAttributes:(id)attributes;
- (id)stencilFontWithAttributes:(id)attributes;
@end

@implementation WarlockFontLoader

+ (id)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_5A540);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(WarlockFontLoader);
    objc_storeWeak(&qword_5A540, WeakRetained);
  }

  objc_sync_exit(selfCopy);

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

- (id)stencilFontWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [(WarlockFontLoader *)self stencilFontCacheKeyWithAttributes:attributesCopy];
  v6 = [(NSMutableDictionary *)self->_fontCache objectForKey:v5];
  if (!v6)
  {
    v7 = [objc_opt_class() stencilFontDescriptorWithAttributes:attributesCopy];
    [attributesCopy fontSize];
    v6 = [CLKFont fontWithDescriptor:v7 size:?];
    [(NSMutableDictionary *)self->_fontCache setObject:v6 forKey:v5];
  }

  return v6;
}

- (id)solidFontWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [(WarlockFontLoader *)self solidFontCacheKeyWithAttributes:attributesCopy];
  v6 = [(NSMutableDictionary *)self->_fontCache objectForKey:v5];
  if (!v6)
  {
    v7 = [objc_opt_class() solidFontDescriptorWithAttributes:attributesCopy];
    [attributesCopy fontSize];
    v6 = [CLKFont fontWithDescriptor:v7 size:?];
    [(NSMutableDictionary *)self->_fontCache setObject:v6 forKey:v5];
  }

  return v6;
}

- (id)stencilFontTypographicBoundsWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [(WarlockFontLoader *)self stencilFontCacheKeyWithAttributes:attributesCopy];
  v6 = [(NSMutableDictionary *)self->_typographicCache objectForKey:v5];
  if (!v6)
  {
    v7 = [(WarlockFontLoader *)self stencilFontWithAttributes:attributesCopy];
    v6 = [[NTKTimeFontTypographicBounds alloc] initWithText:@"00" font:v7];
    [(NSMutableDictionary *)self->_typographicCache setObject:v6 forKey:v5];
  }

  return v6;
}

- (id)solidFontTypographicBoundsWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [(WarlockFontLoader *)self solidFontCacheKeyWithAttributes:attributesCopy];
  v6 = [(NSMutableDictionary *)self->_typographicCache objectForKey:v5];
  if (!v6)
  {
    v7 = [(WarlockFontLoader *)self solidFontWithAttributes:attributesCopy];
    v6 = [[NTKTimeFontTypographicBounds alloc] initWithText:@"00" font:v7];
    [(NSMutableDictionary *)self->_typographicCache setObject:v6 forKey:v5];
  }

  return v6;
}

- (id)stencilFontCacheKeyWithAttributes:(id)attributes
{
  cacheKey = [attributes cacheKey];
  v4 = [NSString stringWithFormat:@"%@-%@", @"stencil", cacheKey];

  return v4;
}

- (id)solidFontCacheKeyWithAttributes:(id)attributes
{
  cacheKey = [attributes cacheKey];
  v4 = [NSString stringWithFormat:@"%@-%@", @"solid", cacheKey];

  return v4;
}

+ (id)stencilFontDescriptorWithAttributes:(id)attributes
{
  v3 = qword_5A550;
  attributesCopy = attributes;
  if (v3 != -1)
  {
    sub_36C28();
  }

  v5 = qword_5A548;
  fontAttributes = [attributesCopy fontAttributes];

  v7 = [v5 fontDescriptorByAddingAttributes:fontAttributes];
  v8 = qword_5A548;
  qword_5A548 = v7;

  v9 = qword_5A548;

  return v9;
}

+ (id)solidFontDescriptorWithAttributes:(id)attributes
{
  v3 = qword_5A560[0];
  attributesCopy = attributes;
  if (v3 != -1)
  {
    sub_36C3C();
  }

  v5 = qword_5A558;
  fontAttributes = [attributesCopy fontAttributes];

  v7 = [v5 fontDescriptorByAddingAttributes:fontAttributes];
  v8 = qword_5A558;
  qword_5A558 = v7;

  v9 = qword_5A558;

  return v9;
}

@end