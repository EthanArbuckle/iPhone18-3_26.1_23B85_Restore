@interface AMDAppSegmentInfo
- (AMDAppSegmentInfo)initWithAppIdentifier:(id)a3 andSegments:(id)a4;
- (BOOL)isEqualToApp:(id)a3;
@end

@implementation AMDAppSegmentInfo

- (AMDAppSegmentInfo)initWithAppIdentifier:(id)a3 andSegments:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AMDAppSegmentInfo;
  v11 = [(AMDAppSegmentInfo *)&v8 init];
  objc_storeStrong(&v11, v11);
  [(AMDAppSegmentInfo *)v11 setAppIdentifier:location[0]];
  [(AMDAppSegmentInfo *)v11 setSegments:v9];
  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (BOOL)isEqualToApp:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AMDAppSegmentInfo *)v12 appIdentifier];
  v5 = [location[0] appIdentifier];
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if (([(NSString *)v4 isEqual:?]& 1) != 0)
  {
    v10 = [(AMDAppSegmentInfo *)v12 segments];
    v9 = 1;
    v8 = [location[0] segments];
    v7 = 1;
    v6 = [(NSSet *)v10 isEqual:?];
  }

  v13 = v6 & 1;
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

@end