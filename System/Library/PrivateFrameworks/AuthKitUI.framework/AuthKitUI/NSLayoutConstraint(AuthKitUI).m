@interface NSLayoutConstraint(AuthKitUI)
+ (id)ak_constraintsForView:()AuthKitUI equalToLayoutGuide:;
+ (id)ak_constraintsForView:()AuthKitUI equalToView:;
@end

@implementation NSLayoutConstraint(AuthKitUI)

+ (id)ak_constraintsForView:()AuthKitUI equalToView:
{
  v21[4] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = [location[0] centerXAnchor];
  v17 = [v19 centerXAnchor];
  v16 = [v18 constraintEqualToAnchor:?];
  v21[0] = v16;
  v15 = [location[0] widthAnchor];
  v14 = [v19 widthAnchor];
  v13 = [v15 constraintEqualToAnchor:?];
  v21[1] = v13;
  v12 = [location[0] centerYAnchor];
  v11 = [v19 centerYAnchor];
  v10 = [v12 constraintEqualToAnchor:?];
  v21[2] = v10;
  v9 = [location[0] heightAnchor];
  v8 = [v19 heightAnchor];
  v6 = [v9 constraintEqualToAnchor:?];
  v21[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)ak_constraintsForView:()AuthKitUI equalToLayoutGuide:
{
  v21[4] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = [location[0] centerXAnchor];
  v17 = [v19 centerXAnchor];
  v16 = [v18 constraintEqualToAnchor:?];
  v21[0] = v16;
  v15 = [location[0] widthAnchor];
  v14 = [v19 widthAnchor];
  v13 = [v15 constraintEqualToAnchor:?];
  v21[1] = v13;
  v12 = [location[0] centerYAnchor];
  v11 = [v19 centerYAnchor];
  v10 = [v12 constraintEqualToAnchor:?];
  v21[2] = v10;
  v9 = [location[0] heightAnchor];
  v8 = [v19 heightAnchor];
  v6 = [v9 constraintEqualToAnchor:?];
  v21[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

@end