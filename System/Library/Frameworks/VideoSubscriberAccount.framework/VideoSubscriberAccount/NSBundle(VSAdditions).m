@interface NSBundle(VSAdditions)
+ (id)vs_bundleForProcessIdentifier:()VSAdditions;
+ (id)vs_frameworkBundle;
@end

@implementation NSBundle(VSAdditions)

+ (id)vs_frameworkBundle
{
  if (vs_frameworkBundle___vs_lazy_init_predicate != -1)
  {
    +[NSBundle(VSAdditions) vs_frameworkBundle];
  }

  v1 = vs_frameworkBundle___vs_lazy_init_variable;

  return v1;
}

+ (id)vs_bundleForProcessIdentifier:()VSAdditions
{
  v3 = VSBundleURLForProcessIdentifier(a3);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end