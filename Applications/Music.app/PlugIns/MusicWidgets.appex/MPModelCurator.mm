@interface MPModelCurator
- (NSString)shortDescription;
@end

@implementation MPModelCurator

- (NSString)shortDescription
{
  selfCopy = self;
  v3 = [(MPModelCurator *)selfCopy name:0x22203A656D614ELL];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1005728D8();
    v7 = v6;
  }

  else
  {
    v7 = 0xEF726F7461727543;
    v5 = 0x206E776F6E6B6E55;
  }

  v11._countAndFlagsBits = v5;
  v11._object = v7;
  sub_100572A98(v11);

  v12._countAndFlagsBits = 34;
  v12._object = 0xE100000000000000;
  sub_100572A98(v12);

  v8 = sub_100572898();

  return v8;
}

@end