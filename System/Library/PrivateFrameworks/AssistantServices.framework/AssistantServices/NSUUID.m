@interface NSUUID
+ (id)ad_createV5UUIDWithNamespace:(id)a3;
@end

@implementation NSUUID

+ (id)ad_createV5UUIDWithNamespace:(id)a3
{
  v3 = a3;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  sub_10001BB8C(&c, v3);
  v8 = &v15;
  v4 = v14;
  if (v14)
  {
    do
    {
      sub_10001BB8C(&c, v4);
      v5 = v8++;
      v4 = *v5;
    }

    while (*v5);
  }

  CC_SHA1_Final(md, &c);
  v11 = v11 & 0xF | 0x50;
  v12 = v12 & 0x3F | 0x80;
  v6 = [[NSUUID alloc] initWithUUIDBytes:md];

  return v6;
}

@end