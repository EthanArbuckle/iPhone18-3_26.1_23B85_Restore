@interface _MFTableCellAttributesCache
+ (id)sharedInstance;
- (_MFTableCellAttributesCache)init;
- (id)cachedAttributesForIdentifier:(id)identifier constructionBlock:(id)block;
- (void)dealloc;
@end

@implementation _MFTableCellAttributesCache

+ (id)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sSharedInstance)
  {
    v3 = objc_alloc_init(_MFTableCellAttributesCache);
    v4 = sSharedInstance;
    sSharedInstance = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = sSharedInstance;

  return v5;
}

- (_MFTableCellAttributesCache)init
{
  v7.receiver = self;
  v7.super_class = _MFTableCellAttributesCache;
  v2 = [(_MFTableCellAttributesCache *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    attributesCache = v2->_attributesCache;
    v2->_attributesCache = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__didReceiveFontSizeChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _MFTableCellAttributesCache;
  [(_MFTableCellAttributesCache *)&v4 dealloc];
}

- (id)cachedAttributesForIdentifier:(id)identifier constructionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v8 = [(NSCache *)self->_attributesCache objectForKey:identifierCopy];
  if (!v8)
  {
    v8 = blockCopy[2](blockCopy);
    [(NSCache *)self->_attributesCache setObject:v8 forKey:identifierCopy];
  }

  return v8;
}

@end