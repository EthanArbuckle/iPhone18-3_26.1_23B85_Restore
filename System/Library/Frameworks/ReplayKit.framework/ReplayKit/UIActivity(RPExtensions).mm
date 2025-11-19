@interface UIActivity(RPExtensions)
+ (void)streamActivitiesWithCompletion:()RPExtensions;
@end

@implementation UIActivity(RPExtensions)

+ (void)streamActivitiesWithCompletion:()RPExtensions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCA9C8];
  v10 = *MEMORY[0x277CCA0F8];
  v11[0] = @"com.apple.share-services";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__UIActivity_RPExtensions__streamActivitiesWithCompletion___block_invoke;
  v8[3] = &unk_278B61DC0;
  v9 = v3;
  v6 = v3;
  [v4 extensionsWithMatchingAttributes:v5 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

@end