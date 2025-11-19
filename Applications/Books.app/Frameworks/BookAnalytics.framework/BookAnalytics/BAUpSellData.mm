@interface BAUpSellData
- (BAUpSellData)init;
- (BAUpSellData)initWithLocation:(int64_t)a3 variant:(int64_t)a4 variantVersion:(id)a5;
- (NSString)variantVersion;
@end

@implementation BAUpSellData

- (NSString)variantVersion
{
  v2 = *(self + OBJC_IVAR___BAUpSellData_variantVersion);
  v3 = *(self + OBJC_IVAR___BAUpSellData_variantVersion + 8);

  v4 = sub_1E1770();

  return v4;
}

- (BAUpSellData)initWithLocation:(int64_t)a3 variant:(int64_t)a4 variantVersion:(id)a5
{
  v8 = sub_1E1780();
  *(self + OBJC_IVAR___BAUpSellData_location) = a3;
  *(self + OBJC_IVAR___BAUpSellData_variant) = a4;
  v9 = (self + OBJC_IVAR___BAUpSellData_variantVersion);
  *v9 = v8;
  v9[1] = v10;
  v12.receiver = self;
  v12.super_class = type metadata accessor for BridgedUpSellData();
  return [(BAUpSellData *)&v12 init];
}

- (BAUpSellData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end