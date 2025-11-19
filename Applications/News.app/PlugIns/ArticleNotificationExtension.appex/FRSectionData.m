@interface FRSectionData
- (FRSectionData)initWithName:(id)a3;
@end

@implementation FRSectionData

- (FRSectionData)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FRSectionData;
  v6 = [(FRSectionData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sectionName, a3);
  }

  return v7;
}

@end