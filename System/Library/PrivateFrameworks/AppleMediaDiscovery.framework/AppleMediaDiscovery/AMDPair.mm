@interface AMDPair
- (AMDPair)initWith:(id)with and:(id)and;
@end

@implementation AMDPair

- (AMDPair)initWith:(id)with and:(id)and
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, with);
  v7 = 0;
  objc_storeStrong(&v7, and);
  [(AMDPair *)selfCopy setFirstElement:location[0]];
  [(AMDPair *)selfCopy setSecondElement:v7];
  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

@end