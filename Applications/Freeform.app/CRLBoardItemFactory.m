@interface CRLBoardItemFactory
- (NSUUID)rootContainerUUID;
- (_TtC8Freeform19CRLBoardItemFactory)init;
- (id)blockToRunCommandToPostProcessWithNewBoardItem:(id)a3 shapeType:(int64_t)a4 infosToConnect:(id)a5 commandController:(id)a6;
- (id)makeDuplicateOfBoardItem:(id)a3;
- (id)makeDuplicateOfBoardItems:(id)a3;
- (id)makeDuplicateOfBoardItems:(id)a3 UUIDRemappingBlock:(id)a4;
- (id)makeFileItemWithFileData:(id)a3 posterImageData:(id)a4 title:(id)a5 geometry:(id)a6;
- (id)makeFreehandDrawingItemWithGeometry:(id)a3;
- (id)makeGroupItemWithGeometry:(id)a3;
- (id)makeGroupItemWithGeometry:(id)a3 childItems:(id)a4 error:(id *)a5;
- (id)makeImageItemWithGeometry:(id)a3 imageData:(id)a4 thumbnailData:(id)a5;
- (id)makeMovieItemWithGeometry:(id)a3 movieData:(id)a4 posterImageData:(id)a5 posterTime:(double)a6;
- (id)makeShapeItemForDiagramWithConnectingTo:(id)a3 with:(id)a4 shapeType:(int64_t)a5;
- (id)makeShapeItemForFreehandDrawingWithPathSource:(id)a3 position:(CGPoint)a4 stroke:(id)a5 fill:(id)a6 pencilKitStrokePathCompactData:(id)a7 maskPath:(id)a8;
- (id)makeShapeItemForFreehandDrawingWithPathSource:(id)a3 position:(CGPoint)a4 stroke:(id)a5 fill:(id)a6 pencilKitStrokePathCompactData:(id)a7 maskPath:(id)a8 snappedShapeType:(int64_t)a9;
- (id)makeShapeItemForShapeLibrarySwatchWithShapeType:(int64_t)a3 pathSource:(id)a4 position:(CGPoint)a5 angleInDegrees:(double)a6;
- (id)makeShapeItemWithShapeType:(int64_t)a3;
- (id)makeShapeItemWithShapeType:(int64_t)a3 pathSource:(id)a4;
- (id)makeShapeItemWithShapeType:(int64_t)a3 pathSource:(id)a4 position:(CGPoint)a5;
- (id)makeShapeItemWithShapeType:(int64_t)a3 pathSource:(id)a4 preservePathSourceSize:(BOOL)a5 position:(CGPoint)a6;
- (id)makeShapeItemWithShapeType:(int64_t)a3 pathSource:(id)a4 preservePathSourceSize:(BOOL)a5 position:(CGPoint)a6 angleInDegrees:(double)a7;
- (id)makeShapeItemWithShapeType:(int64_t)a3 pathSource:(id)a4 preservePathSourceSize:(BOOL)a5 position:(CGPoint)a6 angleInDegrees:(double)a7 stroke:(id)a8 fill:(id)a9 headLineEnd:(id)a10 tailLineEnd:(id)a11;
- (id)makeStickyNoteItem;
- (id)makeStickyNoteItemWithAttributedString:(id)a3;
- (id)makeSurfaceItemWithGeometry:(id)a3;
- (id)makeTableItemWithGeometry:(id)a3;
- (id)makeTextBoxItemWithStorage:(id)a3;
- (id)makeTextboxItemWithAttributedString:(id)a3;
- (id)makeTextboxItemWithPosition:(CGPoint)a3 string:(id)a4;
- (id)makeTextboxItemWithString:(id)a3;
- (id)makeURLItemWithGeometry:(id)a3 metadataAsset:(id)a4 url:(id)a5;
@end

@implementation CRLBoardItemFactory

- (NSUUID)rootContainerUUID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(*(*(&self->super.isa + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (id)makeGroupItemWithGeometry:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10110DBDC(v4);

  return v6;
}

- (id)makeGroupItemWithGeometry:(id)a3 childItems:(id)a4 error:(id *)a5
{
  type metadata accessor for CRLBoardItem(0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  v10 = sub_10110D21C(v8, v7);

  return v10;
}

- (id)makeFreehandDrawingItemWithGeometry:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_101110D38(v4);

  return v6;
}

- (id)makeImageItemWithGeometry:(id)a3 imageData:(id)a4 thumbnailData:(id)a5
{
  v9 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for CRLAssetData();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3;
  v17 = a4;
  v18 = self;
  v19 = a5;
  sub_101110F2C(v17, v15);
  if (v19)
  {
    v20 = v19;
    sub_101110F2C(v20, v11);

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v13 + 56))(v11, v21, 1, v12);
  v22 = sub_10111147C(v16, v15, v11);

  sub_10000CAAC(v11, &unk_101A1B880);
  sub_10112556C(v15, type metadata accessor for CRLAssetData);

  return v22;
}

- (id)makeMovieItemWithGeometry:(id)a3 movieData:(id)a4 posterImageData:(id)a5 posterTime:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  v14 = sub_101111C9C(v10, v11, a5, a6);

  return v14;
}

- (id)makeShapeItemWithShapeType:(int64_t)a3
{
  v5 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1006950BC(v14);
  v12[12] = v14[12];
  v12[13] = v14[13];
  v12[14] = v14[14];
  v13 = v15;
  v12[8] = v14[8];
  v12[9] = v14[9];
  v12[10] = v14[10];
  v12[11] = v14[11];
  v12[4] = v14[4];
  v12[5] = v14[5];
  v12[6] = v14[6];
  v12[7] = v14[7];
  v12[0] = v14[0];
  v12[1] = v14[1];
  v12[2] = v14[2];
  v12[3] = v14[3];
  v9 = self;
  v10 = sub_1011133FC(a3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 0, v7, v12, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v7, &unk_101A0B1C0);

  return v10;
}

- (id)makeShapeItemWithShapeType:(int64_t)a3 pathSource:(id)a4
{
  v7 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v7 - 8);
  v9 = v15 - v8;
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1006950BC(v17);
  v15[12] = v17[12];
  v15[13] = v17[13];
  v15[14] = v17[14];
  v16 = v18;
  v15[8] = v17[8];
  v15[9] = v17[9];
  v15[10] = v17[10];
  v15[11] = v17[11];
  v15[4] = v17[4];
  v15[5] = v17[5];
  v15[6] = v17[6];
  v15[7] = v17[7];
  v15[0] = v17[0];
  v15[1] = v17[1];
  v15[2] = v17[2];
  v15[3] = v17[3];
  v11 = a4;
  v12 = self;
  v13 = sub_1011133FC(a3, 0, a4, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 0, v9, v15, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v9, &unk_101A0B1C0);

  return v13;
}

- (id)makeShapeItemWithShapeType:(int64_t)a3 pathSource:(id)a4 position:(CGPoint)a5
{
  v5 = *&a5.y;
  v6 = *&a5.x;
  v10 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v10 - 8);
  v12 = v19 - v11;
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1006950BC(v21);
  v19[12] = v21[12];
  v19[13] = v21[13];
  v19[14] = v21[14];
  v20 = v22;
  v19[8] = v21[8];
  v19[9] = v21[9];
  v19[10] = v21[10];
  v19[11] = v21[11];
  v19[4] = v21[4];
  v19[5] = v21[5];
  v19[6] = v21[6];
  v19[7] = v21[7];
  v19[0] = v21[0];
  v19[1] = v21[1];
  v19[2] = v21[2];
  v19[3] = v21[3];
  v14 = a4;
  v15 = self;
  v16 = sub_1011133FC(a3, 0, a4, 0, v6, v5, 0, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 0, v12, v19, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v12, &unk_101A0B1C0);

  return v16;
}

- (id)makeShapeItemWithShapeType:(int64_t)a3 pathSource:(id)a4 preservePathSourceSize:(BOOL)a5 position:(CGPoint)a6
{
  v6 = *&a6.y;
  v7 = *&a6.x;
  v8 = a5;
  v12 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v12 - 8);
  v14 = v21 - v13;
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1006950BC(v23);
  v21[12] = v23[12];
  v21[13] = v23[13];
  v21[14] = v23[14];
  v22 = v24;
  v21[8] = v23[8];
  v21[9] = v23[9];
  v21[10] = v23[10];
  v21[11] = v23[11];
  v21[4] = v23[4];
  v21[5] = v23[5];
  v21[6] = v23[6];
  v21[7] = v23[7];
  v21[0] = v23[0];
  v21[1] = v23[1];
  v21[2] = v23[2];
  v21[3] = v23[3];
  v16 = a4;
  v17 = self;
  v18 = sub_1011133FC(a3, 0, a4, v8, v7, v6, 0, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, 0, v14, v21, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v14, &unk_101A0B1C0);

  return v18;
}

- (id)makeShapeItemWithShapeType:(int64_t)a3 pathSource:(id)a4 preservePathSourceSize:(BOOL)a5 position:(CGPoint)a6 angleInDegrees:(double)a7
{
  v8 = *&a6.y;
  v9 = *&a6.x;
  v10 = a5;
  v14 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v14 - 8);
  v16 = v23 - v15;
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1006950BC(v25);
  v23[12] = v25[12];
  v23[13] = v25[13];
  v23[14] = v25[14];
  v24 = v26;
  v23[8] = v25[8];
  v23[9] = v25[9];
  v23[10] = v25[10];
  v23[11] = v25[11];
  v23[4] = v25[4];
  v23[5] = v25[5];
  v23[6] = v25[6];
  v23[7] = v25[7];
  v23[0] = v25[0];
  v23[1] = v25[1];
  v23[2] = v25[2];
  v23[3] = v25[3];
  v18 = a4;
  v19 = self;
  v20 = sub_1011133FC(a3, 0, a4, v10, v9, v8, 0, 0, 0, *&a7, 0, 2, 2, 1, 1, 1, 1, 0, v16, v23, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v16, &unk_101A0B1C0);

  return v20;
}

- (id)makeShapeItemWithShapeType:(int64_t)a3 pathSource:(id)a4 preservePathSourceSize:(BOOL)a5 position:(CGPoint)a6 angleInDegrees:(double)a7 stroke:(id)a8 fill:(id)a9 headLineEnd:(id)a10 tailLineEnd:(id)a11
{
  y = a6.y;
  x = a6.x;
  v17 = a5;
  v20 = a4;
  v27 = a8;
  v26 = a9;
  v21 = a10;
  v22 = a11;
  v23 = self;
  v24 = sub_10110F2B4(a3, v20, v17, a8, a9, a10, a11, x, y, a7);

  return v24;
}

- (id)makeShapeItemForShapeLibrarySwatchWithShapeType:(int64_t)a3 pathSource:(id)a4 position:(CGPoint)a5 angleInDegrees:(double)a6
{
  y = a5.y;
  x = a5.x;
  v11 = a4;
  v12 = self;
  v13 = sub_10111B6E0(a3, v11, x, y, a6);

  return v13;
}

- (id)makeShapeItemForFreehandDrawingWithPathSource:(id)a3 position:(CGPoint)a4 stroke:(id)a5 fill:(id)a6 pencilKitStrokePathCompactData:(id)a7 maskPath:(id)a8
{
  y = a4.y;
  x = a4.x;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = self;
  v21 = sub_10111BBA0(v15, a5, a6, a7, a8, x, y);

  return v21;
}

- (id)makeShapeItemForFreehandDrawingWithPathSource:(id)a3 position:(CGPoint)a4 stroke:(id)a5 fill:(id)a6 pencilKitStrokePathCompactData:(id)a7 maskPath:(id)a8 snappedShapeType:(int64_t)a9
{
  y = a4.y;
  x = a4.x;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = self;
  v22 = sub_10111E0E8(v16, a5, a6, a7, a8, a9, x, y);

  return v22;
}

- (id)makeShapeItemForDiagramWithConnectingTo:(id)a3 with:(id)a4 shapeType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = sub_10110FE34(v8, v9, a5);

  return v11;
}

- (id)blockToRunCommandToPostProcessWithNewBoardItem:(id)a3 shapeType:(int64_t)a4 infosToConnect:(id)a5 commandController:(id)a6
{
  type metadata accessor for CRLBoardItem(0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a6;
  v13 = self;
  v14 = sub_101125048(v11, a4, v10, v12);
  v16 = v15;

  v19[4] = v14;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = *"";
  v19[2] = sub_100007638;
  v19[3] = &unk_1018B1DC8;
  v17 = _Block_copy(v19);

  return v17;
}

- (id)makeTextboxItemWithString:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  v5 = sub_10110C390();

  return v5;
}

- (id)makeTextboxItemWithPosition:(CGPoint)a3 string:(id)a4
{
  y = a3.y;
  x = a3.x;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  v8 = sub_101120E4C(x, y);

  return v8;
}

- (id)makeTextboxItemWithAttributedString:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10110F088(v4);

  return v6;
}

- (id)makeTextBoxItemWithStorage:(id)a3
{
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v13)
  {
    (*(*v13 + 896))(v10);
    sub_101125504(&v7[*(v5 + 20)], v12, type metadata accessor for CRLWPStorageCRDTData);
    v14 = a3;
    v15 = self;
    sub_10112556C(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    sub_1006950BC(v18);
    v20[12] = v18[12];
    v20[13] = v18[13];
    v20[14] = v18[14];
    v21 = v19;
    v20[8] = v18[8];
    v20[9] = v18[9];
    v20[10] = v18[10];
    v20[11] = v18[11];
    v20[4] = v18[4];
    v20[5] = v18[5];
    v20[6] = v18[6];
    v20[7] = v18[7];
    v20[0] = v18[0];
    v20[1] = v18[1];
    v20[2] = v18[2];
    v20[3] = v18[3];
    v16 = sub_10110D3E4(v12, v20);

    sub_10112556C(v12, type metadata accessor for CRLWPStorageCRDTData);

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)makeStickyNoteItem
{
  v3 = objc_allocWithZone(NSAttributedString);
  v4 = self;
  v5 = [v3 init];
  v6 = sub_10110F4B0(v5);

  return v6;
}

- (id)makeStickyNoteItemWithAttributedString:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10110F4B0(v4);

  return v6;
}

- (id)makeFileItemWithFileData:(id)a3 posterImageData:(id)a4 title:(id)a5 geometry:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = self;
  v13 = sub_101125154(v9, v10, v11);

  return v13;
}

- (id)makeURLItemWithGeometry:(id)a3 metadataAsset:(id)a4 url:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = sub_101121568(v12, a4, v11);

  (*(v9 + 8))(v11, v8);

  return v15;
}

- (id)makeTableItemWithGeometry:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_101110770(a3);

  return v7;
}

- (id)makeSurfaceItemWithGeometry:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v7 = objc_allocWithZone(type metadata accessor for CRLSurfaceItem());
  v8 = a3;
  v9 = sub_100AE1128(v5, v6, a3);

  return v9;
}

- (id)makeDuplicateOfBoardItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10110D5CC(v4);

  return v6;
}

- (id)makeDuplicateOfBoardItems:(id)a3
{
  type metadata accessor for CRLBoardItem(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = sub_101121D20(v4, 0, 0);

  if (v6)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)makeDuplicateOfBoardItems:(id)a3 UUIDRemappingBlock:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for CRLBoardItem(0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1009C3294;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  v9 = sub_101121D20(v6, v5, v7);
  sub_1000C1014(v5);

  if (v9)
  {
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

- (_TtC8Freeform19CRLBoardItemFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end