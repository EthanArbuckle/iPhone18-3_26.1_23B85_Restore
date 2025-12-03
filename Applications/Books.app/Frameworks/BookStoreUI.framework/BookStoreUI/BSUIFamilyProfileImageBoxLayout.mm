@interface BSUIFamilyProfileImageBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)computeLayout;
@end

@implementation BSUIFamilyProfileImageBoxLayout

- (void)computeLayout
{
  [(BSUIFamilyProfileImageBoxLayout *)self computeWidth];
  v4 = v3;
  [(BSUIFamilyProfileImageBoxLayout *)self computeHeight];

  [(BSUIFamilyProfileImageBoxLayout *)self setComputedNaturalSize:v4, v5];
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  [(BSUIFamilyProfileImageBoxLayout *)self computedNaturalSize];
  v7 = v6;
  v9 = v8;
  v10 = [_BSUIFamilyProfileImageLayerConfig alloc];
  [contextCopy contentsScale];
  v12 = v11;

  v13 = [(BSUIFamilyProfileImageBoxLayout *)self box];
  [v13 cornerRadius];
  v15 = v14;
  v16 = [(BSUIFamilyProfileImageBoxLayout *)self box];
  urlString = [v16 urlString];
  v18 = [(_BSUIFamilyProfileImageLayerConfig *)v10 initWithSize:urlString contentsScale:v7 cornerRadius:v9 urlString:v12, v15];

  v19 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v18 erasableInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v19 setSize:{v7, v9}];
  v20 = [(BSUIFamilyProfileImageBoxLayout *)self box];
  identifier = [v20 identifier];
  [v19 setIdentifier:identifier];

  return v19;
}

@end