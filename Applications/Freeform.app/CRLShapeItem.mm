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
- (void)p_onBoard:(id)a3 setPositionerCalculatedSize:(CGSize)a4;
- (void)setFill:(id)a3;
- (void)setHeadLineEnd:(id)a3;
- (void)setPathSource:(id)a3;
- (void)setShadow:(id)a3;
- (void)setStrokePatternOffsetDistance:(double)a3;
- (void)setTailLineEnd:(id)a3;
@end

@implementation CRLShapeItem

- (void)p_onBoard:(id)a3 setPositionerCalculatedSize:(CGSize)a4
{
  v19.receiver = self;
  v19.super_class = _TtC8Freeform12CRLShapeItem;
  [(CRLBoardItem *)&v19 p_onBoard:a3 setPositionerCalculatedSize:a4.width, a4.height];
  v5 = [(CRLShapeItem *)self pathSource];
  [v5 naturalSize];
  v7 = v6;
  v9 = v8;
  v10 = [(CRLBoardItemBase *)self geometry];
  [v10 size];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    v16 = [(CRLShapeItem *)self pathSource];
    v17 = [v16 copy];

    v18 = [(CRLBoardItemBase *)self geometry];
    [v18 size];
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
  v3 = self;

  LOBYTE(v2) = v2(v4);

  return (v2 & 1) == 0;
}

- (BOOL)supportsResize
{
  v2 = self;
  v3 = sub_100C33EC8();

  return v3 & 1;
}

- (CRLShadow)shadow
{
  v2 = *((swift_isaMask & *self->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x578);
  v3 = self;
  if (v2())
  {

    v4 = 0;
  }

  else
  {
    v5 = *(**&v3->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

    v7 = v5(v6);

    v4 = v7;
  }

  return v4;
}

- (void)setShadow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100C33968(a3);
}

- (CRLPathSource)pathSource
{
  v3 = **&self->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);
    v6 = self;

    v8 = v5(v7);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setPathSource:(id)a3
{
  v4 = a3;
  v7 = self;
  if (sub_1011255D0(v7))
  {
    v5 = **&v7->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    if (!swift_conformsToProtocol2())
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 848);

    v6(v4);
  }

  else
  {
  }
}

- (BOOL)isOpenPath
{
  v2 = *((swift_isaMask & *self->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x548);
  v3 = self;
  if (v2())
  {

    return 1;
  }

  else
  {
    v5 = (*((swift_isaMask & *v3->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x530))();
    v6 = [v5 isClosed];

    return v6 ^ 1;
  }
}

- (CRLFill)fill
{
  v2 = self;
  v3 = sub_100C34488();

  return v3;
}

- (void)setFill:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100C34730(a3);
}

- (BOOL)isFreehandDrawingShape
{
  v2 = self;
  sub_100C349A0();

  return 0;
}

- (BOOL)isTreatedAsFillForFreehandDrawing
{
  v2 = self;
  v3 = sub_100C34D80();

  return v3 & 1;
}

- (CRLLineEnd)headLineEnd
{
  v2 = self;
  v3 = sub_100C35B0C();

  return v3;
}

- (void)setHeadLineEnd:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100C35D48(a3);
}

- (CRLLineEnd)tailLineEnd
{
  v2 = self;
  v3 = sub_100C3632C();

  return v3;
}

- (void)setTailLineEnd:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100C36568(a3);
}

- (BOOL)isTailEndOnLeftBestGuess
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = self;

  sub_1009B27C4(sub_100C3B2C4, v3);

  swift_beginAccess();
  LOBYTE(self) = *(v3 + 16);

  return self;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v2 = self;
  v3 = sub_100C33F94();

  return v3 & 1;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  v2 = self;
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
    v11 = self;

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

- (void)setStrokePatternOffsetDistance:(double)a3
{
  v8 = self;
  if (sub_1011255D0(v8))
  {
    v3 = **&v8->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
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
  v3 = self;
  if (v2())
  {

    return 0;
  }

  else
  {
    v5 = (*((swift_isaMask & *v3->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x4F8))();

    return v5 != 6;
  }
}

- (BOOL)allowsChangeShape
{
  v2 = *((swift_isaMask & *self->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x548);
  v3 = self;
  if (v2())
  {

    return 0;
  }

  else
  {
    v5 = (*((swift_isaMask & *v3->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x530))();
    v6 = [v5 bezierPath];

    LOBYTE(v5) = [v6 isLineSegment];
    return v5 ^ 1;
  }
}

@end