@interface UIView(_QLUtilities)
- (void)QL_setAnchorPointAndUpdatePosition:()_QLUtilities;
@end

@implementation UIView(_QLUtilities)

- (void)QL_setAnchorPointAndUpdatePosition:()_QLUtilities
{
  [self bounds];
  v7 = a2 * v6;
  [self bounds];
  v9 = a3 * v8;
  [self bounds];
  v11 = v10;
  layer = [self layer];
  [layer anchorPoint];
  v14 = v11 * v13;
  [self bounds];
  v16 = v15;
  layer2 = [self layer];
  [layer2 anchorPoint];
  v19 = v16 * v18;

  [self transform];
  v20 = v35 + v9 * v33 + v31 * v7;
  v21 = v36 + v9 * v34 + v32 * v7;
  [self transform];
  v22 = v35 + v19 * v33 + v31 * v14;
  v23 = v36 + v19 * v34 + v32 * v14;
  layer3 = [self layer];
  [layer3 position];
  v26 = v25;
  v28 = v27;

  layer4 = [self layer];
  [layer4 setPosition:{v20 + v26 - v22, v21 + v28 - v23}];

  layer5 = [self layer];
  [layer5 setAnchorPoint:{a2, a3}];
}

@end