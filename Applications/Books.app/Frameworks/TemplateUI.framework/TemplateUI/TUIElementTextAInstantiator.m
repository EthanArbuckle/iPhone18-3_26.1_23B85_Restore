@interface TUIElementTextAInstantiator
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7;
@end

@implementation TUIElementTextAInstantiator

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v10 = a3;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___TUIElementTextAInstantiator;
  v11 = a5;
  objc_msgSendSuper2(&v14, "configureObject:withNode:attributes:context:", v10, a4.var0, v11, a6);
  v12 = [v11 stringForAttribute:103 node:{a4.var0, v14.receiver, v14.super_class}];

  if (v12)
  {
    v13 = [NSURL URLWithString:v12];
    [v10 setUrl:v13];
  }

  else
  {
    [v10 setUrl:0];
  }
}

+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v12 url];
  if (v16 && (v17 = v16, v18 = [v13 options], v17, (v18 & 2) != 0))
  {
    v19 = [v12 url];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_5F898;
    v21[3] = &unk_25F658;
    var0 = a3.var0;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = a1;
    [v23 appendHyperlinkWithURL:v19 block:v21];
  }

  else
  {
    v20.receiver = a1;
    v20.super_class = &OBJC_METACLASS___TUIElementTextAInstantiator;
    objc_msgSendSuper2(&v20, "instantiateChildrenOfNode:object:containingBuilder:context:block:", a3.var0, v12, v13, v14, v15);
  }
}

@end