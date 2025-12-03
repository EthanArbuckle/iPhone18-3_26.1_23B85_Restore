@interface NSBundle(AppleMediaServices)
- (id)icon;
@end

@implementation NSBundle(AppleMediaServices)

- (id)icon
{
  infoDictionary = [self infoDictionary];
  v3 = [infoDictionary objectForKeyedSubscript:@"CFBundleIconName"];

  if (!v3)
  {
    infoDictionary2 = [self infoDictionary];
    v3 = [infoDictionary2 objectForKeyedSubscript:*MEMORY[0x1E695E130]];
  }

  v5 = [MEMORY[0x1E69DCAB8] imageNamed:v3 inBundle:self compatibleWithTraitCollection:0];

  return v5;
}

@end