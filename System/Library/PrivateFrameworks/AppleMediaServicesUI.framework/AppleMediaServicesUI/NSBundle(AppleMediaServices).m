@interface NSBundle(AppleMediaServices)
- (id)icon;
@end

@implementation NSBundle(AppleMediaServices)

- (id)icon
{
  v2 = [a1 infoDictionary];
  v3 = [v2 objectForKeyedSubscript:@"CFBundleIconName"];

  if (!v3)
  {
    v4 = [a1 infoDictionary];
    v3 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E130]];
  }

  v5 = [MEMORY[0x1E69DCAB8] imageNamed:v3 inBundle:a1 compatibleWithTraitCollection:0];

  return v5;
}

@end