@interface CNSeedCardProvider
+ (id)dataForCountryCode:(id)a3;
+ (id)dataForEveryCountry;
+ (id)nearestAvailableDataForCountryCode:(id)a3;
@end

@implementation CNSeedCardProvider

+ (id)nearestAvailableDataForCountryCode:(id)a3
{
  v4 = a3;
  if ((*(*MEMORY[0x1E6996570] + 16))() && ([a1 dataForCountryCode:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = [a1 dataForCountryCode:@"us"];
  }

  return v6;
}

+ (id)dataForCountryCode:(id)a3
{
  v4 = a3;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [@"AppleSeedCard-" stringByAppendingString:v4];
    v6 = [a1 bundleWithSeedCards];
    v7 = [v6 URLForResource:v5 withExtension:@"vcf" subdirectory:@"AppleSeedCards"];

    if (v7)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)dataForEveryCountry
{
  v2 = [a1 bundleWithSeedCards];
  v3 = [v2 URLsForResourcesWithExtension:@"vcf" subdirectory:@"AppleSeedCards"];

  v4 = [v3 _cn_lazy];
  v5 = [v4 compactMap];
  v6 = (v5)[2](v5, &__block_literal_global_11);

  return v6;
}

@end