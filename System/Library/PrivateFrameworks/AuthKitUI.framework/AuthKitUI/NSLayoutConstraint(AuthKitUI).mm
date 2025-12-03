@interface NSLayoutConstraint(AuthKitUI)
+ (id)ak_constraintsForView:()AuthKitUI equalToLayoutGuide:;
+ (id)ak_constraintsForView:()AuthKitUI equalToView:;
@end

@implementation NSLayoutConstraint(AuthKitUI)

+ (id)ak_constraintsForView:()AuthKitUI equalToView:
{
  v21[4] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  centerXAnchor = [location[0] centerXAnchor];
  centerXAnchor2 = [v19 centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:?];
  v21[0] = v16;
  widthAnchor = [location[0] widthAnchor];
  widthAnchor2 = [v19 widthAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:?];
  v21[1] = v13;
  centerYAnchor = [location[0] centerYAnchor];
  centerYAnchor2 = [v19 centerYAnchor];
  v10 = [centerYAnchor constraintEqualToAnchor:?];
  v21[2] = v10;
  heightAnchor = [location[0] heightAnchor];
  heightAnchor2 = [v19 heightAnchor];
  v6 = [heightAnchor constraintEqualToAnchor:?];
  v21[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centerXAnchor);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)ak_constraintsForView:()AuthKitUI equalToLayoutGuide:
{
  v21[4] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  centerXAnchor = [location[0] centerXAnchor];
  centerXAnchor2 = [v19 centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:?];
  v21[0] = v16;
  widthAnchor = [location[0] widthAnchor];
  widthAnchor2 = [v19 widthAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:?];
  v21[1] = v13;
  centerYAnchor = [location[0] centerYAnchor];
  centerYAnchor2 = [v19 centerYAnchor];
  v10 = [centerYAnchor constraintEqualToAnchor:?];
  v21[2] = v10;
  heightAnchor = [location[0] heightAnchor];
  heightAnchor2 = [v19 heightAnchor];
  v6 = [heightAnchor constraintEqualToAnchor:?];
  v21[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centerXAnchor);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

@end