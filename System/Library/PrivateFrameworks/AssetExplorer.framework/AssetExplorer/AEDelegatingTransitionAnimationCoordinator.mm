@interface AEDelegatingTransitionAnimationCoordinator
- (AEDelegatingTransitionAnimationCoordinator)initWithWrappedCoordinator:(id)coordinator;
- (BOOL)getFinalGeometry:(PXTileGeometry *)geometry finalUserData:(id *)data forDisappearingTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)fromGeometry fromUserData:(id)userData;
- (BOOL)getInitialGeometry:(PXTileGeometry *)geometry initialUserData:(id *)data forAppearingTileWithIdentifier:(PXTileIdentifier *)identifier toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)identifier animationType:(int64_t)type fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
@end

@implementation AEDelegatingTransitionAnimationCoordinator

- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  dataCopy = data;
  userDataCopy = userData;
  if (![(AEDelegatingTransitionAnimationCoordinator *)self enableDoubleSidedAnimations])
  {
    goto LABEL_6;
  }

  _wrappedCoordinator = [(AEDelegatingTransitionAnimationCoordinator *)self _wrappedCoordinator];
  v15 = *&identifier->var1[5];
  v34[2] = *&identifier->var1[3];
  v34[3] = v15;
  v34[4] = *&identifier->var1[7];
  v35 = identifier->var1[9];
  v16 = *&identifier->var1[1];
  v34[0] = *&identifier->var0;
  v34[1] = v16;
  v17 = *&geometry->var7.height;
  v33[8] = *&geometry->var6;
  v33[9] = v17;
  v18 = *&geometry->var8.size.height;
  v33[10] = *&geometry->var8.origin.y;
  v33[11] = v18;
  v19 = *&geometry->var3.c;
  v33[4] = *&geometry->var3.a;
  v33[5] = v19;
  v20 = *&geometry->var4;
  v33[6] = *&geometry->var3.tx;
  v33[7] = v20;
  size = geometry->var0.size;
  v33[0] = geometry->var0.origin;
  v33[1] = size;
  var2 = geometry->var2;
  v33[2] = geometry->var1;
  v33[3] = var2;
  v23 = *&toGeometry->var7.height;
  v32[8] = *&toGeometry->var6;
  v32[9] = v23;
  v24 = *&toGeometry->var8.size.height;
  v32[10] = *&toGeometry->var8.origin.y;
  v32[11] = v24;
  v25 = *&toGeometry->var3.c;
  v32[4] = *&toGeometry->var3.a;
  v32[5] = v25;
  v26 = *&toGeometry->var4;
  v32[6] = *&toGeometry->var3.tx;
  v32[7] = v26;
  v27 = toGeometry->var0.size;
  v32[0] = toGeometry->var0.origin;
  v32[1] = v27;
  v28 = toGeometry->var2;
  v32[2] = toGeometry->var1;
  v32[3] = v28;
  v29 = [_wrappedCoordinator useDoubleSidedAnimationForUpdatedTileWithIdentifier:v34 fromGeometry:v33 fromUserData:dataCopy toGeometry:v32 toUserData:userDataCopy];

  if (v29)
  {
    LOBYTE(v30) = 1;
    goto LABEL_7;
  }

  if (identifier->var0 - 3 > 2 || identifier->var1[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    LOBYTE(v30) = 0;
    goto LABEL_7;
  }

  LOBYTE(v30) = 0;
  if (identifier->var1[0] == 1215219281 && dataCopy != userDataCopy)
  {
    v30 = [dataCopy isEqual:userDataCopy] ^ 1;
  }

LABEL_7:

  return v30;
}

- (BOOL)getFinalGeometry:(PXTileGeometry *)geometry finalUserData:(id *)data forDisappearingTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)fromGeometry fromUserData:(id)userData
{
  userDataCopy = userData;
  _wrappedCoordinator = [(AEDelegatingTransitionAnimationCoordinator *)self _wrappedCoordinator];
  v14 = *&identifier->var1[5];
  v24[2] = *&identifier->var1[3];
  v24[3] = v14;
  v24[4] = *&identifier->var1[7];
  v25 = identifier->var1[9];
  v15 = *&identifier->var1[1];
  v24[0] = *&identifier->var0;
  v24[1] = v15;
  v16 = *&fromGeometry->var7.height;
  v23[8] = *&fromGeometry->var6;
  v23[9] = v16;
  v17 = *&fromGeometry->var8.size.height;
  v23[10] = *&fromGeometry->var8.origin.y;
  v23[11] = v17;
  v18 = *&fromGeometry->var3.c;
  v23[4] = *&fromGeometry->var3.a;
  v23[5] = v18;
  v19 = *&fromGeometry->var4;
  v23[6] = *&fromGeometry->var3.tx;
  v23[7] = v19;
  size = fromGeometry->var0.size;
  v23[0] = fromGeometry->var0.origin;
  v23[1] = size;
  var2 = fromGeometry->var2;
  v23[2] = fromGeometry->var1;
  v23[3] = var2;
  LOBYTE(data) = [_wrappedCoordinator getFinalGeometry:geometry finalUserData:data forDisappearingTileWithIdentifier:v24 fromGeometry:v23 fromUserData:userDataCopy];

  return data;
}

- (BOOL)getInitialGeometry:(PXTileGeometry *)geometry initialUserData:(id *)data forAppearingTileWithIdentifier:(PXTileIdentifier *)identifier toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  userDataCopy = userData;
  _wrappedCoordinator = [(AEDelegatingTransitionAnimationCoordinator *)self _wrappedCoordinator];
  v14 = *&identifier->var1[5];
  v24[2] = *&identifier->var1[3];
  v24[3] = v14;
  v24[4] = *&identifier->var1[7];
  v25 = identifier->var1[9];
  v15 = *&identifier->var1[1];
  v24[0] = *&identifier->var0;
  v24[1] = v15;
  v16 = *&toGeometry->var7.height;
  v23[8] = *&toGeometry->var6;
  v23[9] = v16;
  v17 = *&toGeometry->var8.size.height;
  v23[10] = *&toGeometry->var8.origin.y;
  v23[11] = v17;
  v18 = *&toGeometry->var3.c;
  v23[4] = *&toGeometry->var3.a;
  v23[5] = v18;
  v19 = *&toGeometry->var4;
  v23[6] = *&toGeometry->var3.tx;
  v23[7] = v19;
  size = toGeometry->var0.size;
  v23[0] = toGeometry->var0.origin;
  v23[1] = size;
  var2 = toGeometry->var2;
  v23[2] = toGeometry->var1;
  v23[3] = var2;
  LOBYTE(data) = [_wrappedCoordinator getInitialGeometry:geometry initialUserData:data forAppearingTileWithIdentifier:v24 toGeometry:v23 toUserData:userDataCopy];

  return data;
}

- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)identifier animationType:(int64_t)type fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  userDataCopy = userData;
  dataCopy = data;
  _wrappedCoordinator = [(AEDelegatingTransitionAnimationCoordinator *)self _wrappedCoordinator];
  v17 = *&identifier->var1[5];
  v35[2] = *&identifier->var1[3];
  v35[3] = v17;
  v35[4] = *&identifier->var1[7];
  v36 = identifier->var1[9];
  v18 = *&identifier->var1[1];
  v35[0] = *&identifier->var0;
  v35[1] = v18;
  v19 = *&geometry->var7.height;
  v34[8] = *&geometry->var6;
  v34[9] = v19;
  v20 = *&geometry->var8.size.height;
  v34[10] = *&geometry->var8.origin.y;
  v34[11] = v20;
  v21 = *&geometry->var3.c;
  v34[4] = *&geometry->var3.a;
  v34[5] = v21;
  v22 = *&geometry->var4;
  v34[6] = *&geometry->var3.tx;
  v34[7] = v22;
  size = geometry->var0.size;
  v34[0] = geometry->var0.origin;
  v34[1] = size;
  var2 = geometry->var2;
  v34[2] = geometry->var1;
  v34[3] = var2;
  v25 = *&toGeometry->var7.height;
  v33[8] = *&toGeometry->var6;
  v33[9] = v25;
  v26 = *&toGeometry->var8.size.height;
  v33[10] = *&toGeometry->var8.origin.y;
  v33[11] = v26;
  v27 = *&toGeometry->var3.c;
  v33[4] = *&toGeometry->var3.a;
  v33[5] = v27;
  v28 = *&toGeometry->var4;
  v33[6] = *&toGeometry->var3.tx;
  v33[7] = v28;
  v29 = toGeometry->var0.size;
  v33[0] = toGeometry->var0.origin;
  v33[1] = v29;
  v30 = toGeometry->var2;
  v33[2] = toGeometry->var1;
  v33[3] = v30;
  v31 = [_wrappedCoordinator optionsForAnimatingTileWithIdentifier:v35 animationType:type fromGeometry:v34 fromUserData:dataCopy toGeometry:v33 toUserData:userDataCopy];

  return v31;
}

- (AEDelegatingTransitionAnimationCoordinator)initWithWrappedCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = AEDelegatingTransitionAnimationCoordinator;
  v6 = [(AEDelegatingTransitionAnimationCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__wrappedCoordinator, coordinator);
    v7->_enableDoubleSidedAnimations = 1;
  }

  return v7;
}

@end