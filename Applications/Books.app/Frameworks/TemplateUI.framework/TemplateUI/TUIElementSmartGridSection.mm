@interface TUIElementSmartGridSection
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementSmartGridSection

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v10 = a3;
  [v10 setColumns:{objc_msgSend(v8, "unsignedIntegerForAttribute:withDefault:node:", 52, 0x7FFFFFFFFFFFFFFFLL, var0)}];
  v9 = [v8 unsignedIntegerForAttribute:179 withDefault:0x7FFFFFFFFFFFFFFFLL node:var0];

  [v10 setRows:v9];
}

@end