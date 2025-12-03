@interface BAAppAnalyticsAdditionalData
+ (NSString)editionKindKey;
+ (NSString)supportsUnifiedProductPageKey;
+ (id)dataWithDictionary:(id)dictionary;
- (BAAppAnalyticsAdditionalData)init;
- (BAAppAnalyticsAdditionalData)initWithSupportsUnifiedProductPage:(BOOL)page editionKind:(id)kind;
- (NSString)editionKind;
- (id)dictionary;
@end

@implementation BAAppAnalyticsAdditionalData

- (NSString)editionKind
{
  if (*(self + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind + 8))
  {
    v2 = *(self + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind);
    v3 = *(self + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind + 8);

    v4 = sub_1E1770();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (NSString)supportsUnifiedProductPageKey
{
  v2 = sub_1E1770();

  return v2;
}

+ (NSString)editionKindKey
{
  v2 = sub_1E1770();

  return v2;
}

- (BAAppAnalyticsAdditionalData)initWithSupportsUnifiedProductPage:(BOOL)page editionKind:(id)kind
{
  if (kind)
  {
    v6 = sub_1E1780();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *(self + OBJC_IVAR___BAAppAnalyticsAdditionalData_supportsUnifiedProductPage) = page;
  v8 = (self + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind);
  *v8 = v6;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for AppAnalyticsAdditionalData();
  return [(BAAppAnalyticsAdditionalData *)&v10 init];
}

+ (id)dataWithDictionary:(id)dictionary
{
  v3 = sub_1E1730();
  v4 = _s13BookAnalytics03AppB14AdditionalDataC4data10dictionaryACSgSDySSypG_tFZ_0(v3);

  return v4;
}

- (id)dictionary
{
  selfCopy = self;
  sub_31F2C();

  v3.super.isa = sub_1E1720().super.isa;

  return v3.super.isa;
}

- (BAAppAnalyticsAdditionalData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end