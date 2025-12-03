@interface NSValidationErrorLocalizationPolicy
- (NSValidationErrorLocalizationPolicy)initWithURL:(id)l;
- (id)_cachedObjectForKey:(id)key value:(void *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizationDictionary;
- (id)localizedEntityNameForEntity:(id)entity;
- (id)localizedModelStringForKey:(id)key;
- (id)localizedPropertyNameForProperty:(id)property;
- (uint64_t)_localizedPropertyNameForProperty:(void *)property entity:;
- (void)_ensureFullLocalizationDictionaryIsLoaded;
- (void)dealloc;
- (void)setLocalizationDictionary:(id)dictionary;
@end

@implementation NSValidationErrorLocalizationPolicy

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSValidationErrorLocalizationPolicy;
  [(NSValidationErrorLocalizationPolicy *)&v3 dealloc];
}

- (NSValidationErrorLocalizationPolicy)initWithURL:(id)l
{
  v6.receiver = self;
  v6.super_class = NSValidationErrorLocalizationPolicy;
  v4 = [(NSValidationErrorLocalizationPolicy *)&v6 init];
  if (v4)
  {
    v4->_url = l;
    v4->_localizationBundle = 0;
    v4->_modelStringsFileName = 0;
    v4->_localizationDictionary = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v4[1] = [(NSURL *)self->_url copy];
    v4[2] = self->_localizationBundle;
    v4[3] = [(NSString *)self->_modelStringsFileName copy];
    v4[4] = 0;
  }

  return v4;
}

- (void)_ensureFullLocalizationDictionaryIsLoaded
{
  if (!self->_hasSetLocalizationDictionary)
  {
    if (!self->_localizationDictionary)
    {
      self->_localizationDictionary = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    }

    localizationBundle = self->_localizationBundle;
    if (localizationBundle)
    {
      goto LABEL_5;
    }

    url = self->_url;
    if (url)
    {
      stringByDeletingLastPathComponent = [(NSString *)[(NSURL *)url path] stringByDeletingLastPathComponent];
      if ([[(NSString *)stringByDeletingLastPathComponent lastPathComponent] isEqualToString:@"Contents"])
      {
        stringByDeletingLastPathComponent = [(NSString *)stringByDeletingLastPathComponent stringByDeletingLastPathComponent];
      }

      self->_localizationBundle = [MEMORY[0x1E696AAE8] bundleWithPath:stringByDeletingLastPathComponent];
      lastPathComponent = [(NSString *)[(NSURL *)self->_url path] lastPathComponent];
      self->_modelStringsFileName = lastPathComponent;
      stringByDeletingPathExtension = [(NSString *)lastPathComponent stringByDeletingPathExtension];
      self->_modelStringsFileName = stringByDeletingPathExtension;
      v10 = [(NSString *)stringByDeletingPathExtension stringByAppendingString:@"Model"];
      self->_modelStringsFileName = v10;
      v11 = v10;
      localizationBundle = self->_localizationBundle;
      if (localizationBundle)
      {
LABEL_5:
        v4 = [(NSBundle *)localizationBundle pathForResource:self->_modelStringsFileName ofType:@"strings"];
        if (v4)
        {
          v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
          if (v5)
          {
            [(NSDictionary *)self->_localizationDictionary addEntriesFromDictionary:v5];
          }
        }
      }
    }

    self->_hasSetLocalizationDictionary = 1;
  }
}

- (id)_cachedObjectForKey:(id)key value:(void *)value
{
  [(NSValidationErrorLocalizationPolicy *)self _ensureFullLocalizationDictionaryIsLoaded];
  result = [(NSDictionary *)self->_localizationDictionary objectForKey:key];
  if (!result)
  {
    if (self->_modelStringsFileName)
    {
      v8 = [(NSBundle *)self->_localizationBundle localizedStringForKey:key value:value table:?];
    }

    else
    {
      v8 = 0;
    }

    result = 0;
    if (v8)
    {
      value = v8;
    }

    if (value)
    {
      if (value != key)
      {
        [(NSDictionary *)self->_localizationDictionary setObject:value forKey:key];
        return value;
      }
    }
  }

  return result;
}

- (id)localizationDictionary
{
  v2 = [(NSDictionary *)self->_localizationDictionary copy];

  return v2;
}

- (void)setLocalizationDictionary:(id)dictionary
{
  localizationDictionary = self->_localizationDictionary;
  if (localizationDictionary != dictionary)
  {
    if (localizationDictionary)
    {
      [(NSDictionary *)localizationDictionary addEntriesFromDictionary:?];
    }

    else
    {
      self->_localizationDictionary = [dictionary mutableCopy];
    }
  }

  self->_hasSetLocalizationDictionary = 1;
}

- (id)localizedEntityNameForEntity:(id)entity
{
  name = [entity name];
  v5 = [@"Entity/" stringByAppendingString:name];

  return [(NSValidationErrorLocalizationPolicy *)self _cachedObjectForKey:v5 value:name];
}

- (uint64_t)_localizedPropertyNameForProperty:(void *)property entity:
{
  v3 = 0;
  if (self && property)
  {
    name = [a2 name];
    v8 = [@"Property/" mutableCopy];
    [v8 appendString:name];
    [v8 appendString:@"/Entity/"];
    [v8 appendString:{objc_msgSend(property, "name")}];
    v3 = [self _cachedObjectForKey:v8 value:0];
    if (!v3)
    {
      v3 = -[NSValidationErrorLocalizationPolicy _localizedPropertyNameForProperty:entity:](self, a2, [property superentity]);
    }
  }

  return v3;
}

- (id)localizedPropertyNameForProperty:(id)property
{
  result = -[NSValidationErrorLocalizationPolicy _localizedPropertyNameForProperty:entity:](self, property, [property entity]);
  if (!result)
  {
    name = [property name];
    v7 = [@"Property/" stringByAppendingString:name];

    return [(NSValidationErrorLocalizationPolicy *)self _cachedObjectForKey:v7 value:name];
  }

  return result;
}

- (id)localizedModelStringForKey:(id)key
{
  v5 = [@"ErrorString/" stringByAppendingString:?];

  return [(NSValidationErrorLocalizationPolicy *)self _cachedObjectForKey:v5 value:key];
}

@end