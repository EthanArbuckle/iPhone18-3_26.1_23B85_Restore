@interface CRLBoardItem
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)aspectRatioLocked;
- (BOOL)canBeGrouped;
- (BOOL)canCopyData;
- (BOOL)crl_isEqualValue:(id)a3;
- (BOOL)enableDefaultFloatingEffect;
- (BOOL)forcesPlacementOnBottom;
- (BOOL)forcesPlacementOnTop;
- (BOOL)hasSpatialTransform;
- (BOOL)isAnchoredToTable;
- (BOOL)isDirectlyAnchoredToTable;
- (BOOL)isInBoard;
- (BOOL)isInSurface;
- (BOOL)isLockable;
- (BOOL)isSelectable;
- (BOOL)isSupported;
- (BOOL)isTransactableEqualValue:(id)a3;
- (BOOL)locked;
- (BOOL)shouldBeIgnoredWhenCopying;
- (BOOL)shouldPreventDragAndDropWithItem:(id)a3;
- (CGAffineTransform)computeLayoutFullTransform;
- (CGAffineTransform)transformInRoot;
- (CGPoint)autosizePositionOffsetForGeometry:(id)a3 dynamicallyDraggedLayout:(id)a4;
- (CGPoint)centerForReplacingWithNewItem;
- (CGRect)visibleBoundsForPositioning;
- (CRLCanvasInfoGeometry)geometry;
- (CRLShadow)shadow;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases;
- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem;
- (NSArray)stringContentForSearch;
- (NSString)accessibilityDescription;
- (NSString)suggestedNameWhenDraggingSingleBoardItem;
- (NSURL)hyperlinkURL;
- (NSUUID)id;
- (NSUUID)parentUUID;
- (_TtC8Freeform12CRLBoardItem)init;
- (_TtC8Freeform12CRLGroupItem)containingGroup;
- (_TtC8Freeform12CRLTableItem)anchoringTableItemIfAny;
- (_TtC8Freeform14CRLSurfaceItem)surfaceAncestor;
- (_TtC8Freeform16CRLContainerItem)parentContainerItem;
- (_TtC8Freeform8CRLBoard)parentBoard;
- (__n128)spatialTransform_simd;
- (id)getReferencedAssetIDsWithIncludeChildren:(BOOL)a3;
- (id)parentInfo;
- (id)promisedDataForPublicType:(id)a3;
- (int64_t)compareUsingUUIDTo:(id)a3;
- (void)crl_onBoard:(id)a3 moveItemToPosition:(CGPoint)a4 size:(CGSize)a5;
- (void)p_onBoard:(id)a3 setPositionerCalculatedSize:(CGSize)a4;
- (void)setHyperlinkURL:(id)a3;
- (void)setParentInfo:(id)a3;
- (void)setSpatialTransform:(__n128)a3;
- (void)takePropertiesFromReplacedBoardItem:(id)a3;
- (void)updateGeometryToReplaceBoardItem:(id)a3;
- (void)withTemporaryLayoutPerform:(id)a3;
@end

@implementation CRLBoardItem

- (id)parentInfo
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGRect)visibleBoundsForPositioning
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x4010000000;
  v20 = &unk_1016A8115;
  v21 = 0u;
  v22 = 0u;
  v3 = [(CRLBoardItem *)self geometry];
  [v3 boundsBeforeRotation];
  *&v21 = v4;
  *(&v21 + 1) = v5;
  *&v22 = v6;
  *(&v22 + 1) = v7;

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1005166F8;
  v16[3] = &unk_1018453B0;
  v16[4] = &v17;
  [(CRLBoardItem *)self withTemporaryLayoutPerform:v16];
  v8 = v18[4];
  v9 = v18[5];
  v10 = v18[6];
  v11 = v18[7];
  _Block_object_dispose(&v17, 8);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)p_onBoard:(id)a3 setPositionerCalculatedSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [(CRLBoardItem *)self geometry];
  v12 = [v7 mutableCopy];

  if (fabs(width) < 0.001 && width < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = width;
  }

  if (fabs(height) < 0.001 && height < 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = height;
  }

  [v12 setSize:{v9, v11}];
  [(CRLBoardItem *)self setGeometry:v12];
}

- (void)crl_onBoard:(id)a3 moveItemToPosition:(CGPoint)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v10 = a3;
  [(CRLBoardItem *)self visibleBoundsForPositioning];
  if (v11 != width || v12 != height)
  {
    v14 = v12;
    if (v11 <= 0.0)
    {
      v15 = 0.0;
      if (width != 0.0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138AFE8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138AFFC();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138B084();
        }

        v16 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v16);
        }

        v17 = [NSString stringWithUTF8String:"[CRLBoardItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]"];
        v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m"];
        [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:56 isFatal:0 description:"Desired size is an impossible multiple of current size."];
      }
    }

    else
    {
      v15 = width / v11;
    }

    if (v14 <= 0.0)
    {
      v19 = 0.0;
      if (height != 0.0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138B0AC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138B0D4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138B15C();
        }

        v20 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v20);
        }

        v21 = [NSString stringWithUTF8String:"[CRLBoardItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]"];
        v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m"];
        [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:62 isFatal:0 description:"Desired size is an impossible multiple of current size."];
      }
    }

    else
    {
      v19 = height / v14;
    }

    memset(&v41, 0, sizeof(v41));
    CGAffineTransformMakeScale(&v41, v15, v19);
    memset(&v40, 0, sizeof(v40));
    v23 = [(CRLBoardItem *)self geometry];
    [v23 angle];
    CGAffineTransformMakeRotation(&v39, v24 * 0.0174532925);
    v38 = v41;
    sub_100139E2C(&v38, &v39, &v40);

    v25 = [(CRLBoardItem *)self geometry];
    [v25 size];
    v37 = vmlaq_n_f64(vmulq_n_f64(*&v40.c, v26), *&v40.a, v27);

    [(CRLBoardItem *)self p_onBoard:v10 setPositionerCalculatedSize:*&v37];
  }

  [(CRLBoardItem *)self visibleBoundsForPositioning];
  if (v28 != x || v29 != y)
  {
    v31 = v28;
    v32 = [(CRLBoardItem *)self geometry];
    v33 = [v32 mutableCopy];

    v34 = sub_10011F31C(x, y, v31);
    [v33 position];
    [v33 setPosition:{sub_10011F334(v35, v36, v34)}];
    [(CRLBoardItem *)self setGeometry:v33];
  }
}

- (_TtC8Freeform12CRLGroupItem)containingGroup
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for CRLGroupItem();
    Strong = swift_dynamicCastClass();
    if (!Strong)
    {
      v5 = self;
      v6 = [v4 containingGroup];

      Strong = v6;
    }
  }

  return Strong;
}

- (_TtC8Freeform16CRLContainerItem)parentContainerItem
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for CRLContainerItem(0);
    Strong = swift_dynamicCastClass();
    if (!Strong)
    {

      Strong = 0;
    }
  }

  return Strong;
}

- (NSUUID)id
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)compareUsingUUIDTo:(id)a3
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v21 - v11;
  (*((swift_isaMask & *self) + 0x88))(v10);
  v13 = a3;
  v14 = self;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = *(v6 + 8);
  v17 = v16(v12, v5);
  (*((swift_isaMask & *v13) + 0x88))(v17);
  v18 = UUID._bridgeToObjectiveC()().super.isa;
  v16(v8, v5);
  v19 = [(objc_class *)isa crl_compare:v18];

  return v19;
}

- (NSUUID)parentUUID
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CRLCanvasInfoGeometry)geometry
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setSpatialTransform:(__n128)a3
{
  v9 = 0;
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v8 = 0;
  v5 = *((swift_isaMask & *a1) + 0x118);
  v6 = a1;
  v5(v7);
}

- (BOOL)hasSpatialTransform
{
  v2 = *((swift_isaMask & *self) + 0x110);
  v3 = self;
  v2(v5);
  LOBYTE(v2) = v6;

  return (v2 & 1) == 0;
}

- (__n128)spatialTransform_simd
{
  v1 = a1;
  v3 = sub_1009AF680();

  return v3;
}

- (BOOL)isDirectlyAnchoredToTable
{
  v2 = self;
  v3 = sub_1009AFC00();

  return v3;
}

- (BOOL)isAnchoredToTable
{
  v2 = self;
  v3 = sub_1009AFD54(v2);

  return v3 & 1;
}

- (_TtC8Freeform12CRLTableItem)anchoringTableItemIfAny
{
  v2 = self;
  v3 = sub_1009AFEC4();

  return v3;
}

- (BOOL)locked
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)canBeGrouped
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)aspectRatioLocked
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSString)accessibilityDescription
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CRLShadow)shadow
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)shouldPreventDragAndDropWithItem:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  type metadata accessor for CRLFreehandDrawingShapeItem();
  return swift_dynamicCastClass() != 0;
}

- (BOOL)enableDefaultFloatingEffect
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)forcesPlacementOnTop
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)forcesPlacementOnBottom
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSURL)hyperlinkURL
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC8Freeform12CRLBoardItem_hyperlinkURL;
  swift_beginAccess();
  sub_10000BE14(self + v6, v5, &unk_1019F33C0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setHyperlinkURL:(id)a3
{
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC8Freeform12CRLBoardItem_hyperlinkURL;
  swift_beginAccess();
  v11 = self;
  sub_10002C638(v7, self + v10, &unk_1019F33C0);
  swift_endAccess();
}

- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSString)suggestedNameWhenDraggingSingleBoardItem
{
  v2 = self;
  sub_1009B05A0();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)promisedDataForPublicType:(id)a3
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 8))(v7, v4);

  return 0;
}

- (BOOL)shouldBeIgnoredWhenCopying
{
  v2 = *((swift_isaMask & *self) + 0x160);
  v3 = self;
  if (v2())
  {
    v4 = 1;
  }

  else
  {
    v4 = (*((swift_isaMask & *v3) + 0x270))();
  }

  return v4 & 1;
}

- (BOOL)canCopyData
{
  v2 = *((swift_isaMask & *self) + 0x270);
  v3 = self;
  LOBYTE(v2) = v2();

  return (v2 & 1) == 0;
}

- (void)takePropertiesFromReplacedBoardItem:(id)a3
{
  v4 = *((swift_isaMask & *self) + 0x298);
  v5 = a3;
  v9 = self;
  v6 = v4(v5);
  v7 = *((swift_isaMask & *v5) + 0x110);
  v8 = v7(v10, v6);
  if ((v11 & 1) == 0)
  {
    v7(v12, v8);
    (*((swift_isaMask & *v9) + 0x118))(v12);
  }
}

- (void)updateGeometryToReplaceBoardItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1009B1D18(v4);
}

- (CGPoint)centerForReplacingWithNewItem
{
  v2 = *((swift_isaMask & *self) + 0xE0);
  v3 = self;
  v4 = v2();
  [v4 center];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)autosizePositionOffsetForGeometry:(id)a3 dynamicallyDraggedLayout:(id)a4
{
  v4 = 0.0;
  v5 = 0.0;
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)setParentInfo:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1009B2368(a3);
}

- (BOOL)isSelectable
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (Class)layoutClass
{
  sub_100006370(0, &qword_101A287B0);

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  sub_100006370(0, &qword_1019FB7A0);

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  sub_100006370(0, &qword_101A0E8B0);

  return swift_getObjCClassFromMetadata();
}

- (void)withTemporaryLayoutPerform:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1009B27C4(sub_1009C3294, v5);
}

- (BOOL)isLockable
{
  v2 = [(CRLBoardItem *)self containingGroup];
  v3 = v2;
  if (v2)
  {
  }

  return v3 == 0;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  v2 = *((swift_isaMask & *self) + 0xE0);
  v3 = self;
  v4 = v2();
  [v4 transform];
  v8 = v11;
  v9 = v10;
  v7 = v12;

  v10 = v9;
  v11 = v8;
  v12 = v7;
  if (sub_100139B08(&v10, 0.0001))
  {
    if ((*((swift_isaMask & *v3) + 0x190))())
    {
      v5 = (*((swift_isaMask & *v3) + 0x330))();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (CGAffineTransform)computeLayoutFullTransform
{
  v5 = swift_allocObject();
  v5[2] = 1.0;
  v5[3] = 0.0;
  v5[4] = 0.0;
  v5[6] = 0.0;
  v5[7] = 0.0;
  v5[5] = 1.0;
  v6 = self;

  sub_1009B27C4(sub_1009C328C, v5);

  swift_beginAccess();
  v7 = v5[6];
  v8 = v5[7];
  v10 = *(v5 + 2);
  v11 = *(v5 + 1);

  *&retstr->a = v11;
  *&retstr->c = v10;
  retstr->tx = v7;
  retstr->ty = v8;
  return result;
}

- (CGAffineTransform)transformInRoot
{
  v4 = self;
  b = 0.0;
  a = 1.0;
  Strong = v4;
  c = 0.0;
  d = 1.0;
  tx = 0.0;
  ty = 0.0;
  do
  {
    v12 = *((swift_isaMask & *Strong) + 0xE0);
    v13 = Strong;
    v14 = v12();
    [v14 transform];
    v17 = *&t1.c;
    v18 = *&t1.a;
    v16 = *&t1.tx;

    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v18;
    *&t2.c = v17;
    *&t2.tx = v16;
    CGAffineTransformConcat(&v19, &t1, &t2);
    a = v19.a;
    b = v19.b;
    c = v19.c;
    d = v19.d;
    tx = v19.tx;
    ty = v19.ty;
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  while (Strong);

  retstr->a = a;
  retstr->b = b;
  retstr->c = c;
  retstr->d = d;
  retstr->tx = tx;
  retstr->ty = ty;
  return result;
}

- (NSArray)additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases
{
  type metadata accessor for CRLBoardItem(0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC8Freeform8CRLBoard)parentBoard
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *((swift_isaMask & *Strong) + 0x380);
    v6 = self;
    v7 = v5();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isInBoard
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *((swift_isaMask & *Strong) + 0x388);
    v6 = self;
    v7 = v5();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)isInSurface
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *((swift_isaMask & *Strong) + 0x390);
    v6 = self;
    v7 = v5();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)isTransactableEqualValue:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = (*((swift_isaMask & *self) + 0x410))(v8);

  sub_10000CAAC(v8, &unk_1019F4D00);
  return v6 & 1;
}

- (id)getReferencedAssetIDsWithIncludeChildren:(BOOL)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isSupported
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSArray)stringContentForSearch
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)crl_isEqualValue:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8Freeform12CRLBoardItem)init
{
  *(self + OBJC_IVAR____TtC8Freeform12CRLBoardItem_transactionContext) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8Freeform12CRLBoardItem_hyperlinkURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLBoardItem(0);
  return [(CRLBoardItem *)&v6 init];
}

- (_TtC8Freeform14CRLSurfaceItem)surfaceAncestor
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for CRLSurfaceItem();
    Strong = swift_dynamicCastClass();
    if (!Strong)
    {
      v4 = [v3 surfaceAncestor];

      Strong = v4;
    }
  }

  return Strong;
}

@end