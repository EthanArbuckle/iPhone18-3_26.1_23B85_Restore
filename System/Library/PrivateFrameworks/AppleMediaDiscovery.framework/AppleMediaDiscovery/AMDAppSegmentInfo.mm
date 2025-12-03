@interface AMDAppSegmentInfo
- (AMDAppSegmentInfo)initWithAppIdentifier:(id)identifier andSegments:(id)segments;
- (BOOL)isEqualToApp:(id)app;
@end

@implementation AMDAppSegmentInfo

- (AMDAppSegmentInfo)initWithAppIdentifier:(id)identifier andSegments:(id)segments
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v9 = 0;
  objc_storeStrong(&v9, segments);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AMDAppSegmentInfo;
  selfCopy = [(AMDAppSegmentInfo *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDAppSegmentInfo *)selfCopy setAppIdentifier:location[0]];
  [(AMDAppSegmentInfo *)selfCopy setSegments:v9];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (BOOL)isEqualToApp:(id)app
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, app);
  appIdentifier = [(AMDAppSegmentInfo *)selfCopy appIdentifier];
  appIdentifier2 = [location[0] appIdentifier];
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if (([(NSString *)appIdentifier isEqual:?]& 1) != 0)
  {
    segments = [(AMDAppSegmentInfo *)selfCopy segments];
    v9 = 1;
    segments2 = [location[0] segments];
    v7 = 1;
    v6 = [(NSSet *)segments isEqual:?];
  }

  v13 = v6 & 1;
  if (v7)
  {
    MEMORY[0x277D82BD8](segments2);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](segments);
  }

  MEMORY[0x277D82BD8](appIdentifier2);
  MEMORY[0x277D82BD8](appIdentifier);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

@end