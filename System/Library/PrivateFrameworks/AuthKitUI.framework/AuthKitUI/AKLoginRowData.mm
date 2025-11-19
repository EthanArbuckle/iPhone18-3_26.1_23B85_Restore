@interface AKLoginRowData
- (AKLoginRowData)initWithIconImage:(id)a3 paneTitleText:(id)a4 titleText:(id)a5 detailText:(id)a6 authenticationType:(int64_t)a7;
@end

@implementation AKLoginRowData

- (AKLoginRowData)initWithIconImage:(id)a3 paneTitleText:(id)a4 titleText:(id)a5 detailText:(id)a6 authenticationType:(int64_t)a7
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = 0;
  objc_storeStrong(&v16, a6);
  v15 = a7;
  v7 = v20;
  v20 = 0;
  v14.receiver = v7;
  v14.super_class = AKLoginRowData;
  v13 = [(AKLoginRowData *)&v14 init];
  v20 = v13;
  objc_storeStrong(&v20, v13);
  if (v13)
  {
    objc_storeStrong(v20 + 1, location[0]);
    objc_storeStrong(v20 + 2, v18);
    objc_storeStrong(v20 + 3, v17);
    objc_storeStrong(v20 + 4, v16);
    *(v20 + 5) = v15;
    v21 = MEMORY[0x277D82BE0](v20);
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v21;
}

@end