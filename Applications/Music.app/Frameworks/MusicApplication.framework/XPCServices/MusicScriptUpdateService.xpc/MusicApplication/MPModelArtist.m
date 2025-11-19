@interface MPModelArtist
- (NSString)shortDescription;
@end

@implementation MPModelArtist

- (NSString)shortDescription
{
  v2 = self;
  v3 = [(MPModelArtist *)v2 name:0x22203A656D614ELL];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1004BBE64();
    v7 = v6;
  }

  else
  {
    v7 = 0xEE00747369747241;
    v5 = 0x206E776F6E6B6E55;
  }

  v11._countAndFlagsBits = v5;
  v11._object = v7;
  sub_1004BC024(v11);

  v12._countAndFlagsBits = 34;
  v12._object = 0xE100000000000000;
  sub_1004BC024(v12);

  v8 = sub_1004BBE24();

  return v8;
}

@end