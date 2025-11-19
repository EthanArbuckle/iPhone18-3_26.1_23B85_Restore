@interface TUIElementGroup
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementGroup

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v7 = *&a4.var0;
  v14 = a3;
  v8 = a5;
  v9 = v7;
  v10 = [v8 stringForAttribute:96 node:v7];
  [v14 setHalign:{+[TUIBox halignFromString:](TUIBox, "halignFromString:", v10)}];

  v11 = [v8 stringForAttribute:218 node:v7];
  [v14 setValign:{+[TUIBox valignFromString:](TUIBox, "valignFromString:", v11)}];

  v12 = [v8 objectForAttribute:104 node:v7];
  if (v12)
  {
    [v14 setIdentifier:v12];
  }

  else
  {
    v13 = [NSNumber numberWithUnsignedInt:v7];
    [v14 setIdentifier:v13];
  }

  [v14 setSpan:{objc_msgSend(v8, "unsignedIntegerForAttribute:withDefault:node:", 196, 1, v9)}];
}

@end