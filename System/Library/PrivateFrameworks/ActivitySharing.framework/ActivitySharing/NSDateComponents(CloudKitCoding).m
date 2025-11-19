@interface NSDateComponents(CloudKitCoding)
+ (id)as_dateComponentsWithCodable:()CloudKitCoding;
- (ASCodableCloudKitDateComponents)as_codableDateComponents;
@end

@implementation NSDateComponents(CloudKitCoding)

- (ASCodableCloudKitDateComponents)as_codableDateComponents
{
  v2 = objc_alloc_init(ASCodableCloudKitDateComponents);
  -[ASCodableCloudKitDateComponents setYear:](v2, "setYear:", [a1 year]);
  -[ASCodableCloudKitDateComponents setMonth:](v2, "setMonth:", [a1 month]);
  -[ASCodableCloudKitDateComponents setDay:](v2, "setDay:", [a1 day]);
  -[ASCodableCloudKitDateComponents setEra:](v2, "setEra:", [a1 era]);

  return v2;
}

+ (id)as_dateComponentsWithCodable:()CloudKitCoding
{
  v3 = MEMORY[0x277CBEAB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setYear:{objc_msgSend(v4, "year")}];
  [v5 setMonth:{objc_msgSend(v4, "month")}];
  [v5 setDay:{objc_msgSend(v4, "day")}];
  v6 = [v4 era];

  [v5 setEra:v6];

  return v5;
}

@end