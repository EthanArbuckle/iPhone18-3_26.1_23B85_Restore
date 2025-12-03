@interface CRLCommandReplaceImageWithImageSubject
- (_TtC8Freeform38CRLCommandReplaceImageWithImageSubject)initWithId:(id)id imageData:(id)data isBackgroundRemoved:(BOOL)removed isImagePlaceholder:(BOOL)placeholder thumbnailData:(id)thumbnailData;
- (_TtC8Freeform38CRLCommandReplaceImageWithImageSubject)initWithId:(id)id imageData:(id)data thumbnailData:(id)thumbnailData;
- (_TtC8Freeform38CRLCommandReplaceImageWithImageSubject)initWithImageItem:(id)item imageData:(id)data isBackgroundRemoved:(BOOL)removed thumbnailData:(id)thumbnailData;
- (_TtC8Freeform38CRLCommandReplaceImageWithImageSubject)initWithImageItem:(id)item imageData:(id)data thumbnailData:(id)thumbnailData;
@end

@implementation CRLCommandReplaceImageWithImageSubject

- (_TtC8Freeform38CRLCommandReplaceImageWithImageSubject)initWithId:(id)id imageData:(id)data isBackgroundRemoved:(BOOL)removed isImagePlaceholder:(BOOL)placeholder thumbnailData:(id)thumbnailData
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  self->_TtC8Freeform22CRLCommandReplaceImage_opaque[OBJC_IVAR____TtC8Freeform38CRLCommandReplaceImageWithImageSubject_isBackgroundRemoved] = removed;
  self->_TtC8Freeform22CRLCommandReplaceImage_opaque[OBJC_IVAR____TtC8Freeform38CRLCommandReplaceImageWithImageSubject_isImagePlaceholder] = placeholder;
  v19 = *(v13 + 16);
  v19(v15, v18, v12);
  v19(&self->_TtC8Freeform22CRLCommandReplaceImage_opaque[OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_id], v15, v12);
  *&self->_TtC8Freeform22CRLCommandReplaceImage_opaque[OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_imageData] = data;
  *&self->_TtC8Freeform22CRLCommandReplaceImage_opaque[OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_thumbnailData] = thumbnailData;
  v20 = type metadata accessor for CRLCommandReplaceImage();
  v26.receiver = self;
  v26.super_class = v20;
  dataCopy = data;
  thumbnailDataCopy = thumbnailData;
  v23 = [(CRLCommandReplaceImage *)&v26 init];
  v24 = *(v13 + 8);
  v24(v18, v12);
  v24(v15, v12);
  return v23;
}

- (_TtC8Freeform38CRLCommandReplaceImageWithImageSubject)initWithImageItem:(id)item imageData:(id)data isBackgroundRemoved:(BOOL)removed thumbnailData:(id)thumbnailData
{
  removedCopy = removed;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v13);
  itemCopy = item;
  dataCopy = data;
  thumbnailDataCopy = thumbnailData;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v15, v11);
  v20 = [(CRLCommandReplaceImageWithImageSubject *)self initWithId:isa imageData:dataCopy isBackgroundRemoved:removedCopy isImagePlaceholder:sub_100BB691C() & 1 thumbnailData:thumbnailDataCopy];

  return v20;
}

- (_TtC8Freeform38CRLCommandReplaceImageWithImageSubject)initWithImageItem:(id)item imageData:(id)data thumbnailData:(id)thumbnailData
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v11);
  itemCopy = item;
  dataCopy = data;
  thumbnailDataCopy = thumbnailData;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v13, v9);
  v18 = [(CRLCommandReplaceImageWithImageSubject *)self initWithId:isa imageData:dataCopy isBackgroundRemoved:0 isImagePlaceholder:sub_100BB691C() & 1 thumbnailData:thumbnailDataCopy];

  return v18;
}

- (_TtC8Freeform38CRLCommandReplaceImageWithImageSubject)initWithId:(id)id imageData:(id)data thumbnailData:(id)thumbnailData
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end