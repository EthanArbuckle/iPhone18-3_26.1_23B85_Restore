@interface _BSUIBooksUIComponentBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation _BSUIBooksUIComponentBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  if (a3 < 4)
  {
    return 0;
  }

  [(_BSUIBooksUIComponentBoxLayout *)self renderModelSizeWithContext:a4];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  v9 = [(_BSUIBooksUIComponentBoxLayout *)self box];
  v10 = TUIDynamicCast();

  v11 = [(_BSUIBooksUIComponentBoxLayout *)self box];
  v12 = [v11 identifier];
  v13 = [v10 rawComponentModel];
  v14 = [BSUIBooksUIComponentView renderModelWithIdentifier:v12 rawComponentModel:v13];

  [v14 setSize:{v6, v8}];
  return v14;
}

@end