@interface TUIElementHBox
+ (id)containerAttributes;
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureChildBox:(id)a3 withChildNode:(id)a4 attributes:(id)a5 builder:(id)a6 context:(id)a7;
@end

@implementation TUIElementHBox

+ (id)supportedAttributes
{
  if (qword_2E6110 != -1)
  {
    sub_199BAC();
  }

  v3 = qword_2E6108;

  return v3;
}

+ (id)containerAttributes
{
  if (qword_2E6120 != -1)
  {
    sub_199BC0();
  }

  v3 = qword_2E6118;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  v10 = [v8 stringForAttribute:96 node:var0];
  [v9 setHalign:{+[TUIBox halignFromString:](TUIBox, "halignFromString:", v10)}];

  v11 = [v8 stringForAttribute:120 node:var0];

  [v9 setLayoutMode:{+[TUIBox layoutModeFromString:](TUIBox, "layoutModeFromString:", v11)}];
}

+ (void)configureChildBox:(id)a3 withChildNode:(id)a4 attributes:(id)a5 builder:(id)a6 context:(id)a7
{
  v14 = a5;
  v9 = a3;
  v10 = [v14 stringForAttribute:97 node:a4.var0];
  [v9 setHcompressed:{+[TUIBox compressedFromString:](TUIBox, "compressedFromString:", v10)}];

  v11 = [v14 lengthForAttribute:167 node:a4.var0];
  [v9 setRelativeWidth:{v11, v12}];
  v13 = [v9 dynamicArrayWindowingBox];

  if (v13)
  {
    [v14 floatForAttribute:79 node:a4.var0];
    [v13 setEstimatedWidth:?];
    [v14 floatForAttribute:77 node:a4.var0];
    [v13 setEstimatedHeight:?];
    [v13 estimatedHeight];
    [v14 floatForAttribute:78 withDefault:a4.var0 node:?];
    [v13 setEstimatedHeightAbovePivot:?];
  }
}

@end