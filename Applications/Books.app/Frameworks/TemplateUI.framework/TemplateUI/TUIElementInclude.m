@interface TUIElementInclude
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementInclude

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v11 = a6;
  v8 = [a5 stringForAttribute:215 node:a4.var0];
  if (v8)
  {
    v9 = [v11 baseURLForNode:a4.var0];
    v10 = [NSURL URLWithString:v8 relativeToURL:v9];
  }

  else
  {
    v10 = 0;
  }

  [v11 includeTemplateWithURL:v10];
}

@end