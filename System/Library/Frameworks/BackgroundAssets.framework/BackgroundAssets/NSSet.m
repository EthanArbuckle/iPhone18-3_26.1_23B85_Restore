@interface NSSet
+ (id)_baassets_collectionClasses;
+ (uint64_t)_baassets_propertyListClasses;
@end

@implementation NSSet

+ (uint64_t)_baassets_propertyListClasses
{
  objc_opt_self();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
}

+ (id)_baassets_collectionClasses
{
  v5[10] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v5[8] = objc_opt_class();
  v5[9] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:10];
  v2 = [v0 setWithArray:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end