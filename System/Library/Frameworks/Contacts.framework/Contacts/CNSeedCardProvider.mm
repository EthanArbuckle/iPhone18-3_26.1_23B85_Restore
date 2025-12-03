@interface CNSeedCardProvider
+ (id)dataForCountryCode:(id)code;
+ (id)dataForEveryCountry;
+ (id)nearestAvailableDataForCountryCode:(id)code;
@end

@implementation CNSeedCardProvider

+ (id)nearestAvailableDataForCountryCode:(id)code
{
  codeCopy = code;
  if ((*(*MEMORY[0x1E6996570] + 16))() && ([self dataForCountryCode:codeCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = [self dataForCountryCode:@"us"];
  }

  return v6;
}

+ (id)dataForCountryCode:(id)code
{
  codeCopy = code;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [@"AppleSeedCard-" stringByAppendingString:codeCopy];
    bundleWithSeedCards = [self bundleWithSeedCards];
    v7 = [bundleWithSeedCards URLForResource:v5 withExtension:@"vcf" subdirectory:@"AppleSeedCards"];

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
  bundleWithSeedCards = [self bundleWithSeedCards];
  v3 = [bundleWithSeedCards URLsForResourcesWithExtension:@"vcf" subdirectory:@"AppleSeedCards"];

  _cn_lazy = [v3 _cn_lazy];
  compactMap = [_cn_lazy compactMap];
  v6 = (compactMap)[2](compactMap, &__block_literal_global_11);

  return v6;
}

@end