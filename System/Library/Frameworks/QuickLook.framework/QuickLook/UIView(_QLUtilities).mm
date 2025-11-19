@interface UIView(_QLUtilities)
- (void)QL_setAnchorPointAndUpdatePosition:()_QLUtilities;
@end

@implementation UIView(_QLUtilities)

- (void)QL_setAnchorPointAndUpdatePosition:()_QLUtilities
{
  [a1 bounds];
  v7 = a2 * v6;
  [a1 bounds];
  v9 = a3 * v8;
  [a1 bounds];
  v11 = v10;
  v12 = [a1 layer];
  [v12 anchorPoint];
  v14 = v11 * v13;
  [a1 bounds];
  v16 = v15;
  v17 = [a1 layer];
  [v17 anchorPoint];
  v19 = v16 * v18;

  [a1 transform];
  v20 = v35 + v9 * v33 + v31 * v7;
  v21 = v36 + v9 * v34 + v32 * v7;
  [a1 transform];
  v22 = v35 + v19 * v33 + v31 * v14;
  v23 = v36 + v19 * v34 + v32 * v14;
  v24 = [a1 layer];
  [v24 position];
  v26 = v25;
  v28 = v27;

  v29 = [a1 layer];
  [v29 setPosition:{v20 + v26 - v22, v21 + v28 - v23}];

  v30 = [a1 layer];
  [v30 setAnchorPoint:{a2, a3}];
}

@end