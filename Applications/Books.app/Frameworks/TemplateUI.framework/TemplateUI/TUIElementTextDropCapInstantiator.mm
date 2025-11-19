@interface TUIElementTextDropCapInstantiator
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7;
@end

@implementation TUIElementTextDropCapInstantiator

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___TUIElementTextDropCapInstantiator;
  var0 = a4.var0;
  v9 = a5;
  v10 = a3;
  objc_msgSendSuper2(&v12, "configureObject:withNode:attributes:context:", v10, var0, v9, a6);
  [v10 setCharCount:{objc_msgSend(v9, "unsignedIntegerForAttribute:withDefault:node:", 48, 0x7FFFFFFFFFFFFFFFLL, var0, v12.receiver, v12.super_class)}];
  [v10 setLines:{objc_msgSend(v9, "unsignedIntegerForAttribute:withDefault:node:", 123, 2, var0)}];
  [v10 setRaised:{objc_msgSend(v9, "unsignedIntegerForAttribute:withDefault:node:", 162, 0, var0)}];
  [v9 floatForAttribute:147 node:var0];
  [v10 setPadding:?];
  v11 = [v9 colorForAttribute:30 node:var0];

  [v10 setBackgroundColor:v11];
}

+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  [v12 ensureParagraphBoundaryWithBuilder:v13];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_5FDA4;
  v25 = &unk_25F658;
  var0 = a3.var0;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = a1;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  [v18 appendWithBlock:&v22];
  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  [v19 setCharCount:{v21, v22, v23, v24, v25}];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v16 = a3;
  v6 = a4;
  [v16 ensureParagraphBoundaryWithBuilder:v6];
  v7 = objc_opt_respondsToSelector();
  v8 = [v16 charCount];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if ((v7 & 1) != 0 && v9)
  {
    v10 = [v16 lines];
    v11 = [v16 raised];
    v12 = [v16 style];
    v13 = [v16 color];
    v14 = [v16 fontSpec];
    v15 = [v16 backgroundColor];
    [v16 padding];
    [v6 configureDropCapWithCount:v9 lines:v10 raised:v11 style:v12 color:v13 fontSpec:v14 backgroundColor:v15 padding:?];
  }
}

@end