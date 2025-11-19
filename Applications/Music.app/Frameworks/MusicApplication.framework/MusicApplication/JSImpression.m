@interface JSImpression
- (NSString)debugDescription;
@end

@implementation JSImpression

- (NSString)debugDescription
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v2 = v9.receiver;
  v3 = [(JSImpression *)&v9 debugDescription];
  v4 = sub_AB92A0();
  v6 = v5;

  v10 = v4;
  v11 = v6;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  sub_AB94A0(v13);
  v14._countAndFlagsBits = sub_AB9000();
  sub_AB94A0(v14);

  v7 = sub_AB9260();

  return v7;
}

@end