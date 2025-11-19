@interface TUIElementPageControl
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementPageControl

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v7 = a5;
  v8 = objc_alloc_init(_TUIElementPageControlBuilder);
  v9 = [v7 stringForAttribute:116 node:a3.var0];

  v10 = v9;
  v11 = v10;
  if (qword_2E6810 != -1)
  {
    sub_19BF7C();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [qword_2E6808 objectForKeyedSubscript:v11];
  v13 = [v12 unsignedIntegerValue];

LABEL_6:
  [(_TUIElementPageControlBuilder *)v8 setKind:v13];

  return v8;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v12 = a3;
  v8 = a5;
  [v12 setEnabled:{objc_msgSend(v8, "BOOLForAttribute:withDefault:node:", 74, 1, a4.var0)}];
  [v8 floatForAttribute:157 withDefault:a4.var0 node:1.0];
  [v12 setPressedScale:?];
  v9 = [v8 pointerForNode:a4.var0];
  [v12 setPointer:v9];

  [v12 setGrouped:{objc_msgSend(v8, "BOOLForAttribute:node:", 93, a4.var0)}];
  v10 = [v8 stringForAttribute:227 node:a4.var0];

  if (v10)
  {
    v11 = [v10 isEqualToString:@"hidden"];
  }

  else
  {
    v11 = (_UISolariumEnabled() ^ 1);
  }

  [v12 setHiddenWhenUnavailable:v11];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 finalizeStateMapWithContext:v9];
  [v7 setStateMap:v10];

  v11 = [v8 finalizeAnimationGroups];
  [v7 setAnimationGroups:v11];

  v12 = [v8 kind];
  v13 = [v7 pointer];
  objc_initWeak(&location, v7);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_16807C;
  v15[3] = &unk_263370;
  objc_copyWeak(v17, &location);
  v14 = v13;
  v16 = v14;
  v17[1] = v12;
  [v7 setRenderModelBlock:v15];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

@end