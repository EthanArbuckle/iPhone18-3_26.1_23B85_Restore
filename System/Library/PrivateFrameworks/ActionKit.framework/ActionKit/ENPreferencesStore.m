@interface ENPreferencesStore
+ (id)defaultPreferenceStore;
+ (id)pathnameForStoreFilename:(id)a3;
+ (id)preferenceStoreWithSecurityApplicationGroupIdentifier:(id)a3;
- (ENPreferencesStore)init;
- (ENPreferencesStore)initWithStoreFilename:(id)a3;
- (ENPreferencesStore)initWithURL:(id)a3;
- (id)decodedObjectForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)load;
- (void)removeAllItems;
- (void)save;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation ENPreferencesStore

- (void)load
{
  v3 = MEMORY[0x277CBEA90];
  v4 = [(ENPreferencesStore *)self pathname];
  v15 = 0;
  v5 = [v3 dataWithContentsOfFile:v4 options:0 error:&v15];
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
    v9 = [(ENPreferencesStore *)self pathname];
    NSLog(&cfstr_Enpreferencess_3.isa, v9, v8);

LABEL_6:
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [(ENPreferencesStore *)self pathname];
    [v10 removeItemAtPath:v11 error:0];

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v12 = self;
  objc_sync_enter(v12);
  [(ENPreferencesStore *)v12 setStore:v7];
  objc_sync_exit(v12);
}

- (void)removeAllItems
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ENPreferencesStore *)v2 store];
  [v3 removeAllObjects];

  objc_sync_exit(v2);

  [(ENPreferencesStore *)v2 save];
}

- (void)save
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ENPreferencesStore *)v2 store];
  objc_sync_exit(v2);

  v11 = 0;
  v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:100 options:0 error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = [(ENPreferencesStore *)v2 pathname];
    v10 = v6;
    v8 = [v4 writeToFile:v7 options:1 error:&v10];
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

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10];
  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(ENPreferencesStore *)v8 store];
    [v9 setObject:v7 forKey:v6];

    objc_sync_exit(v8);
    [(ENPreferencesStore *)v8 save];
  }
}

- (id)decodedObjectForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ENPreferencesStore *)v5 store];
  v7 = [v6 objectForKey:v4];

  objc_sync_exit(v5);
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

- (void)setObject:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(ENPreferencesStore *)v7 store];
  if (v9)
  {
    [v8 setObject:v9 forKey:v6];
  }

  else
  {
    [v8 removeObjectForKey:v6];
  }

  objc_sync_exit(v7);
  [(ENPreferencesStore *)v7 save];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ENPreferencesStore *)v5 store];
  v7 = [v6 objectForKey:v4];

  objc_sync_exit(v5);

  return v7;
}

- (ENPreferencesStore)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Must call -initWithStoreFilename:"];

  return 0;
}

- (ENPreferencesStore)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ENPreferencesStore;
  v5 = [(ENPreferencesStore *)&v8 init];
  if (v5)
  {
    v6 = [v4 path];
    [(ENPreferencesStore *)v5 setPathname:v6];

    [(ENPreferencesStore *)v5 load];
  }

  return v5;
}

- (ENPreferencesStore)initWithStoreFilename:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ENPreferencesStore;
  v5 = [(ENPreferencesStore *)&v8 init];
  if (v5)
  {
    v6 = [objc_opt_class() pathnameForStoreFilename:v4];
    [(ENPreferencesStore *)v5 setPathname:v6];

    [(ENPreferencesStore *)v5 load];
  }

  return v5;
}

+ (id)defaultPreferenceStore
{
  v2 = [[a1 alloc] initWithStoreFilename:@"com.evernote.evernote-sdk-ios.plist"];

  return v2;
}

+ (id)preferenceStoreWithSecurityApplicationGroupIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [v6 containerURLForSecurityApplicationGroupIdentifier:v5];

  v8 = [a1 alloc];
  v9 = [v7 URLByAppendingPathComponent:@"com.evernote.evernote-sdk-ios.plist"];
  v10 = [v8 initWithURL:v9];

  return v10;
}

+ (id)pathnameForStoreFilename:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [MEMORY[0x277CFC538] appGroupIdentifier];
  v6 = [v4 containerURLForSecurityApplicationGroupIdentifier:v5];
  v7 = [v6 path];

  if (!v7)
  {
    v8 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v9 = [v8 firstObject];
    v7 = [v9 stringByAppendingPathComponent:@"Preferences"];
  }

  v10 = [v7 stringByAppendingPathComponent:v3];

  return v10;
}

@end