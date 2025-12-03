@interface CRLFreehandDrawingTransformInfo
- (CRLCanvasElementInfo)parentInfo;
- (CRLFreehandDrawingTransformInfo)initWithParentInfo:(id)info;
- (Class)editorClass;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)setRepresentedShapeInfos:(id)infos currentlyLaidOutOnLayoutController:(id)controller;
@end

@implementation CRLFreehandDrawingTransformInfo

- (CRLFreehandDrawingTransformInfo)initWithParentInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingTransformInfo;
  v5 = [(CRLFreehandDrawingTransformInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parentInfo, infoCopy);
  }

  return v6;
}

- (void)setRepresentedShapeInfos:(id)infos currentlyLaidOutOnLayoutController:(id)controller
{
  objc_storeStrong(&self->_representedShapeInfos, infos);
  infosCopy = infos;
  controllerCopy = controller;
  allObjects = [infosCopy allObjects];
  v9 = [_TtC8Freeform12CRLGroupItem groupGeometryFromChildrenInfos:allObjects currentlyLaidOutWithLayoutController:controllerCopy];

  geometry = self->_geometry;
  self->_geometry = v9;
}

- (CRLCanvasElementInfo)parentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  return WeakRetained;
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  if (WeakRetained == neededCopy)
  {

    objc_storeWeak(&self->_parentInfo, 0);
  }
}

- (Class)editorClass
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133D65C();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133D670(v2, v3);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133D71C();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EE10(v4, v2);
  }

  v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingTransformInfo editorClass]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingTransformInfo.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:74 isFatal:0 description:"We don't expect this to be called"];

  return 0;
}

@end