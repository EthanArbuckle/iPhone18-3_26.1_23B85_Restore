@interface TUIElementSmartGridAdornments
+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7;
@end

@implementation TUIElementSmartGridAdornments

+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7
{
  v9 = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_5018;
  v12[3] = &unk_25DBF8;
  v13 = a6;
  v14 = v9;
  v10 = v9;
  v11 = v13;
  [v11 enumerateChildrenOfNode:a3.var0 block:v12];
}

@end