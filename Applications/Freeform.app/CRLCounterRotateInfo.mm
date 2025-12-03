@interface CRLCounterRotateInfo
+ (CGAffineTransform)counterTransformForTransformInRoot:(SEL)root;
+ (id)infoGeometryForTransformInRoot:(CGAffineTransform *)root isChildFlipped:(BOOL)flipped;
+ (id)infoGeometryInRootIncludingCounterRotateIfNeededForBoardItem:(id)item;
+ (id)p_infoGeometryForCounterTransform:(CGAffineTransform *)transform isChildFlipped:(BOOL)flipped;
- (CGAffineTransform)counterTransform;
- (CRLCanvasElementInfo)parentInfo;
- (CRLCounterRotateInfo)initWithChildInfo:(id)info parentGroup:(id)group counterTransform:(CGAffineTransform *)transform;
- (Class)editorClass;
- (NSArray)childInfos;
- (_TtC8Freeform12CRLBoardItem)childInfo;
- (_TtC8Freeform12CRLGroupItem)parentGroup;
- (id)infoForSelectionPath:(id)path;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)setCounterTransform:(CGAffineTransform *)transform;
- (void)setParentInfo:(id)info;
@end

@implementation CRLCounterRotateInfo

- (CRLCounterRotateInfo)initWithChildInfo:(id)info parentGroup:(id)group counterTransform:(CGAffineTransform *)transform
{
  infoCopy = info;
  groupCopy = group;
  v15.receiver = self;
  v15.super_class = CRLCounterRotateInfo;
  v10 = [(CRLCounterRotateInfo *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_childInfo, infoCopy);
    objc_storeWeak(&v11->_parentGroup, groupCopy);
    v12 = *&transform->c;
    v14[0] = *&transform->a;
    v14[1] = v12;
    v14[2] = *&transform->tx;
    [(CRLCounterRotateInfo *)v11 setCounterTransform:v14];
  }

  return v11;
}

+ (id)infoGeometryForTransformInRoot:(CGAffineTransform *)root isChildFlipped:(BOOL)flipped
{
  flippedCopy = flipped;
  v13 = 0u;
  v14 = 0u;
  v6 = *&root->c;
  v9 = *&root->a;
  v10 = v6;
  v11 = *&root->tx;
  v12 = 0u;
  [self counterTransformForTransformInRoot:&v9];
  v9 = v12;
  v10 = v13;
  v11 = v14;
  v7 = [self p_infoGeometryForCounterTransform:&v9 isChildFlipped:flippedCopy];

  return v7;
}

+ (id)p_infoGeometryForCounterTransform:(CGAffineTransform *)transform isChildFlipped:(BOOL)flipped
{
  flippedCopy = flipped;
  v6 = *&transform->c;
  v11 = *&transform->a;
  v12 = v6;
  v13 = *&transform->tx;
  v7 = sub_1001399E4(&v11);
  v8 = *&transform->c;
  v11 = *&transform->a;
  v12 = v8;
  v13 = *&transform->tx;
  v9 = [[CRLCanvasInfoGeometry alloc] initWithPosition:1 size:1 widthValid:v7 ^ flippedCopy heightValid:0 horizontalFlip:CGPointZero.x verticalFlip:CGPointZero.y angle:10.0, 10.0, -sub_100139980(&v11)];

  return v9;
}

+ (CGAffineTransform)counterTransformForTransformInRoot:(SEL)root
{
  v4 = *&a4->c;
  *&v6.a = *&a4->a;
  *&v6.c = v4;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v6.tx = 0.0;
  v6.ty = 0.0;
  return CGAffineTransformInvert(retstr, &v6);
}

+ (id)infoGeometryInRootIncludingCounterRotateIfNeededForBoardItem:(id)item
{
  itemCopy = item;
  geometry = [itemCopy geometry];
  v5 = objc_opt_class();
  parentInfo = [itemCopy parentInfo];
  v7 = sub_100014370(v5, parentInfo);

  if ([itemCopy wantsCounterRotationWhenNotSupportingParentRotationInRotatedParent])
  {
    if (([itemCopy supportsParentRotation] & 1) == 0)
    {
      containingGroup = [itemCopy containingGroup];

      if (containingGroup)
      {
        v31 = 0;
        v32 = &v31;
        v33 = 0x5010000000;
        v34 = &unk_1016A8115;
        v9 = *&CGAffineTransformIdentity.c;
        v35 = *&CGAffineTransformIdentity.a;
        v36 = v9;
        v37 = *&CGAffineTransformIdentity.tx;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1001BA4E0;
        v30[3] = &unk_1018453B0;
        v30[4] = &v31;
        [v7 withTemporaryLayoutPerform:v30];
        if (v7)
        {
          [v7 transformInRoot];
        }

        else
        {
          memset(&v29, 0, sizeof(v29));
        }

        geometry2 = [itemCopy geometry];
        v11 = geometry2;
        if (geometry2)
        {
          [geometry2 transform];
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
        }

        v12 = [CRLCounterRotateInfo infoGeometryForTransformInRoot:&v29 isChildFlipped:sub_1001399E4(&t1.a)];

        memset(&v29, 0, sizeof(v29));
        if (v12)
        {
          [v12 transform];
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
        }

        v13 = *(v32 + 3);
        *&t2.a = *(v32 + 2);
        *&t2.c = v13;
        *&t2.tx = *(v32 + 4);
        CGAffineTransformConcat(&v29, &t1, &t2);
        memset(&t1, 0, sizeof(t1));
        if (geometry)
        {
          [geometry fullTransform];
        }

        else
        {
          memset(&t2, 0, sizeof(t2));
        }

        v26 = v29;
        CGAffineTransformConcat(&t1, &t2, &v26);
        widthValid = [geometry widthValid];
        heightValid = [geometry heightValid];
        t2 = t1;
        v16 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t2 widthValid:widthValid heightValid:heightValid];

        v17 = objc_opt_class();
        parentInfo2 = [v7 parentInfo];
        v19 = sub_100014370(v17, parentInfo2);

        _Block_object_dispose(&v31, 8);
        v7 = v19;
        geometry = v16;
      }
    }
  }

  if (v7)
  {
    do
    {
      geometry3 = [v7 geometry];
      v21 = [geometry geometryWithParentGeometry:geometry3];

      v22 = objc_opt_class();
      parentInfo3 = [v7 parentInfo];
      v24 = sub_100014370(v22, parentInfo3);

      geometry = v21;
      v7 = v24;
    }

    while (v24);
  }

  else
  {
    v21 = geometry;
  }

  return v21;
}

- (void)setCounterTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->a;
  v6 = *&transform->tx;
  *&self->_counterTransform.c = *&transform->c;
  *&self->_counterTransform.tx = v6;
  *&self->_counterTransform.a = v5;
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_childInfo);
  geometry = [WeakRetained geometry];
  v10 = geometry;
  if (geometry)
  {
    [geometry transform];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  v11 = sub_1001399E4(&v14);
  v12 = *&transform->c;
  v14 = *&transform->a;
  v15 = v12;
  v16 = *&transform->tx;
  v13 = [v7 p_infoGeometryForCounterTransform:&v14 isChildFlipped:v11];
  [(CRLCounterRotateInfo *)self setGeometry:v13];
}

- (CRLCanvasElementInfo)parentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGroup);

  return WeakRetained;
}

- (void)setParentInfo:(id)info
{
  infoCopy = info;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, infoCopy);
  if (infoCopy && !v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132B95C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132B970();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132B9F8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Must provide a group info or nil as parent of a counter rotate info!", v7, v8, v9, v10, v11, v12, v13, "[CRLCounterRotateInfo setParentInfo:]");
    v14 = [NSString stringWithUTF8String:"[CRLCounterRotateInfo setParentInfo:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateInfo.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:108 isFatal:1 description:"Must provide a group info or nil as parent of a counter rotate info!"];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v16, v17);
    abort();
  }

  objc_storeWeak(&self->_parentGroup, v5);
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  WeakRetained = objc_loadWeakRetained(&self->_parentGroup);

  if (WeakRetained == neededCopy)
  {

    objc_storeWeak(&self->_parentGroup, 0);
  }
}

- (Class)editorClass
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10132BA20();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10132BA34();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10132BABC();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v2);
  }

  v3 = [NSString stringWithUTF8String:"[CRLCounterRotateInfo editorClass]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateInfo.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:135 isFatal:0 description:"We don't expect this to be called"];

  return 0;
}

- (NSArray)childInfos
{
  WeakRetained = objc_loadWeakRetained(&self->_childInfo);
  v5 = WeakRetained;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)infoForSelectionPath:(id)path
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10132BAE4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10132BAF8();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10132BB80();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLCounterRotateInfo infoForSelectionPath:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateInfo.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:146 isFatal:0 description:"We don't expect this to be called"];

  return 0;
}

- (_TtC8Freeform12CRLGroupItem)parentGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGroup);

  return WeakRetained;
}

- (_TtC8Freeform12CRLBoardItem)childInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_childInfo);

  return WeakRetained;
}

- (CGAffineTransform)counterTransform
{
  v3 = *&self[1].a;
  *&retstr->a = *&self->tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].c;
  return self;
}

@end