@interface CRLShapeItem
- (BOOL)allowedToBeDragAndDropped;
- (BOOL)allowsChangeShape;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)canCopyStyle;
- (BOOL)isFreehandDrawingShape;
- (BOOL)isOpenPath;
- (BOOL)isTailEndOnLeftBestGuess;
- (BOOL)isTreatedAsFillForFreehandDrawing;
- (BOOL)supportsResize;
- (CRLFill)fill;
- (CRLLineEnd)headLineEnd;
- (CRLLineEnd)tailLineEnd;
- (CRLPathSource)pathSource;
- (CRLShadow)shadow;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (double)strokePatternOffsetDistance;
- (void)p_onBoard:(id)board setPositionerCalculatedSize:(CGSize)size;
- (void)setFill:(id)fill;
- (void)setHeadLineEnd:(id)end;
- (void)setPathSource:(id)source;
- (void)setShadow:(id)shadow;
- (void)setStrokePatternOffsetDistance:(double)distance;
- (void)setTailLineEnd:(id)end;
@end

@implementation CRLShapeItem

- (void)p_onBoard:(id)board setPositionerCalculatedSize:(CGSize)size
{
  v19.receiver = self;
  v19.super_class = _TtC8Freeform12CRLShapeItem;
  [(CRLBoardItem *)&v19 p_onBoard:board setPositionerCalculatedSize:size.width, size.height];
  pathSource = [(CRLShapeItem *)self pathSource];
  [pathSource naturalSize];
  v7 = v6;
  v9 = v8;
  geometry = [(CRLBoardItemBase *)self geometry];
  [geometry size];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    pathSource2 = [(CRLShapeItem *)self pathSource];
    v17 = [pathSource2 copy];

    geometry2 = [(CRLBoardItemBase *)self geometry];
    [geometry2 size];
    [v17 setNaturalSize:?];

    [(CRLShapeItem *)self setPathSource:v17];
  }
}

- (Class)layoutClass
{
  sub_100006370(0, &qword_101A0F448);

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  sub_100006370(0, &qword_101A0F438);

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  sub_100006370(0, &qword_101A0C7E0);

  return swift_getObjCClassFromMetadata();
}

- (BOOL)allowedToBeDragAndDropped
{
  v2 = *(**&self->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 368);
  selfCopy = self;

  LOBYTE(v2) = v2(v4);

  return (v2 & 1) == 0;
}

- (BOOL)supportsResize
{
  selfCopy = self;
  v3 = sub_100C33EC8();

  return v3 & 1;
}

- (CRLShadow)shadow
{
  v2 = *((swift_isaMask & *self->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x578);
  selfCopy = self;
  if (v2())
  {

    v4 = 0;
  }

  else
  {
    v5 = *(**&selfCopy->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

    v7 = v5(v6);

    v4 = v7;
  }

  return v4;
}

- (void)setShadow:(id)shadow
{
  shadowCopy = shadow;
  selfCopy = self;
  sub_100C33968(shadow);
}

- (CRLPathSource)pathSource
{
  v3 = **&self->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);
    selfCopy = self;

    v8 = v5(v7);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setPathSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  if (sub_1011255D0(selfCopy))
  {
    v5 = **&selfCopy->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    if (!swift_conformsToProtocol2())
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 848);

    v6(sourceCopy);
  }

  else
  {
  }
}

- (BOOL)isOpenPath
{
  v2 = *((swift_isaMask & *self->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x548);
  selfCopy = self;
  if (v2())
  {

    return 1;
  }

  else
  {
    v5 = (*((swift_isaMask & *selfCopy->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x530))();
    isClosed = [v5 isClosed];

    return isClosed ^ 1;
  }
}

- (CRLFill)fill
{
  selfCopy = self;
  v3 = sub_100C34488();

  return v3;
}

- (void)setFill:(id)fill
{
  fillCopy = fill;
  selfCopy = self;
  sub_100C34730(fill);
}

- (BOOL)isFreehandDrawingShape
{
  selfCopy = self;
  sub_100C349A0();

  return 0;
}

- (BOOL)isTreatedAsFillForFreehandDrawing
{
  selfCopy = self;
  v3 = sub_100C34D80();

  return v3 & 1;
}

- (CRLLineEnd)headLineEnd
{
  selfCopy = self;
  v3 = sub_100C35B0C();

  return v3;
}

- (void)setHeadLineEnd:(id)end
{
  endCopy = end;
  selfCopy = self;
  sub_100C35D48(end);
}

- (CRLLineEnd)tailLineEnd
{
  selfCopy = self;
  v3 = sub_100C3632C();

  return v3;
}

- (void)setTailLineEnd:(id)end
{
  endCopy = end;
  selfCopy = self;
  sub_100C36568(end);
}

- (BOOL)isTailEndOnLeftBestGuess
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  selfCopy = self;

  sub_1009B27C4(sub_100C3B2C4, v3);

  swift_beginAccess();
  LOBYTE(self) = *(v3 + 16);

  return self;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  selfCopy = self;
  v3 = sub_100C33F94();

  return v3 & 1;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  selfCopy = self;
  v3 = sub_100C340BC();

  return v3 & 1;
}

- (double)strokePatternOffsetDistance
{
  v3 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = **&self->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  v7 = swift_conformsToProtocol2();
  if (v7)
  {
    v9 = v7;
    v10 = *(v7 + 16);
    selfCopy = self;

    v10(v6, v9);

    sub_1005B981C(&unk_101A0D9C0);
    CRRegister.wrappedValue.getter();

    sub_100C3B20C(v5, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    return v12[3];
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setStrokePatternOffsetDistance:(double)distance
{
  selfCopy = self;
  if (sub_1011255D0(selfCopy))
  {
    v3 = **&selfCopy->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + 32);

      v7 = v6(v9, v3, v5);
      type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
      sub_1005B981C(&unk_101A0D9C0);
      CRRegister.wrappedValue.setter();
      v7(v9, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

- (BOOL)canCopyStyle
{
  v2 = *((swift_isaMask & *self->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x578);
  selfCopy = self;
  if (v2())
  {

    return 0;
  }

  else
  {
    v5 = (*((swift_isaMask & *selfCopy->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x4F8))();

    return v5 != 6;
  }
}

- (BOOL)allowsChangeShape
{
  v2 = *((swift_isaMask & *self->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x548);
  selfCopy = self;
  if (v2())
  {

    return 0;
  }

  else
  {
    v5 = (*((swift_isaMask & *selfCopy->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x530))();
    bezierPath = [v5 bezierPath];

    LOBYTE(v5) = [bezierPath isLineSegment];
    return v5 ^ 1;
  }
}

@end