@interface TUIElementLinkEntityAction
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementLinkEntityAction

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v16 = a3;
  v9 = a6;
  var0 = a4.var0;
  v11 = a5;
  v12 = [v11 stringForAttribute:138 node:a4.var0];
  v13 = [v11 stringForAttribute:211 node:a4.var0];
  v14 = [v11 stringForAttribute:165 node:var0];

  if (v12)
  {
    v15 = [[TUILinkEntityAction alloc] initWithName:v12 trigger:v13 refId:v14];
    [v16 addLinkEntityAction:v15];
  }

  else
  {
    [v9 reportError:1016];
  }
}

@end