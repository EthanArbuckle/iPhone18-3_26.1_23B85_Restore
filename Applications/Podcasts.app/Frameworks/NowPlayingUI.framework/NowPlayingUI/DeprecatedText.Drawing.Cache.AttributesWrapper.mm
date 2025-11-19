@interface DeprecatedText.Drawing.Cache.AttributesWrapper
- (int64_t)hash;
@end

@implementation DeprecatedText.Drawing.Cache.AttributesWrapper

- (int64_t)hash
{
  sub_14545C();
  v3 = *&self->attributes[16];
  v8[0] = *self->attributes;
  v8[1] = v3;
  v4 = *&self->attributes[48];
  v8[2] = *&self->attributes[32];
  v8[3] = v4;

  sub_9674(v8, v7);
  sub_950A4();
  sub_96D0(v8);
  v5 = sub_1454AC();

  return v5;
}

@end