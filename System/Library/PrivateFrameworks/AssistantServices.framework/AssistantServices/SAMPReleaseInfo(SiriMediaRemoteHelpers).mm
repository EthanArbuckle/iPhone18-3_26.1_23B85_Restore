@interface SAMPReleaseInfo(SiriMediaRemoteHelpers)
+ (id)_af_releaseInfoWithReleaseDate:()SiriMediaRemoteHelpers;
@end

@implementation SAMPReleaseInfo(SiriMediaRemoteHelpers)

+ (id)_af_releaseInfoWithReleaseDate:()SiriMediaRemoteHelpers
{
  if (a3)
  {
    v4 = MEMORY[0x1E69C7758];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    name = [defaultTimeZone name];
    [v6 setTimeZoneId:name];

    [v6 setDate:v5];
    v9 = objc_alloc_init(self);
    [v9 setReleaseDate:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end