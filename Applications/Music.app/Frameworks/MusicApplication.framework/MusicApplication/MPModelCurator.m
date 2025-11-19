@interface MPModelCurator
- (NSString)shortDescription;
@end

@implementation MPModelCurator

- (NSString)shortDescription
{
  v2 = self;
  v3 = [(MPModelCurator *)v2 name:0x22203A656D614ELL];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v7 = 0xEF726F7461727543;
    v5 = 0x206E776F6E6B6E55;
  }

  v11._countAndFlagsBits = v5;
  v11._object = v7;
  sub_AB94A0(v11);

  v12._countAndFlagsBits = 34;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);

  v8 = sub_AB9260();

  return v8;
}

@end