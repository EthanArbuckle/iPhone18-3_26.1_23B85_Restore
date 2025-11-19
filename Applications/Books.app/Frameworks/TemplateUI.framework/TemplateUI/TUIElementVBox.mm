@interface TUIElementVBox
+ (id)containerAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureChildBox:(id)a3 withChildNode:(id)a4 attributes:(id)a5 builder:(id)a6 context:(id)a7;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementVBox

+ (id)containerAttributes
{
  if (qword_2E6100 != -1)
  {
    sub_199B98();
  }

  v3 = qword_2E60F8;

  return v3;
}

+ (void)configureChildBox:(id)a3 withChildNode:(id)a4 attributes:(id)a5 builder:(id)a6 context:(id)a7
{
  v16 = a3;
  v10 = a5;
  v11 = a6;
  var0 = a4.var0;
  v13 = [v10 stringForAttribute:221 node:a4.var0];
  if ([v13 isEqualToString:@"baseline"])
  {
    [v11 setPivotChild:v16];
  }

  v14 = [v10 stringForAttribute:219 node:var0];
  [v16 setVcompressed:{+[TUIBox compressedFromString:](TUIBox, "compressedFromString:", v14)}];

  v15 = [v16 dynamicArrayWindowingBox];
  if (v15)
  {
    [v10 floatForAttribute:79 node:var0];
    [v15 setEstimatedWidth:?];
    [v10 floatForAttribute:77 node:var0];
    [v15 setEstimatedHeight:?];
  }
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a3;
  [v8 setGrouped:{objc_msgSend(a5, "BOOLForAttribute:node:", 93, var0)}];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 finalizeModelsWithParent:v8 box:v8 context:a5];
  v10 = [v7 pivotChild];

  [v8 setPivotChild:v10];
}

@end