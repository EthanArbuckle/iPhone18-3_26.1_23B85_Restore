@interface CRLSnapshotRenderLayer
- (CRLSnapshotRenderLayer)initWithSourceLayer:(id)layer;
- (void)_setSlotId:(id)id;
- (void)setContents:(id)contents;
@end

@implementation CRLSnapshotRenderLayer

- (CRLSnapshotRenderLayer)initWithSourceLayer:(id)layer
{
  layerCopy = layer;
  if (!layerCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138D79C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138D7B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138D85C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLSnapshotRenderLayer initWithSourceLayer:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSnapshotRenderLayer.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:75 isFatal:0 description:"invalid nil value for '%{public}s'", "sourceLayer"];
  }

  v43.receiver = self;
  v43.super_class = CRLSnapshotRenderLayer;
  v8 = [(CRLSnapshotRenderLayer *)&v43 init];
  if (v8)
  {
    [layerCopy bounds];
    [(CRLSnapshotRenderLayer *)v8 setBounds:?];
    [layerCopy contentsScale];
    [(CRLSnapshotRenderLayer *)v8 setContentsScale:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      slotId = [layerCopy slotId];
      [(CRLSnapshotRenderLayer *)v8 _setSlotId:slotId];

      goto LABEL_34;
    }

    context = [layerCopy context];

    if (context)
    {
      if ([layerCopy hasBeenCommitted])
      {
        v37 = *&CATransform3DIdentity.m33;
        *&v42.m31 = *&CATransform3DIdentity.m31;
        v38 = *&v42.m31;
        *&v42.m33 = v37;
        v35 = *&CATransform3DIdentity.m43;
        *&v42.m41 = *&CATransform3DIdentity.m41;
        v36 = *&v42.m41;
        *&v42.m43 = v35;
        v33 = *&CATransform3DIdentity.m13;
        *&v42.m11 = *&CATransform3DIdentity.m11;
        v34 = *&v42.m11;
        *&v42.m13 = v33;
        v31 = *&CATransform3DIdentity.m23;
        *&v42.m21 = *&CATransform3DIdentity.m21;
        v32 = *&v42.m21;
        *&v42.m23 = v31;
        [layerCopy contentsScale];
        v12 = v11 + v11;
        [layerCopy bounds];
        v14 = -v13;
        [layerCopy bounds];
        CATransform3DMakeTranslation(&b, v14, -v15, 0.0);
        *&a.m31 = v38;
        *&a.m33 = v37;
        *&a.m41 = v36;
        *&a.m43 = v35;
        *&a.m11 = v34;
        *&a.m13 = v33;
        *&a.m21 = v32;
        *&a.m23 = v31;
        CATransform3DConcat(&v42, &a, &b);
        CATransform3DMakeScale(&a, v12, v12, 1.0);
        v39 = v42;
        CATransform3DConcat(&b, &v39, &a);
        v42 = b;
        [layerCopy bounds];
        v18 = sub_10011F340(v16, v17, v12);
        v20 = [[CRLSnapshotImageSlotID alloc] initWithSize:v18, v19];
        [(CRLSnapshotRenderLayer *)v8 _setSlotId:v20];

        v44[0] = kCASnapshotMode;
        v44[1] = kCASnapshotDisplayName;
        v45[0] = kCASnapshotModeLayer;
        v45[1] = @"DisplayName";
        v44[2] = kCASnapshotContextId;
        context2 = [layerCopy context];
        v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [context2 contextId]);
        v45[2] = v22;
        v44[3] = kCASnapshotLayerId;
        v23 = [NSNumber numberWithUnsignedLongLong:layerCopy];
        v45[3] = v23;
        v44[4] = kCASnapshotDestination;
        slotId2 = [(CRLSnapshotRenderLayer *)v8 slotId];
        v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [slotId2 value]);
        v45[4] = v25;
        v44[5] = kCASnapshotTransform;
        b = v42;
        v26 = [NSValue valueWithCATransform3D:&b];
        v45[5] = v26;
        v45[6] = &__kCFBooleanTrue;
        v44[6] = kCASnapshotReuseBackdropContents;
        v44[7] = kCASnapshotIgnoreRootAccessibilityFilters;
        v44[8] = kCASnapshotBottomLeftOrigin;
        v45[7] = &__kCFBooleanTrue;
        v45[8] = &__kCFBooleanFalse;
        v27 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:9];

        if ((CARenderServerSnapshot() & 1) == 0)
        {

          if (qword_101AD5C00 != -1)
          {
            sub_10138D8EC();
          }

          if (os_log_type_enabled(off_1019EDC58, OS_LOG_TYPE_ERROR))
          {
            sub_10138D914();
          }

          v8 = 0;
        }

        v28 = [layerCopy valueForKey:@"wantsExtendedDynamicRangeContent"];
        bOOLValue = [v28 BOOLValue];

        if (bOOLValue)
        {
          [(CRLSnapshotRenderLayer *)v8 setValue:&__kCFBooleanTrue forKey:@"wantsExtendedDynamicRangeContent"];
        }

        goto LABEL_34;
      }

      if (qword_101AD5C00 != -1)
      {
        sub_10138D884();
      }

      if (os_log_type_enabled(off_1019EDC58, OS_LOG_TYPE_ERROR))
      {
        sub_10138D8AC();
      }
    }

    else
    {

      if (qword_101AD5C00 != -1)
      {
        sub_10138D954();
      }

      if (os_log_type_enabled(off_1019EDC58, OS_LOG_TYPE_ERROR))
      {
        sub_10138D97C();
      }
    }

    v8 = 0;
  }

LABEL_34:

  return v8;
}

- (void)setContents:(id)contents
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10138D9BC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10138D9D0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10138DA6C();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLSnapshotRenderLayer setContents:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSnapshotRenderLayer.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:142 isFatal:0 description:"CRLSnapshotRenderLayer.setContents is unsupported. Use -initWithSourceLayer:"];
}

- (void)_setSlotId:(id)id
{
  idCopy = id;
  object = [(CRLSnapshotImageSlotID *)idCopy object];
  v7.receiver = self;
  v7.super_class = CRLSnapshotRenderLayer;
  [(CRLSnapshotRenderLayer *)&v7 setContents:object];

  slotId = self->_slotId;
  self->_slotId = idCopy;
}

@end