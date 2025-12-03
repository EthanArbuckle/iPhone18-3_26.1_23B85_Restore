@interface NSString
- (NSData)sk_sha1Hash;
- (NSNumber)lib_numberValue;
- (id)lib_accountDSIDValue;
- (id)lib_digestMD5;
- (id)lib_stringByAppendingPathComponents:(id)components;
- (id)lib_stringByCopyingUTF8StringWithLength:(unint64_t)length;
- (id)lib_stringByLimitingToLength:(unint64_t)length addElipsis:(BOOL)elipsis;
- (id)lib_stringSantiziedAndTruncatedToLength:(unint64_t)length;
- (id)lib_volumePath;
- (unint64_t)tcr_unsignedLongLong;
@end

@implementation NSString

- (unint64_t)tcr_unsignedLongLong
{
  v4 = 0;
  v2 = [[NSScanner alloc] initWithString:self];
  [v2 scanUnsignedLongLong:&v4];

  return v4;
}

- (NSNumber)lib_numberValue
{
  v3 = objc_alloc_init(NSNumberFormatter);
  [v3 setNumberStyle:1];
  v4 = [v3 numberFromString:self];

  return v4;
}

- (id)lib_accountDSIDValue
{
  v2 = strtoull([(NSString *)self UTF8String], 0, 10);

  return [NSNumber numberWithUnsignedLongLong:v2];
}

- (id)lib_digestMD5
{
  v2 = [(NSString *)self dataUsingEncoding:4];
  lib_digestMD5 = [v2 lib_digestMD5];

  return lib_digestMD5;
}

- (id)lib_stringByAppendingPathComponents:(id)components
{
  componentsCopy = components;
  selfCopy = self;
  v6 = objc_autoreleasePoolPush();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = componentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      v12 = selfCopy;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        selfCopy = [(NSString *)v12 stringByAppendingPathComponent:*(*(&v14 + 1) + 8 * v11), v14];

        v11 = v11 + 1;
        v12 = selfCopy;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v6);

  return selfCopy;
}

- (id)lib_stringByCopyingUTF8StringWithLength:(unint64_t)length
{
  v5 = malloc_type_malloc(length + 1, 0x100004077774924uLL);
  if (v5)
  {
    v6 = v5;
    v9 = 0;
    if ([(NSString *)self getBytes:v5 maxLength:length usedLength:&v9 encoding:4 options:0 range:0 remainingRange:[(NSString *)self length], 0])
    {
      v6[v9] = 0;
      v7 = [[NSString alloc] initWithUTF8String:v6];
    }

    else
    {
      v7 = &stru_10039AA00;
    }

    free(v6);
  }

  else
  {
    v7 = &stru_10039AA00;
  }

  return v7;
}

- (id)lib_stringByLimitingToLength:(unint64_t)length addElipsis:(BOOL)elipsis
{
  elipsisCopy = elipsis;
  if ([(NSString *)self length]<= length)
  {
    selfCopy = self;
  }

  else
  {
    if (elipsisCopy)
    {
      v7 = [(NSString *)self substringToIndex:length];
      v8 = [NSString stringWithFormat:@"%@...", v7];

      goto LABEL_7;
    }

    selfCopy = [(NSString *)self substringToIndex:length];
  }

  v8 = selfCopy;
LABEL_7:

  return v8;
}

- (id)lib_stringSantiziedAndTruncatedToLength:(unint64_t)length
{
  v5 = +[NSMutableCharacterSet alphanumericCharacterSet];
  v6 = [NSCharacterSet characterSetWithCharactersInString:@".()-"];
  [v5 formUnionWithCharacterSet:v6];

  invertedSet = [v5 invertedSet];
  v8 = [(NSString *)self componentsSeparatedByCharactersInSet:invertedSet];
  v9 = [v8 componentsJoinedByString:&stru_10039AA00];

  v10 = [v9 lib_stringByLimitingToLength:length addElipsis:1];

  return v10;
}

- (id)lib_volumePath
{
  if ([(NSString *)self isAbsolutePath])
  {
    v3 = +[NSFileManager defaultManager];
    selfCopy = self;
    if (![(NSString *)selfCopy isEqualToString:@"/"])
    {
      while (([v3 fileExistsAtPath:selfCopy] & 1) == 0)
      {
        stringByDeletingLastPathComponent = [(NSString *)selfCopy stringByDeletingLastPathComponent];

        selfCopy = stringByDeletingLastPathComponent;
        if ([(NSString *)stringByDeletingLastPathComponent isEqualToString:@"/"])
        {
          goto LABEL_7;
        }
      }
    }

    stringByDeletingLastPathComponent = selfCopy;
LABEL_7:
    bzero(&v8, 0x878uLL);
    if (statfs([(NSString *)stringByDeletingLastPathComponent fileSystemRepresentation], &v8))
    {
      v6 = 0;
    }

    else
    {
      v6 = [v3 stringWithFileSystemRepresentation:v8.f_mntonname length:strlen(v8.f_mntonname)];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSData)sk_sha1Hash
{
  selfCopy = self;
  v3 = sub_100128AA0();

  return v3;
}

@end