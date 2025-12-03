@interface AVAssetCache
- (AVAssetCache)initWithURL:(id)l;
- (BOOL)isDefunct;
- (BOOL)isPlayableOffline;
- (NSArray)mediaSelectionOptionsInMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup;
- (id)URL;
- (id)_init;
- (id)allKeys;
- (id)lastModifiedDateOfEntryForKey:(id)key;
- (id)mediaPresentationLanguagesForMediaSelectionGroup:(id)group;
- (id)mediaPresentationSettingsForMediaSelectionGroup:(id)group;
- (int64_t)currentSize;
- (int64_t)maxEntrySize;
- (int64_t)maxSize;
- (int64_t)sizeOfEntryForKey:(id)key;
- (void)removeEntryForKey:(id)key;
@end

@implementation AVAssetCache

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AVAssetCache;
  return [(AVAssetCache *)&v3 init];
}

- (AVAssetCache)initWithURL:(id)l
{
  v4 = [AVManagedAssetCache alloc];

  return [(AVManagedAssetCache *)v4 initWithURL:l];
}

- (NSArray)mediaSelectionOptionsInMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  v6 = MEMORY[0x1E695DEC8];

  return [v6 array];
}

- (id)mediaPresentationSettingsForMediaSelectionGroup:(id)group
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  v6 = MEMORY[0x1E695DF20];

  return [v6 dictionary];
}

- (id)mediaPresentationLanguagesForMediaSelectionGroup:(id)group
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  v6 = MEMORY[0x1E695DEC8];

  return [v6 array];
}

- (BOOL)isPlayableOffline
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (int64_t)maxSize
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (int64_t)maxEntrySize
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (int64_t)currentSize
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (id)URL
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (void)removeEntryForKey:(id)key
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

- (int64_t)sizeOfEntryForKey:(id)key
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (id)lastModifiedDateOfEntryForKey:(id)key
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (id)allKeys
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (BOOL)isDefunct
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

@end