@interface MLCStrings
+ (id)tempDirectoryForANEModels;
@end

@implementation MLCStrings

+ (id)tempDirectoryForANEModels
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSTemporaryDirectory();
  v4 = [v2 stringWithFormat:@"%@models/", v3];

  return v4;
}

@end