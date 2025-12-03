@interface CRLDragAndDropInfo
- (CGPoint)targetPreviewCenter;
- (CRLDragAndDropInfo)initWithPlatformDraggingInfo:(id)info;
- (UIDropSession)platformDraggingInfo;
@end

@implementation CRLDragAndDropInfo

- (CRLDragAndDropInfo)initWithPlatformDraggingInfo:(id)info
{
  infoCopy = info;
  if ([(CRLDragAndDropInfo *)self isMemberOfClass:objc_opt_class()])
  {
    v5 = objc_alloc(objc_opt_class());

    self = v5;
  }

  v27.receiver = self;
  v27.super_class = CRLDragAndDropInfo;
  v6 = [(CRLDragAndDropInfo *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_platformDraggingInfo, infoCopy);
    v8 = +[NSMutableArray array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    items = [infoCopy items];
    v10 = [items countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(items);
          }

          itemProvider = [*(*(&v23 + 1) + 8 * i) itemProvider];
          [v8 addObject:itemProvider];
        }

        v11 = [items countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    v15 = [[CRLiOSItemProviderItemSource alloc] initWithItemProviders:v8];
    itemSource = v7->_itemSource;
    v7->_itemSource = v15;

    if (!v7->_itemSource)
    {
      v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101311788();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013117B0(v17, v18);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131186C();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v19, v17);
      }

      v20 = [NSString stringWithUTF8String:"[CRLDragAndDropInfo initWithPlatformDraggingInfo:]"];
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragAndDropInfo.m"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:63 isFatal:0 description:"invalid nil value for '%{public}s'", "_itemSource"];
    }

    v7->_targetPreviewCenter = xmmword_1014629F0;
  }

  return v7;
}

- (UIDropSession)platformDraggingInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_platformDraggingInfo);

  return WeakRetained;
}

- (CGPoint)targetPreviewCenter
{
  x = self->_targetPreviewCenter.x;
  y = self->_targetPreviewCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end