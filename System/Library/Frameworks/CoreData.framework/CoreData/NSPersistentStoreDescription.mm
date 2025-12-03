@interface NSPersistentStoreDescription
+ (NSPersistentStoreDescription)persistentStoreDescriptionWithURL:(NSURL *)URL;
+ (id)inMemoryPersistentStoreDescription;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReadOnly;
- (BOOL)shouldAddStoreAsynchronously;
- (BOOL)shouldInferMappingModelAutomatically;
- (BOOL)shouldInvokeCompletionHandlerConcurrently;
- (BOOL)shouldMigrateStoreAutomatically;
- (BOOL)usesPersistentHistoryTracking;
- (NSDictionary)options;
- (NSDictionary)sqlitePragmas;
- (NSPersistentCloudKitContainerOptions)cloudKitContainerOptions;
- (NSPersistentStoreDescription)init;
- (NSPersistentStoreDescription)initWithURL:(NSURL *)url;
- (NSTimeInterval)timeout;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mirroringDelegate;
- (id)mirroringOptions;
- (unint64_t)hash;
- (void)dealloc;
- (void)setOption:(NSObject *)option forKey:(NSString *)key;
- (void)setOption:(id)option forMirroringKey:(id)key;
- (void)setTimeout:(NSTimeInterval)timeout;
- (void)setValue:(NSObject *)value forPragmaNamed:(NSString *)name;
@end

@implementation NSPersistentStoreDescription

- (BOOL)shouldAddStoreAsynchronously
{
  v2 = [(NSMutableDictionary *)self->_options objectForKey:@"NSAddStoreAsynchronouslyOption"];
  if (v2)
  {

    LOBYTE(v2) = [v2 BOOLValue];
  }

  return v2;
}

- (BOOL)shouldInvokeCompletionHandlerConcurrently
{
  v2 = [(NSMutableDictionary *)self->_options objectForKey:@"NSInvokeCompletionHandlerConcurrently"];
  if (v2)
  {

    LOBYTE(v2) = [v2 BOOLValue];
  }

  return v2;
}

- (id)mirroringOptions
{
  result = [(NSMutableDictionary *)self->_options objectForKey:@"NSPersistentStoreMirroringOptionsKey"];
  if (!result)
  {
    v3 = MEMORY[0x1E695DF20];

    return [v3 dictionary];
  }

  return result;
}

- (NSPersistentCloudKitContainerOptions)cloudKitContainerOptions
{
  options = [(NSPersistentStoreDescription *)self options];

  return [(NSDictionary *)options objectForKey:@"NSPersistentCloudKitContainerOptionsKey"];
}

- (NSDictionary)options
{
  v2 = [(NSMutableDictionary *)self->_options copy];

  return v2;
}

- (void)dealloc
{
  type = self->_type;
  if (type)
  {
  }

  configuration = self->_configuration;
  if (configuration)
  {
  }

  url = self->_url;
  if (url)
  {
  }

  options = self->_options;
  if (options)
  {
  }

  v7.receiver = self;
  v7.super_class = NSPersistentStoreDescription;
  [(NSPersistentStoreDescription *)&v7 dealloc];
}

- (NSDictionary)sqlitePragmas
{
  result = [(NSMutableDictionary *)self->_options objectForKey:@"NSSQLitePragmasOption"];
  if (!result)
  {
    return MEMORY[0x1E695E0F8];
  }

  return result;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSPersistentStoreDescription;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (type: %@, url: %@)", -[NSPersistentStoreDescription description](&v6, sel_description), -[NSPersistentStoreDescription type](self, "type"), -[NSPersistentStoreDescription URL](self, "URL")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (NSPersistentStoreDescription)init
{
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/dev/null" isDirectory:0];

  return [(NSPersistentStoreDescription *)self initWithURL:v3];
}

- (BOOL)isReadOnly
{
  v2 = [(NSMutableDictionary *)self->_options objectForKey:@"NSReadOnlyPersistentStoreOption"];
  if (v2)
  {

    LOBYTE(v2) = [v2 BOOLValue];
  }

  return v2;
}

- (id)mirroringDelegate
{
  mirroringOptions = [(NSPersistentStoreDescription *)self mirroringOptions];

  return [mirroringOptions objectForKey:@"NSPersistentStoreMirroringDelegateOptionKey"];
}

- (BOOL)shouldMigrateStoreAutomatically
{
  v2 = [(NSMutableDictionary *)self->_options objectForKey:@"NSMigratePersistentStoresAutomaticallyOption"];
  if (v2)
  {

    LOBYTE(v2) = [v2 BOOLValue];
  }

  return v2;
}

+ (NSPersistentStoreDescription)persistentStoreDescriptionWithURL:(NSURL *)URL
{
  v3 = [[self alloc] initWithURL:URL];

  return v3;
}

+ (id)inMemoryPersistentStoreDescription
{
  v2 = objc_alloc_init(self);
  [v2 setType:@"SQLite"];
  [v2 setURL:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:isDirectory:", @"/dev/null", 0)}];

  return v2;
}

- (void)setOption:(NSObject *)option forKey:(NSString *)key
{
  options = self->_options;
  if (option)
  {
    [(NSMutableDictionary *)options setObject:option forKey:key];
  }

  else
  {
    [(NSMutableDictionary *)options removeObjectForKey:key];
  }
}

- (NSTimeInterval)timeout
{
  v2 = [(NSMutableDictionary *)self->_options objectForKey:@"NSPersistentStoreTimeoutOption"];
  if (!v2)
  {
    return 240.0;
  }

  [v2 doubleValue];
  return result;
}

- (void)setTimeout:(NSTimeInterval)timeout
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:timeout];

  [(NSPersistentStoreDescription *)self setOption:v4 forKey:@"NSPersistentStoreTimeoutOption"];
}

- (void)setValue:(NSObject *)value forPragmaNamed:(NSString *)name
{
  v7 = [(NSDictionary *)[(NSPersistentStoreDescription *)self sqlitePragmas] mutableCopy];
  if (value)
  {
    [v7 setObject:value forKey:name];
  }

  else
  {
    [v7 removeObjectForKey:name];
  }

  -[NSPersistentStoreDescription setOption:forKey:](self, "setOption:forKey:", [v7 copy], @"NSSQLitePragmasOption");
}

- (BOOL)shouldInferMappingModelAutomatically
{
  v2 = [(NSMutableDictionary *)self->_options objectForKey:@"NSInferMappingModelAutomaticallyOption"];
  if (v2)
  {

    LOBYTE(v2) = [v2 BOOLValue];
  }

  return v2;
}

- (NSPersistentStoreDescription)initWithURL:(NSURL *)url
{
  v9[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSPersistentStoreDescription;
  v4 = [(NSPersistentStoreDescription *)&v7 init];
  if (v4)
  {
    v4->_url = [(NSURL *)url copy];
    v4->_type = @"SQLite";
    v8[0] = @"NSInferMappingModelAutomaticallyOption";
    v8[1] = @"NSMigratePersistentStoresAutomaticallyOption";
    v9[0] = MEMORY[0x1E695E118];
    v9[1] = MEMORY[0x1E695E118];
    v4->_options = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:{2), "mutableCopy"}];
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (unint64_t)hash
{
  v2 = standardizedURL([(NSPersistentStoreDescription *)self URL]);

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = standardizedURL([(NSPersistentStoreDescription *)self URL]);
      v6 = standardizedURL([equal URL]);
      if (v5 == v6 || (v7 = [v5 isEqual:v6]) != 0)
      {
        type = [(NSPersistentStoreDescription *)self type];
        if (type == [equal type] || (v7 = -[NSString isEqualToString:](-[NSPersistentStoreDescription type](self, "type"), "isEqualToString:", objc_msgSend(equal, "type"))) != 0)
        {
          configuration = [(NSPersistentStoreDescription *)self configuration];
          if (configuration == [equal configuration] || (v7 = -[NSString isEqual:](-[NSPersistentStoreDescription configuration](self, "configuration"), "isEqual:", objc_msgSend(equal, "configuration"))) != 0)
          {
            options = [(NSPersistentStoreDescription *)self options];
            options2 = [equal options];

            LOBYTE(v7) = [(NSDictionary *)options isEqual:options2];
          }
        }
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithURL:self->_url];

  v4[3] = [(NSString *)self->_configuration copy];
  v4[2] = [(NSString *)self->_type copy];

  v4[1] = [(NSMutableDictionary *)self->_options mutableCopy];
  return v4;
}

- (void)setOption:(id)option forMirroringKey:(id)key
{
  v7 = [-[NSMutableDictionary objectForKey:](self->_options objectForKey:{@"NSPersistentStoreMirroringOptionsKey", "mutableCopy"}];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (option)
  {
    [v7 setObject:option forKey:key];
  }

  else
  {
    [v7 removeObjectForKey:key];
  }

  v8 = [v7 copy];
  [(NSMutableDictionary *)self->_options setObject:v8 forKey:@"NSPersistentStoreMirroringOptionsKey"];
}

- (BOOL)usesPersistentHistoryTracking
{
  v2 = [(NSMutableDictionary *)self->_options objectForKey:@"NSPersistentHistoryTrackingKey"];
  if (v2)
  {
    v3 = v2;
    if ([v2 isNSDictionary])
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      LODWORD(v2) = [v3 isNSNumber];
      if (v2)
      {

        LOBYTE(v2) = [v3 BOOLValue];
      }
    }
  }

  return v2;
}

@end