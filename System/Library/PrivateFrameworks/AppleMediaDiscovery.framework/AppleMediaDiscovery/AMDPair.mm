@interface AMDPair
- (AMDPair)initWith:(id)a3 and:(id)a4;
@end

@implementation AMDPair

- (AMDPair)initWith:(id)a3 and:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [(AMDPair *)v9 setFirstElement:location[0]];
  [(AMDPair *)v9 setSecondElement:v7];
  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

@end