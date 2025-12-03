@interface CNAddressFormats
+ (id)addressFormatForCountryCode:(id)code;
+ (id)countryCodeByGlobalDefaultsLookup;
+ (id)countryCodeByLocaleLookup;
+ (id)defaultKeyboardSettingsDictionary;
+ (id)makeSupportedCountries;
+ (id)supportedCountries;
+ (id)usaStateAbbreviations;
+ (id)usaStateNames;
@end

@implementation CNAddressFormats

+ (id)usaStateNames
{
  if (usaStateNames_onceToken != -1)
  {
    +[CNAddressFormats usaStateNames];
  }

  v3 = usaStateNames_sStateNames;

  return v3;
}

uint64_t __33__CNAddressFormats_usaStateNames__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"Alabama", @"Alaska", @"Arizona", @"Arkansas", @"California", @"Colorado", @"Connecticut", @"Delaware", @"District of Columbia", @"Florida", @"Georgia", @"Hawaii", @"Idaho", @"Illinois", @"Indiana", @"Iowa", @"Kansas", @"Kentucky", @"Louisiana", @"Maine", @"Maryland", @"Massachusetts", @"Michigan", @"Minnesota", @"Mississippi", @"Missouri", @"Montana", @"Nebraska", @"Nevada", @"New Hampshire", @"New Jersey", @"New Mexico", @"New York", @"North Carolina", @"North Dakota", @"Ohio", @"Oklahoma", @"Oregon", @"Pennsylvania", @"Rhode Island", @"South Carolina", @"South Dakota", @"Tennessee", @"Texas", @"Utah", @"Vermont", @"Virginia", @"Washington", @"West Virginia", @"Wisconsin", @"Wyoming", 0}];
  v1 = usaStateNames_sStateNames;
  usaStateNames_sStateNames = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)supportedCountries
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CNAddressFormats_supportedCountries__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportedCountries_cn_once_token_0 != -1)
  {
    dispatch_once(&supportedCountries_cn_once_token_0, block);
  }

  v2 = supportedCountries_cn_once_object_0;

  return v2;
}

void __38__CNAddressFormats_supportedCountries__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) makeSupportedCountries];
  v1 = [v3 copy];
  v2 = supportedCountries_cn_once_object_0;
  supportedCountries_cn_once_object_0 = v1;
}

+ (id)makeSupportedCountries
{
  addressFormats = [self addressFormats];
  allKeys = [addressFormats allKeys];
  v4 = [allKeys mutableCopy];

  [v4 removeObject:@"defaultKbdSettings"];
  [v4 removeObject:@"yu"];
  v5 = [v4 _cn_map:&__block_literal_global_153];
  v6 = [v5 sortedArrayUsingComparator:CNCountryInformationISOCountryCodeAscendingComparator];

  return v6;
}

+ (id)defaultKeyboardSettingsDictionary
{
  addressFormats = [self addressFormats];
  v3 = [addressFormats objectForKeyedSubscript:@"defaultKbdSettings"];

  return v3;
}

+ (id)addressFormatForCountryCode:(id)code
{
  codeCopy = code;
  addressFormats = [self addressFormats];
  v6 = [addressFormats objectForKey:codeCopy];

  return v6;
}

+ (id)countryCodeByLocaleLookup
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (localeIdentifier)
  {
    v4 = [localeIdentifier componentsSeparatedByString:@"_"];
    if ([v4 count] < 2)
    {
      lowercaseString = 0;
    }

    else
    {
      v5 = [v4 objectAtIndex:1];
      lowercaseString = [v5 lowercaseString];
    }
  }

  else
  {
    lowercaseString = 0;
  }

  return lowercaseString;
}

+ (id)countryCodeByGlobalDefaultsLookup
{
  v2 = CFPreferencesCopyValue(@"Country", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
  lowercaseString = [v2 lowercaseString];

  return lowercaseString;
}

+ (id)usaStateAbbreviations
{
  if (usaStateAbbreviations_onceToken != -1)
  {
    +[CNAddressFormats usaStateAbbreviations];
  }

  v3 = usaStateAbbreviations_sStateAbbreviations;

  return v3;
}

uint64_t __41__CNAddressFormats_usaStateAbbreviations__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"AL", @"AK", @"AZ", @"AR", @"CA", @"CO", @"CT", @"DE", @"DC", @"FL", @"GA", @"HI", @"ID", @"IL", @"IN", @"IA", @"KS", @"KY", @"LA", @"ME", @"MD", @"MA", @"MI", @"MN", @"MS", @"MO", @"MT", @"NE", @"NV", @"NH", @"NJ", @"NM", @"NY", @"NC", @"ND", @"OH", @"OK", @"OR", @"PA", @"RI", @"SC", @"SD", @"TN", @"TX", @"UT", @"VT", @"VI", @"WA", @"WV", @"WI", @"WY", 0}];
  v1 = usaStateAbbreviations_sStateAbbreviations;
  usaStateAbbreviations_sStateAbbreviations = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end