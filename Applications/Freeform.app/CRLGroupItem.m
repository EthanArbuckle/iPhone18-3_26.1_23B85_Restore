@interface CRLGroupItem
+ (CGSize)unscaledSizeForEmptyGroups;
+ (id)groupGeometryFromChildrenInfos:(id)a3;
+ (id)groupGeometryFromChildrenInfos:(id)a3 currentlyLaidOutWithLayoutController:(id)a4;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)containsUnknownContent;
- (BOOL)isEffectivelyEmpty;
- (BOOL)isItemAllowed:(id)a3;
- (BOOL)isSelectable;
- (BOOL)makeChildGeometriesRelativeAndComputeOwnAbsoluteGeometryAndReturnError:(id *)a3;
- (BOOL)requiresAdditionalBoardItemsForCopyImaging;
- (BOOL)shouldBeIgnoredWhenCopying;
- (BOOL)supportsParentRotation;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases;
- (NSArray)generativePlaygroundImageItems;
- (id)groupedGeometryForChildItem:(id)a3;
- (id)ungroupedGeometryForChildItem:(id)a3;
- (void)crl_onBoard:(id)a3 moveItemToPosition:(CGPoint)a4 size:(CGSize)a5;
- (void)prepareBoardItemForConnectorModeDuplication;
@end

@implementation CRLGroupItem

- (void)crl_onBoard:(id)a3 moveItemToPosition:(CGPoint)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v10 = a3;
  [(CRLGroupItem *)self allNestedChildrenItemsIncludingGroups];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v11 = v61 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v12)
  {
    v13 = *v61;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v61 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v60 + 1) + 8 * i) geometry];
        if (![v15 widthValid] || (objc_msgSend(v15, "heightValid") & 1) == 0)
        {

          [(CRLBoardItem *)self visibleBoundsForPositioning];
          goto LABEL_65;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v60 objects:v67 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  [(CRLBoardItem *)self visibleBoundsForPositioning];
  v18 = v16;
  v19 = v17;
  if (v16 != width || v17 != height)
  {
    if (v16 <= 0.0)
    {
      v20 = 0.0;
      if (width != 0.0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138B320();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138B348();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138B3D0();
        }

        v21 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138B3F8(v21);
        }

        v22 = [NSString stringWithUTF8String:"[CRLGroupItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]"];
        v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m"];
        [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:195 isFatal:0 description:"Desired size is an impossible multiple of current size."];
      }
    }

    else
    {
      v20 = width / v16;
    }

    if (v19 <= 0.0)
    {
      v24 = 0.0;
      if (height != 0.0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138B4A8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138B4D0();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138B558();
        }

        v25 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138B580(v25);
        }

        v26 = [NSString stringWithUTF8String:"[CRLGroupItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]"];
        v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m"];
        [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:201 isFatal:0 description:"Desired size is an impossible multiple of current size."];
      }
    }

    else
    {
      v24 = height / v19;
    }

    if (v20 == 0.0)
    {
      v20 = v24;
    }

    else if (v24 == 0.0)
    {
      v24 = v20;
    }

    if (v24 != v20 && vabdd_f64(v24, v20) >= 0.00999999978)
    {
      v28 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138B630();
      }

      v29 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110402;
        *&buf[4] = v28;
        *v66 = 2082;
        *&v66[2] = "[CRLGroupItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]";
        *&v66[10] = 2082;
        *&v66[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m";
        *&v66[20] = 1024;
        *&v66[22] = 208;
        *&v66[26] = 2048;
        *&v66[28] = v24;
        *&v66[36] = 2048;
        *&v66[38] = v20;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d group resize is off-scale (%f vs %f)", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138B658();
      }

      v30 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138B680(v30);
      }

      v31 = [NSString stringWithUTF8String:"[CRLGroupItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]"];
      v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m"];
      [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:208 isFatal:0 description:"group resize is off-scale (%f vs %f)", *&v24, *&v20];
    }

    *buf = 0;
    *v66 = buf;
    *&v66[8] = 0x3010000000;
    *&v66[16] = &unk_1016A8115;
    *&v66[24] = CGSizeZero;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100517CA4;
    v59[3] = &unk_1018453B0;
    v59[4] = buf;
    [(CRLBoardItem *)self withTemporaryLayoutPerform:v59];
    v33 = *(*v66 + 32);
    v34 = *(*v66 + 40);
    if (height < v34 || (v34 = height, width < v33))
    {
      v35 = v34 / v19;
      if (width >= v33)
      {
        v33 = width;
      }

      v24 = fmax(v35, v33 / v18);
      v20 = v24;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v36 = [(CRLGroupItem *)self childrenToPosition];
    v37 = [v36 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v37)
    {
      v38 = *v56;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v56 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = *(*(&v55 + 1) + 8 * j);
          v41 = objc_opt_class();
          v42 = sub_100014370(v41, v40);
          [v42 visibleBoundsForPositioning];
          [v42 crl_onBoard:v10 moveItemToPosition:v20 * v43 size:{v24 * v44, v20 * v45, v24 * v46}];
        }

        v37 = [v36 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v37);
    }

    _Block_object_dispose(buf, 8);
  }

LABEL_65:
  [(CRLBoardItem *)self visibleBoundsForPositioning];
  v49 = v48;
  if (v48 != x || v47 != y)
  {
    v50 = [(CRLBoardItemBase *)self geometry];
    v51 = [v50 mutableCopy];

    v52 = sub_10011F31C(x, y, v49);
    [v51 position];
    [v51 setPosition:{sub_10011F334(v53, v54, v52)}];
    [(CRLBoardItemBase *)self setGeometry:v51];
  }
}

- (BOOL)isSelectable
{
  v2 = self;
  if (sub_1005F4200())
  {

    return 0;
  }

  else
  {
    v4 = sub_1005F436C();

    return !v4;
  }
}

- (Class)layoutClass
{
  sub_100006370(0, &unk_1019F5760);

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  sub_100006370(0, &qword_1019F5758);

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  sub_100006370(0, &qword_1019F5750);

  return swift_getObjCClassFromMetadata();
}

- (void)prepareBoardItemForConnectorModeDuplication
{
  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *&self->_TtC8Freeform16CRLContainerItem_opaque[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  v5 = self;
  if (!v4)
  {
    sub_10096C7D4();
    v4 = *&self->_TtC8Freeform16CRLContainerItem_opaque[v3];
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_15:

    goto LABEL_16;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    (*((swift_isaMask & *v9) + 0x210))();
  }

LABEL_16:
}

- (BOOL)isItemAllowed:(id)a3
{
  v3 = (*((swift_isaMask & *a3) + 0xC8))(self, a2);
  if ((v5 & 0x100) == 0)
  {
    return 1;
  }

  if (!(v3 | v4) && v5 == 0)
  {
    return 1;
  }

  v7 = v3 == 1 && v4 == 0;
  if (v7 && v5 == 0)
  {
    return 1;
  }

  v9 = v3 == 2 && v4 == 0;
  if (v9 && v5 == 0)
  {
    return 1;
  }

  v11 = v3 == 3 && v4 == 0;
  if (v11 && v5 == 0)
  {
    return 1;
  }

  v13 = v3 == 4 && v4 == 0;
  if (v13 && v5 == 0)
  {
    return 1;
  }

  v15 = v3 == 5 && v4 == 0;
  if (v15 && v5 == 0)
  {
    return 1;
  }

  v17 = v3 == 6 && v4 == 0;
  if (v17 && v5 == 0)
  {
    return 1;
  }

  v19 = v3 == 7 && v4 == 0;
  v20 = v19 && v5 == 0;
  if (v20 || v3 == 8 && !v4 && !v5 || v3 == 9 && !v4 && !v5 || v3 == 10 && !v4 && !v5)
  {
    return 1;
  }

  v23 = v3 == 11 && v4 == 0;
  return !v5 && v23;
}

- (BOOL)isEffectivelyEmpty
{
  v2 = self;
  v3 = sub_1005F4200();

  return v3;
}

- (BOOL)containsUnknownContent
{
  v2 = self;
  v3 = sub_1005F436C();

  return v3;
}

- (BOOL)requiresAdditionalBoardItemsForCopyImaging
{
  v2 = self;
  v3 = sub_1005F44CC();

  return v3 & 1;
}

- (BOOL)shouldBeIgnoredWhenCopying
{
  v2 = self;
  v3 = sub_1005F4654();

  return v3;
}

+ (CGSize)unscaledSizeForEmptyGroups
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)supportsParentRotation
{
  v2 = self;
  v3 = sub_1005F4814();

  return v3 & 1;
}

+ (id)groupGeometryFromChildrenInfos:(id)a3
{
  type metadata accessor for CRLBoardItem(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = sub_1005F49A4(v3);

  return v4;
}

+ (id)groupGeometryFromChildrenInfos:(id)a3 currentlyLaidOutWithLayoutController:(id)a4
{
  type metadata accessor for CRLBoardItem(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  v7 = sub_1005F6690(v5, v6);

  return v7;
}

- (id)groupedGeometryForChildItem:(id)a3
{
  v4 = *((swift_isaMask & *a3) + 0xE0);
  v5 = a3;
  v6 = self;
  v7 = v4();
  v8 = *(**&v6->_TtC8Freeform16CRLContainerItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v10 = v8(v9);

  v11 = [v7 geometryRelativeToGeometry:v10];

  return v11;
}

- (id)ungroupedGeometryForChildItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1005F4F44(v4);

  return v6;
}

- (BOOL)makeChildGeometriesRelativeAndComputeOwnAbsoluteGeometryAndReturnError:(id *)a3
{
  v3 = self;
  sub_1005F582C();

  return 1;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v2 = self;
  v3 = sub_1005F5D88();

  return v3 & 1;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  v2 = self;
  v3 = sub_1005F5FC0();

  return v3 & 1;
}

- (NSArray)additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases
{
  v2 = self;
  v3 = sub_1005F36D4();
  sub_100798D00(v3);

  type metadata accessor for CRLBoardItem(0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (NSArray)generativePlaygroundImageItems
{
  if ((*((swift_isaMask & *self->_TtC8Freeform16CRLContainerItem_opaque) + 0x688))())
  {
    sub_1005B981C(&unk_1019F4D60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101465920;
    *(v3 + 32) = self;
    v4 = self;
  }

  else
  {
    v5 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v6 = *&self->_TtC8Freeform16CRLContainerItem_opaque[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    v7 = self;
    if (!v6)
    {
      sub_10096C7D4();
      v6 = *&self->_TtC8Freeform16CRLContainerItem_opaque[v5];
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    sub_10126708C(v8);
  }

  type metadata accessor for CRLBoardItem(0);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

@end