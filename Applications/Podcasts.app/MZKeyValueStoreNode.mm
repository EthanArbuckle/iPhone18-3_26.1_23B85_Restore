@interface MZKeyValueStoreNode
+ (BOOL)isServerRevisionNewerThanClient:(id)client;
+ (id)assetIDForKey:(id)key withPrefix:(id)prefix;
+ (id)keyValueStoreDataCurrentRevision;
+ (id)keyValueStoreDataFirstRevision;
+ (id)keyWithPrefix:(id)prefix assetID:(id)d;
+ (id)keysWithPrefix:(id)prefix assetIDs:(id)ds;
+ (id)serverRevisionNewerThanClientKeys;
+ (void)setServerRevisionNewerThanClient:(id)client;
- (BOOL)hasData;
- (MZKeyValueStoreNode)init;
- (NSArray)arrayValue;
- (NSData)dataValue;
- (NSDate)dateValue;
- (NSDictionary)dictionaryValue;
- (NSNumber)numberValue;
- (NSString)stringValue;
- (id)debugDescription;
- (id)description;
- (id)objectValue;
- (id)objectValueMatchingClass:(Class)class;
- (void)setObjectValue:(id)value;
@end

@implementation MZKeyValueStoreNode

+ (id)serverRevisionNewerThanClientKeys
{
  if (qword_100583B78 != -1)
  {
    sub_1003B2BAC();
  }

  v3 = qword_100583B70;

  return v3;
}

+ (void)setServerRevisionNewerThanClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  serverRevisionNewerThanClientKeys = [selfCopy serverRevisionNewerThanClientKeys];
  v6 = [NSNumber numberWithBool:1];
  [serverRevisionNewerThanClientKeys setObject:v6 forKey:clientCopy];

  objc_sync_exit(selfCopy);
}

+ (BOOL)isServerRevisionNewerThanClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  serverRevisionNewerThanClientKeys = [selfCopy serverRevisionNewerThanClientKeys];
  v7 = [serverRevisionNewerThanClientKeys objectForKey:clientCopy];
  v8 = v7 != 0;

  objc_sync_exit(selfCopy);
  return v8;
}

+ (id)keyValueStoreDataCurrentRevision
{
  v2 = qword_100583B80;
  if (!qword_100583B80)
  {
    v3 = [[NSNumber alloc] initWithInt:2];
    v4 = qword_100583B80;
    qword_100583B80 = v3;

    v2 = qword_100583B80;
  }

  return v2;
}

+ (id)keyValueStoreDataFirstRevision
{
  v2 = qword_100583B88;
  if (!qword_100583B88)
  {
    v3 = [[NSNumber alloc] initWithInt:1];
    v4 = qword_100583B88;
    qword_100583B88 = v3;

    v2 = qword_100583B88;
  }

  return v2;
}

+ (id)keyWithPrefix:(id)prefix assetID:(id)d
{
  prefixCopy = prefix;
  dCopy = d;
  if (dCopy)
  {
    [NSString stringWithFormat:@"%@%@", prefixCopy, dCopy];
  }

  else
  {
    [NSString stringWithFormat:@"%@", prefixCopy, v9];
  }
  v7 = ;
  if ([objc_opt_class() isServerRevisionNewerThanClient:v7])
  {

    v7 = 0;
  }

  return v7;
}

+ (id)keysWithPrefix:(id)prefix assetIDs:(id)ds
{
  prefixCopy = prefix;
  dsCopy = ds;
  if ([dsCopy count])
  {
    v7 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [objc_opt_class() keyWithPrefix:prefixCopy assetID:{*(*(&v15 + 1) + 8 * i), v15}];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)assetIDForKey:(id)key withPrefix:(id)prefix
{
  keyCopy = key;
  v6 = [keyCopy substringFromIndex:{objc_msgSend(prefix, "length")}];

  return v6;
}

- (MZKeyValueStoreNode)init
{
  v3.receiver = self;
  v3.super_class = MZKeyValueStoreNode;
  result = [(MZKeyValueStoreNode *)&v3 init];
  if (result)
  {
    result->_wrapperRevision = 1;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(MZKeyValueStoreNode *)self key];
  version = [(MZKeyValueStoreNode *)self version];
  value = [(MZKeyValueStoreNode *)self value];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p> {_key:%@ _version:%@; _value:[%d bytes]}", v3, self, v4, version, [value length]);;

  return v7;
}

- (id)debugDescription
{
  value = [(MZKeyValueStoreNode *)self value];
  v4 = [NSPropertyListSerialization propertyListWithData:value options:0 format:0 error:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 description], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    hexString = v5;
  }

  else
  {
    v7 = [NSString alloc];
    value2 = [(MZKeyValueStoreNode *)self value];
    hexString = [v7 initWithData:value2 encoding:4];

    if (!hexString)
    {
      value3 = [(MZKeyValueStoreNode *)self value];
      hexString = [value3 hexString];
    }
  }

  v10 = objc_opt_class();
  v11 = [(MZKeyValueStoreNode *)self key];
  version = [(MZKeyValueStoreNode *)self version];
  v13 = [NSString stringWithFormat:@"<%@: %p> {_key:%@ _version:%@; _value: %@}", v10, self, v11, version, hexString];;

  return v13;
}

- (BOOL)hasData
{
  value = [(MZKeyValueStoreNode *)self value];
  v3 = [value length] != 0;

  return v3;
}

- (id)objectValueMatchingClass:(Class)class
{
  objectValue = [(MZKeyValueStoreNode *)self objectValue];
  if (objc_opt_isKindOfClass())
  {
    v4 = objectValue;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)stringValue
{
  v3 = objc_opt_class();

  return [(MZKeyValueStoreNode *)self objectValueMatchingClass:v3];
}

- (NSNumber)numberValue
{
  v3 = objc_opt_class();

  return [(MZKeyValueStoreNode *)self objectValueMatchingClass:v3];
}

- (NSDate)dateValue
{
  v3 = objc_opt_class();

  return [(MZKeyValueStoreNode *)self objectValueMatchingClass:v3];
}

- (NSData)dataValue
{
  v3 = objc_opt_class();

  return [(MZKeyValueStoreNode *)self objectValueMatchingClass:v3];
}

- (NSArray)arrayValue
{
  v3 = objc_opt_class();

  return [(MZKeyValueStoreNode *)self objectValueMatchingClass:v3];
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_class();

  return [(MZKeyValueStoreNode *)self objectValueMatchingClass:v3];
}

- (id)objectValue
{
  value = [(MZKeyValueStoreNode *)self value];
  v4 = [NSPropertyListSerialization propertyListWithData:value options:0 format:0 error:0];

  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    keyValueStoreDataCurrentRevision = [objc_opt_class() keyValueStoreDataCurrentRevision];
    v8 = [v6 objectForKey:off_100571700];
    intValue = [v8 intValue];
    if (intValue <= [keyValueStoreDataCurrentRevision intValue])
    {
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue = [v8 stringValue];
          v5 = [v6 objectForKey:stringValue];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_9;
          }

          v5 = [v6 objectForKey:v8];
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v10 = objc_opt_class();
      v11 = [(MZKeyValueStoreNode *)self key];
      [v10 setServerRevisionNewerThanClient:v11];
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (void)setObjectValue:(id)value
{
  valueCopy = value;
  keyValueStoreDataCurrentRevision = [objc_opt_class() keyValueStoreDataCurrentRevision];
  if ([(MZKeyValueStoreNode *)self wrapperRevision])
  {
    v5 = keyValueStoreDataCurrentRevision;
  }

  else
  {
    keyValueStoreDataFirstRevision = [objc_opt_class() keyValueStoreDataFirstRevision];

    v5 = keyValueStoreDataFirstRevision;
  }

  v7 = off_100571700;
  v12 = v5;
  stringValue = [v5 stringValue];
  v9 = [NSDictionary dictionaryWithObjectsAndKeys:v12, v7, valueCopy, stringValue, 0];

  v10 = [NSPropertyListSerialization dataWithPropertyList:v9 format:kMZKeyValueStorePlistFormatNetworkData options:0 error:0];
  [(MZKeyValueStoreNode *)self setValue:v10];
}

@end