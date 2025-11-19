@interface TUIElementGlobalsUse
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementGlobalsUse

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a6;
  [v8 useGlobalsWithName:{objc_msgSend(a5, "globalsNameForAttribute:node:", 137, var0)}];
}

@end