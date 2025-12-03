@interface MPModelMovie
- (NSString)shortDescription;
@end

@implementation MPModelMovie

- (NSString)shortDescription
{
  selfCopy = self;
  v3 = [(MPModelMovie *)selfCopy title:0x22203A656D614ELL];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1004DD43C();
    v7 = v6;
  }

  else
  {
    v7 = 0xEE006569766F4D20;
    v5 = 0x64656C7469746E55;
  }

  v11._countAndFlagsBits = v5;
  v11._object = v7;
  sub_1004DD5FC(v11);

  v12._countAndFlagsBits = 34;
  v12._object = 0xE100000000000000;
  sub_1004DD5FC(v12);

  v8 = sub_1004DD3FC();

  return v8;
}

@end