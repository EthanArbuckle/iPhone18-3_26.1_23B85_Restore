@interface _BSUIBooksUIComponentBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation _BSUIBooksUIComponentBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  if (kind < 4)
  {
    return 0;
  }

  [(_BSUIBooksUIComponentBoxLayout *)self renderModelSizeWithContext:context];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  v9 = [(_BSUIBooksUIComponentBoxLayout *)self box];
  v10 = TUIDynamicCast();

  v11 = [(_BSUIBooksUIComponentBoxLayout *)self box];
  identifier = [v11 identifier];
  rawComponentModel = [v10 rawComponentModel];
  v14 = [BSUIBooksUIComponentView renderModelWithIdentifier:identifier rawComponentModel:rawComponentModel];

  [v14 setSize:{v6, v8}];
  return v14;
}

@end