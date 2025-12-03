@interface ENPreferencesStore
+ (id)defaultPreferenceStore;
+ (id)pathnameForStoreFilename:(id)filename;
+ (id)preferenceStoreWithSecurityApplicationGroupIdentifier:(id)identifier;
- (ENPreferencesStore)init;
- (ENPreferencesStore)initWithStoreFilename:(id)filename;
- (ENPreferencesStore)initWithURL:(id)l;
- (id)decodedObjectForKey:(id)key;
- (id)objectForKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)load;
- (void)removeAllItems;
- (void)save;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation ENPreferencesStore

- (void)load
{
  v3 = MEMORY[0x277CBEA90];
  pathname = [(ENPreferencesStore *)self pathname];
  v15 = 0;
  v5 = [v3 dataWithContentsOfFile:pathname options:0 error:&v15];
  v6 = v15;

  if (!v5)
  {
    v8 = v6;
    goto LABEL_6;
  }

  v13 = 0;
  v14 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:1 format:&v14 error:&v13];
  v8 = v13;

  if (!v7 || v14 != 100)
  {
    pathname2 = [(ENPreferencesStore *)self pathname];
    NSLog(&cfstr_Enpreferencess_3.isa, pathname2, v8);

LABEL_6:
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    pathname3 = [(ENPreferencesStore *)self pathname];
    [defaultManager removeItemAtPath:pathname3 error:0];

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ENPreferencesStore *)selfCopy setStore:v7];
  objc_sync_exit(selfCopy);
}

- (void)removeAllItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  store = [(ENPreferencesStore *)selfCopy store];
  [store removeAllObjects];

  objc_sync_exit(selfCopy);

  [(ENPreferencesStore *)selfCopy save];
}

- (void)save
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  store = [(ENPreferencesStore *)selfCopy store];
  objc_sync_exit(selfCopy);

  v11 = 0;
  v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:store format:100 options:0 error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    pathname = [(ENPreferencesStore *)selfCopy pathname];
    v10 = v6;
    v8 = [v4 writeToFile:pathname options:1 error:&v10];
    v9 = v10;

    if ((v8 & 1) == 0)
    {
      NSLog(&cfstr_Enpreferencess_2.isa, v9);
    }

    v6 = v9;
  }

  else
  {
    NSLog(&cfstr_Enpreferencess_1.isa, v5);
  }
}

- (void)encodeObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objectCopy];
  if (v7)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = [(ENPreferencesStore *)selfCopy store];
    [store setObject:v7 forKey:keyCopy];

    objc_sync_exit(selfCopy);
    [(ENPreferencesStore *)selfCopy save];
  }
}

- (id)decodedObjectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  store = [(ENPreferencesStore *)selfCopy store];
  v7 = [store objectForKey:keyCopy];

  objc_sync_exit(selfCopy);
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  store = [(ENPreferencesStore *)selfCopy store];
  if (objectCopy)
  {
    [store setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    [store removeObjectForKey:keyCopy];
  }

  objc_sync_exit(selfCopy);
  [(ENPreferencesStore *)selfCopy save];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  store = [(ENPreferencesStore *)selfCopy store];
  v7 = [store objectForKey:keyCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (ENPreferencesStore)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Must call -initWithStoreFilename:"];

  return 0;
}

- (ENPreferencesStore)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = ENPreferencesStore;
  v5 = [(ENPreferencesStore *)&v8 init];
  if (v5)
  {
    path = [lCopy path];
    [(ENPreferencesStore *)v5 setPathname:path];

    [(ENPreferencesStore *)v5 load];
  }

  return v5;
}

- (ENPreferencesStore)initWithStoreFilename:(id)filename
{
  filenameCopy = filename;
  v8.receiver = self;
  v8.super_class = ENPreferencesStore;
  v5 = [(ENPreferencesStore *)&v8 init];
  if (v5)
  {
    v6 = [objc_opt_class() pathnameForStoreFilename:filenameCopy];
    [(ENPreferencesStore *)v5 setPathname:v6];

    [(ENPreferencesStore *)v5 load];
  }

  return v5;
}

+ (id)defaultPreferenceStore
{
  v2 = [[self alloc] initWithStoreFilename:@"com.evernote.evernote-sdk-ios.plist"];

  return v2;
}

+ (id)preferenceStoreWithSecurityApplicationGroupIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCAA00];
  identifierCopy = identifier;
  defaultManager = [v4 defaultManager];
  v7 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:identifierCopy];

  v8 = [self alloc];
  v9 = [v7 URLByAppendingPathComponent:@"com.evernote.evernote-sdk-ios.plist"];
  v10 = [v8 initWithURL:v9];

  return v10;
}

+ (id)pathnameForStoreFilename:(id)filename
{
  filenameCopy = filename;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  appGroupIdentifier = [MEMORY[0x277CFC538] appGroupIdentifier];
  v6 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:appGroupIdentifier];
  path = [v6 path];

  if (!path)
  {
    v8 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    firstObject = [v8 firstObject];
    path = [firstObject stringByAppendingPathComponent:@"Preferences"];
  }

  v10 = [path stringByAppendingPathComponent:filenameCopy];

  return v10;
}

@end