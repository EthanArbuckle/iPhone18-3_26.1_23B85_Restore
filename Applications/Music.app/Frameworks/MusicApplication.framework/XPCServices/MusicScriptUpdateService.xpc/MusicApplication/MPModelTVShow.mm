@interface MPModelTVShow
- (NSString)shortDescription;
@end

@implementation MPModelTVShow

- (NSString)shortDescription
{
  selfCopy = self;
  v3 = [(MPModelTVShow *)selfCopy title:0x22203A656C746954];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1004BBE64();
    v7 = v6;
  }

  else
  {
    v7 = 0xED0000776F685320;
    v5 = 0x64656C7469746E55;
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