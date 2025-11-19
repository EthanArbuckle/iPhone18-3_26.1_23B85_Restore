@interface BSUIFamilyProfileImageBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
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

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v5 = a4;
  [(BSUIFamilyProfileImageBoxLayout *)self computedNaturalSize];
  v7 = v6;
  v9 = v8;
  v10 = [_BSUIFamilyProfileImageLayerConfig alloc];
  [v5 contentsScale];
  v12 = v11;

  v13 = [(BSUIFamilyProfileImageBoxLayout *)self box];
  [v13 cornerRadius];
  v15 = v14;
  v16 = [(BSUIFamilyProfileImageBoxLayout *)self box];
  v17 = [v16 urlString];
  v18 = [(_BSUIFamilyProfileImageLayerConfig *)v10 initWithSize:v17 contentsScale:v7 cornerRadius:v9 urlString:v12, v15];

  v19 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v18 erasableInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v19 setSize:{v7, v9}];
  v20 = [(BSUIFamilyProfileImageBoxLayout *)self box];
  v21 = [v20 identifier];
  [v19 setIdentifier:v21];

  return v19;
}

@end