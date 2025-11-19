@interface AKUIAlertControllerImageProvider
+ (id)imageForUIAlertController;
@end

@implementation AKUIAlertControllerImageProvider

+ (id)imageForUIAlertController
{
  v8[2] = a1;
  v8[1] = a2;
  v4 = objc_alloc(MEMORY[0x277CBEA90]);
  v5 = +[AKAlertImageURLProvider url];
  v8[0] = [v4 initWithContentsOfURL:?];
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v7 = [MEMORY[0x277D755B8] imageWithData:{v8[0], v2}];
  v6 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v6;
}

@end