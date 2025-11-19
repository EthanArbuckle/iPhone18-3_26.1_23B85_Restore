@interface AEDelegatingTransitionAnimationCoordinator
- (AEDelegatingTransitionAnimationCoordinator)initWithWrappedCoordinator:(id)a3;
- (BOOL)getFinalGeometry:(PXTileGeometry *)a3 finalUserData:(id *)a4 forDisappearingTileWithIdentifier:(PXTileIdentifier *)a5 fromGeometry:(PXTileGeometry *)a6 fromUserData:(id)a7;
- (BOOL)getInitialGeometry:(PXTileGeometry *)a3 initialUserData:(id *)a4 forAppearingTileWithIdentifier:(PXTileIdentifier *)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7;
- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)a3 fromGeometry:(PXTileGeometry *)a4 fromUserData:(id)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7;
- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)a3 animationType:(int64_t)a4 fromGeometry:(PXTileGeometry *)a5 fromUserData:(id)a6 toGeometry:(PXTileGeometry *)a7 toUserData:(id)a8;
@end

@implementation AEDelegatingTransitionAnimationCoordinator

- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)a3 fromGeometry:(PXTileGeometry *)a4 fromUserData:(id)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7
{
  v12 = a5;
  v13 = a7;
  if (![(AEDelegatingTransitionAnimationCoordinator *)self enableDoubleSidedAnimations])
  {
    goto LABEL_6;
  }

  v14 = [(AEDelegatingTransitionAnimationCoordinator *)self _wrappedCoordinator];
  v15 = *&a3->var1[5];
  v34[2] = *&a3->var1[3];
  v34[3] = v15;
  v34[4] = *&a3->var1[7];
  v35 = a3->var1[9];
  v16 = *&a3->var1[1];
  v34[0] = *&a3->var0;
  v34[1] = v16;
  v17 = *&a4->var7.height;
  v33[8] = *&a4->var6;
  v33[9] = v17;
  v18 = *&a4->var8.size.height;
  v33[10] = *&a4->var8.origin.y;
  v33[11] = v18;
  v19 = *&a4->var3.c;
  v33[4] = *&a4->var3.a;
  v33[5] = v19;
  v20 = *&a4->var4;
  v33[6] = *&a4->var3.tx;
  v33[7] = v20;
  size = a4->var0.size;
  v33[0] = a4->var0.origin;
  v33[1] = size;
  var2 = a4->var2;
  v33[2] = a4->var1;
  v33[3] = var2;
  v23 = *&a6->var7.height;
  v32[8] = *&a6->var6;
  v32[9] = v23;
  v24 = *&a6->var8.size.height;
  v32[10] = *&a6->var8.origin.y;
  v32[11] = v24;
  v25 = *&a6->var3.c;
  v32[4] = *&a6->var3.a;
  v32[5] = v25;
  v26 = *&a6->var4;
  v32[6] = *&a6->var3.tx;
  v32[7] = v26;
  v27 = a6->var0.size;
  v32[0] = a6->var0.origin;
  v32[1] = v27;
  v28 = a6->var2;
  v32[2] = a6->var1;
  v32[3] = v28;
  v29 = [v14 useDoubleSidedAnimationForUpdatedTileWithIdentifier:v34 fromGeometry:v33 fromUserData:v12 toGeometry:v32 toUserData:v13];

  if (v29)
  {
    LOBYTE(v30) = 1;
    goto LABEL_7;
  }

  if (a3->var0 - 3 > 2 || a3->var1[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    LOBYTE(v30) = 0;
    goto LABEL_7;
  }

  LOBYTE(v30) = 0;
  if (a3->var1[0] == 1215219281 && v12 != v13)
  {
    v30 = [v12 isEqual:v13] ^ 1;
  }

LABEL_7:

  return v30;
}

- (BOOL)getFinalGeometry:(PXTileGeometry *)a3 finalUserData:(id *)a4 forDisappearingTileWithIdentifier:(PXTileIdentifier *)a5 fromGeometry:(PXTileGeometry *)a6 fromUserData:(id)a7
{
  v12 = a7;
  v13 = [(AEDelegatingTransitionAnimationCoordinator *)self _wrappedCoordinator];
  v14 = *&a5->var1[5];
  v24[2] = *&a5->var1[3];
  v24[3] = v14;
  v24[4] = *&a5->var1[7];
  v25 = a5->var1[9];
  v15 = *&a5->var1[1];
  v24[0] = *&a5->var0;
  v24[1] = v15;
  v16 = *&a6->var7.height;
  v23[8] = *&a6->var6;
  v23[9] = v16;
  v17 = *&a6->var8.size.height;
  v23[10] = *&a6->var8.origin.y;
  v23[11] = v17;
  v18 = *&a6->var3.c;
  v23[4] = *&a6->var3.a;
  v23[5] = v18;
  v19 = *&a6->var4;
  v23[6] = *&a6->var3.tx;
  v23[7] = v19;
  size = a6->var0.size;
  v23[0] = a6->var0.origin;
  v23[1] = size;
  var2 = a6->var2;
  v23[2] = a6->var1;
  v23[3] = var2;
  LOBYTE(a4) = [v13 getFinalGeometry:a3 finalUserData:a4 forDisappearingTileWithIdentifier:v24 fromGeometry:v23 fromUserData:v12];

  return a4;
}

- (BOOL)getInitialGeometry:(PXTileGeometry *)a3 initialUserData:(id *)a4 forAppearingTileWithIdentifier:(PXTileIdentifier *)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7
{
  v12 = a7;
  v13 = [(AEDelegatingTransitionAnimationCoordinator *)self _wrappedCoordinator];
  v14 = *&a5->var1[5];
  v24[2] = *&a5->var1[3];
  v24[3] = v14;
  v24[4] = *&a5->var1[7];
  v25 = a5->var1[9];
  v15 = *&a5->var1[1];
  v24[0] = *&a5->var0;
  v24[1] = v15;
  v16 = *&a6->var7.height;
  v23[8] = *&a6->var6;
  v23[9] = v16;
  v17 = *&a6->var8.size.height;
  v23[10] = *&a6->var8.origin.y;
  v23[11] = v17;
  v18 = *&a6->var3.c;
  v23[4] = *&a6->var3.a;
  v23[5] = v18;
  v19 = *&a6->var4;
  v23[6] = *&a6->var3.tx;
  v23[7] = v19;
  size = a6->var0.size;
  v23[0] = a6->var0.origin;
  v23[1] = size;
  var2 = a6->var2;
  v23[2] = a6->var1;
  v23[3] = var2;
  LOBYTE(a4) = [v13 getInitialGeometry:a3 initialUserData:a4 forAppearingTileWithIdentifier:v24 toGeometry:v23 toUserData:v12];

  return a4;
}

- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)a3 animationType:(int64_t)a4 fromGeometry:(PXTileGeometry *)a5 fromUserData:(id)a6 toGeometry:(PXTileGeometry *)a7 toUserData:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = [(AEDelegatingTransitionAnimationCoordinator *)self _wrappedCoordinator];
  v17 = *&a3->var1[5];
  v35[2] = *&a3->var1[3];
  v35[3] = v17;
  v35[4] = *&a3->var1[7];
  v36 = a3->var1[9];
  v18 = *&a3->var1[1];
  v35[0] = *&a3->var0;
  v35[1] = v18;
  v19 = *&a5->var7.height;
  v34[8] = *&a5->var6;
  v34[9] = v19;
  v20 = *&a5->var8.size.height;
  v34[10] = *&a5->var8.origin.y;
  v34[11] = v20;
  v21 = *&a5->var3.c;
  v34[4] = *&a5->var3.a;
  v34[5] = v21;
  v22 = *&a5->var4;
  v34[6] = *&a5->var3.tx;
  v34[7] = v22;
  size = a5->var0.size;
  v34[0] = a5->var0.origin;
  v34[1] = size;
  var2 = a5->var2;
  v34[2] = a5->var1;
  v34[3] = var2;
  v25 = *&a7->var7.height;
  v33[8] = *&a7->var6;
  v33[9] = v25;
  v26 = *&a7->var8.size.height;
  v33[10] = *&a7->var8.origin.y;
  v33[11] = v26;
  v27 = *&a7->var3.c;
  v33[4] = *&a7->var3.a;
  v33[5] = v27;
  v28 = *&a7->var4;
  v33[6] = *&a7->var3.tx;
  v33[7] = v28;
  v29 = a7->var0.size;
  v33[0] = a7->var0.origin;
  v33[1] = v29;
  v30 = a7->var2;
  v33[2] = a7->var1;
  v33[3] = v30;
  v31 = [v16 optionsForAnimatingTileWithIdentifier:v35 animationType:a4 fromGeometry:v34 fromUserData:v15 toGeometry:v33 toUserData:v14];

  return v31;
}

- (AEDelegatingTransitionAnimationCoordinator)initWithWrappedCoordinator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AEDelegatingTransitionAnimationCoordinator;
  v6 = [(AEDelegatingTransitionAnimationCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__wrappedCoordinator, a3);
    v7->_enableDoubleSidedAnimations = 1;
  }

  return v7;
}

@end