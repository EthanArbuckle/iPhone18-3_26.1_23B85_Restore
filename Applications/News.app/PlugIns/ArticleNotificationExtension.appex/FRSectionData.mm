@interface FRSectionData
- (FRSectionData)initWithName:(id)name;
@end

@implementation FRSectionData

- (FRSectionData)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = FRSectionData;
  v6 = [(FRSectionData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sectionName, name);
  }

  return v7;
}

@end