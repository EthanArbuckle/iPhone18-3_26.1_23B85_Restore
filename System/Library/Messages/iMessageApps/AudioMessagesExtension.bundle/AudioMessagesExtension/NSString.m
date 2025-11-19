@interface NSString
- (NSString)rc_reversedString;
- (NSString)rc_stringFromRealPath;
@end

@implementation NSString

- (NSString)rc_reversedString
{
  v3 = objc_opt_new();
  v4 = [(NSString *)self length];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_192B0;
  v7[3] = &unk_6D5E8;
  v5 = v3;
  v8 = v5;
  [(NSString *)self enumerateSubstringsInRange:0 options:v4 usingBlock:258, v7];

  return v5;
}

- (NSString)rc_stringFromRealPath
{
  v2 = realpath_DARWIN_EXTSN([(NSString *)self fileSystemRepresentation], 0);
  if (v2)
  {
    v3 = v2;
    v4 = [NSString stringWithUTF8String:v2];
    free(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end