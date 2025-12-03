@interface NSData
+ (id)sha1StringForNSData:(id)data;
- (NSString)sha1String;
@end

@implementation NSData

+ (id)sha1StringForNSData:(id)data
{
  dataCopy = data;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = &c;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_92F8;
  v8[3] = &unk_2CA30;
  v8[4] = v9;
  [dataCopy enumerateByteRangesUsingBlock:v8];
  CC_SHA1_Final(md, &c);
  v4 = [NSMutableString stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02X", md[i]];
  }

  v6 = [v4 copy];

  _Block_object_dispose(v9, 8);

  return v6;
}

- (NSString)sha1String
{
  v3 = objc_opt_class();

  return [v3 sha1StringForNSData:self];
}

@end