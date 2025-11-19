@interface TUIElementLinkEntity
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementLinkEntity

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  v10 = [v8 stringForAttribute:214 node:var0];
  [v9 setType:v10];

  v11 = [v8 stringForAttribute:104 node:var0];
  [v9 setIdentifier:v11];

  v12 = [v8 stringForAttribute:206 node:var0];

  [v9 setTitle:v12];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v8 = a4;
  v7 = [a3 finalizeLinkEntityWithContext:a5];
  if (v7)
  {
    [v8 addLinkEntity:v7];
  }
}

@end