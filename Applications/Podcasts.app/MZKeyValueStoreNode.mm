@interface MZKeyValueStoreNode
+ (BOOL)isServerRevisionNewerThanClient:(id)a3;
+ (id)assetIDForKey:(id)a3 withPrefix:(id)a4;
+ (id)keyValueStoreDataCurrentRevision;
+ (id)keyValueStoreDataFirstRevision;
+ (id)keyWithPrefix:(id)a3 assetID:(id)a4;
+ (id)keysWithPrefix:(id)a3 assetIDs:(id)a4;
+ (id)serverRevisionNewerThanClientKeys;
+ (void)setServerRevisionNewerThanClient:(id)a3;
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
- (id)objectValueMatchingClass:(Class)a3;
- (void)setObjectValue:(id)a3;
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

+ (void)setServerRevisionNewerThanClient:(id)a3
{
  v7 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = [v4 serverRevisionNewerThanClientKeys];
  v6 = [NSNumber numberWithBool:1];
  [v5 setObject:v6 forKey:v7];

  objc_sync_exit(v4);
}

+ (BOOL)isServerRevisionNewerThanClient:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = [v5 serverRevisionNewerThanClientKeys];
  v7 = [v6 objectForKey:v4];
  v8 = v7 != 0;

  objc_sync_exit(v5);
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

+ (id)keyWithPrefix:(id)a3 assetID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    [NSString stringWithFormat:@"%@%@", v5, v6];
  }

  else
  {
    [NSString stringWithFormat:@"%@", v5, v9];
  }
  v7 = ;
  if ([objc_opt_class() isServerRevisionNewerThanClient:v7])
  {

    v7 = 0;
  }

  return v7;
}

+ (id)keysWithPrefix:(id)a3 assetIDs:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
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

          v13 = [objc_opt_class() keyWithPrefix:v5 assetID:{*(*(&v15 + 1) + 8 * i), v15}];
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

+ (id)assetIDForKey:(id)a3 withPrefix:(id)a4
{
  v5 = a3;
  v6 = [v5 substringFromIndex:{objc_msgSend(a4, "length")}];

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
  v5 = [(MZKeyValueStoreNode *)self version];
  v6 = [(MZKeyValueStoreNode *)self value];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p> {_key:%@ _version:%@; _value:[%d bytes]}", v3, self, v4, v5, [v6 length]);;

  return v7;
}

- (id)debugDescription
{
  v3 = [(MZKeyValueStoreNode *)self value];
  v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 description], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v7 = [NSString alloc];
    v8 = [(MZKeyValueStoreNode *)self value];
    v6 = [v7 initWithData:v8 encoding:4];

    if (!v6)
    {
      v9 = [(MZKeyValueStoreNode *)self value];
      v6 = [v9 hexString];
    }
  }

  v10 = objc_opt_class();
  v11 = [(MZKeyValueStoreNode *)self key];
  v12 = [(MZKeyValueStoreNode *)self version];
  v13 = [NSString stringWithFormat:@"<%@: %p> {_key:%@ _version:%@; _value: %@}", v10, self, v11, v12, v6];;

  return v13;
}

- (BOOL)hasData
{
  v2 = [(MZKeyValueStoreNode *)self value];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)objectValueMatchingClass:(Class)a3
{
  v3 = [(MZKeyValueStoreNode *)self objectValue];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v3 = [(MZKeyValueStoreNode *)self value];
  v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:0];

  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [objc_opt_class() keyValueStoreDataCurrentRevision];
    v8 = [v6 objectForKey:off_100571700];
    v9 = [v8 intValue];
    if (v9 <= [v7 intValue])
    {
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v8 stringValue];
          v5 = [v6 objectForKey:v12];
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

- (void)setObjectValue:(id)a3
{
  v4 = a3;
  v11 = [objc_opt_class() keyValueStoreDataCurrentRevision];
  if ([(MZKeyValueStoreNode *)self wrapperRevision])
  {
    v5 = v11;
  }

  else
  {
    v6 = [objc_opt_class() keyValueStoreDataFirstRevision];

    v5 = v6;
  }

  v7 = off_100571700;
  v12 = v5;
  v8 = [v5 stringValue];
  v9 = [NSDictionary dictionaryWithObjectsAndKeys:v12, v7, v4, v8, 0];

  v10 = [NSPropertyListSerialization dataWithPropertyList:v9 format:kMZKeyValueStorePlistFormatNetworkData options:0 error:0];
  [(MZKeyValueStoreNode *)self setValue:v10];
}

@end