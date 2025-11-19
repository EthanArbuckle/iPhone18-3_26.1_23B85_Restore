@interface CRLImageItem
+ (void)adjustIncomingWithNewImageGeometry:(id)a3 newMaskGeometry:(id)a4 newImageData:(id)a5 targetImageGeometry:(id)a6 targetMaskGeometry:(id)a7 assetOwner:(id)a8;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)isBackgroundRemoved;
- (BOOL)isImagePlaceholder;
- (BOOL)isOriginalAspectRatio;
- (BOOL)isPDF;
- (BOOL)isSpatial;
- (BOOL)maskCanBeReset;
- (BOOL)maskMatchesImageGeometryWithIgnoreRoundedCorners:(BOOL)a3;
- (BOOL)needsDownload;
- (BOOL)placeHolderDataNeedsDownload;
- (BOOL)shouldDisplayAsSpatial;
- (CGPoint)centerForReplacingWithNewItem;
- (CGSize)mediaRawPixelSize;
- (CRLBezierPath)tracedPath;
- (CRLCanvasInfoGeometry)geometryWithMask;
- (CRLMaskInfo)maskInfo;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)generativePlaygroundImageItems;
- (NSData)data;
- (NSString)filename;
- (NSString)previewTooltip;
- (UTType)type;
- (_TtC8Freeform8CRLAsset)imageAssetPayload;
- (_TtC8Freeform8CRLAsset)thumbnailAssetPayload;
- (double)viewScaleToUseWhenRasterizingSingleBoardItemForCopy;
- (float)roundedCornerAmount;
- (id)commandToResetMask;
- (id)commandToSetRoundedCornersEnabled:(BOOL)a3;
- (id)defaultMaskInfo;
- (id)maskInfoForCornerRadius:(float)a3;
- (void)crl_onBoard:(id)a3 moveItemToPosition:(CGPoint)a4 size:(CGSize)a5;
- (void)scaleDownSizeToFitWithinSize:(CGSize)a3 board:(id)a4;
- (void)setAssetMediaWithMedia:(id)a3 thumbnailData:(id)a4;
- (void)setIsBackgroundRemoved:(BOOL)a3;
- (void)setIsImagePlaceholder:(BOOL)a3;
- (void)setMaskInfo:(id)a3;
- (void)set_imageAssetAsData:(id)a3;
- (void)set_thumbnailAssetAsData:(id)a3;
- (void)takePropertiesFromReplacedBoardItem:(id)a3;
- (void)updateGeometryToReplaceBoardItem:(id)a3;
@end

@implementation CRLImageItem

- (void)crl_onBoard:(id)a3 moveItemToPosition:(CGPoint)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v11 = [(CRLImageItem *)self maskInfo];
  if (v11)
  {
    [(CRLBoardItem *)self visibleBoundsForPositioning];
    if (v12 != width || v13 != height)
    {
      v15 = v13;
      if (v12 <= 0.0)
      {
        v16 = 0.0;
        if (width != 0.0)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10138B184();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10138B198();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10138B220();
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v17);
          }

          v18 = [NSString stringWithUTF8String:"[CRLImageItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]"];
          v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m"];
          [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:122 isFatal:0 description:"Desired size is an impossible multiple of current size."];
        }
      }

      else
      {
        v16 = width / v12;
      }

      if (v15 <= 0.0)
      {
        v20 = 0.0;
        if (height != 0.0)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10138B248();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10138B270();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10138B2F8();
          }

          v21 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v21);
          }

          v22 = [NSString stringWithUTF8String:"[CRLImageItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]"];
          v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m"];
          [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:128 isFatal:0 description:"Desired size is an impossible multiple of current size."];
        }
      }

      else
      {
        v20 = height / v15;
      }

      v24 = [v11 geometry];
      v25 = [v24 mutableCopy];

      v26 = [v11 geometry];
      [v26 size];
      v28 = v16 * v27;
      v29 = [v11 geometry];
      [v29 size];
      [v25 setSize:{v28, v20 * v30}];

      v31 = [v11 geometry];
      [v31 position];
      v33 = v16 * v32;
      v34 = [v11 geometry];
      [v34 position];
      [v25 setPosition:{v33, v20 * v35}];

      [v11 setGeometry:v25];
      v36 = [(CRLBoardItemBase *)self geometry];
      v37 = [v36 mutableCopy];

      v38 = [(CRLBoardItemBase *)self geometry];
      [v38 size];
      v40 = v16 * v39;
      v41 = [(CRLBoardItemBase *)self geometry];
      [v41 size];
      [v37 setSize:{v40, v20 * v42}];

      [(CRLBoardItemBase *)self setGeometry:v37];
    }

    [(CRLBoardItem *)self visibleBoundsForPositioning];
    v45 = v44;
    if (v44 != x || v43 != y)
    {
      v46 = [(CRLBoardItemBase *)self geometry];
      v47 = [v46 mutableCopy];

      v48 = sub_10011F31C(x, y, v45);
      [v47 position];
      [v47 setPosition:{sub_10011F334(v49, v50, v48)}];
      [(CRLBoardItemBase *)self setGeometry:v47];
    }
  }

  else
  {
    v51.receiver = self;
    v51.super_class = _TtC8Freeform12CRLImageItem;
    [(CRLBoardItem *)&v51 crl_onBoard:v10 moveItemToPosition:x size:y, width, height];
  }
}

- (NSData)data
{
  v2 = self;
  v3 = sub_100BB30D8();
  v4 = *(v3 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v5 = *(v3 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v3 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v4);
  v6 = (*(v5 + 32))(v4, v5);
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100025870(v6, v8);
    v9 = isa;
  }

  return v9;
}

- (NSString)filename
{
  v2 = self;
  v3 = sub_100BB30D8();
  v4 = *(v3 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v5 = *(v3 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v3 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v4);
  (*(v5 + 16))(v4, v5);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (UTType)type
{
  v3 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  sub_100933184(v5);

  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = UTType._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)set_imageAssetAsData:(id)a3
{
  v4 = *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform12CRLImageItem__imageAssetAsData];
  *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform12CRLImageItem__imageAssetAsData] = a3;
  v3 = a3;
}

- (_TtC8Freeform8CRLAsset)imageAssetPayload
{
  v2 = self;
  v3 = sub_100BB30D8();

  return v3;
}

- (void)set_thumbnailAssetAsData:(id)a3
{
  v4 = *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform12CRLImageItem__thumbnailAssetAsData];
  *&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform12CRLImageItem__thumbnailAssetAsData] = a3;
  v3 = a3;
}

- (_TtC8Freeform8CRLAsset)thumbnailAssetPayload
{
  v2 = self;
  v3 = sub_100BB3AB4();

  return v3;
}

- (CGSize)mediaRawPixelSize
{
  v2 = self;
  v3 = sub_100BB30D8();
  v4 = [objc_opt_self() sharedPool];
  v5 = [v4 providerForAsset:v3 shouldValidate:1];

  [v5 naturalSize];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setAssetMediaWithMedia:(id)a3 thumbnailData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100BB4A48(v6, a4);
}

- (CRLBezierPath)tracedPath
{
  v2 = self;
  sub_100BB5634();
  v4 = v3;

  return v4;
}

- (CRLMaskInfo)maskInfo
{
  v2 = self;
  v3 = sub_100BBF54C();
  v4 = v3;

  return v3;
}

- (void)setMaskInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100BB584C(a3);
}

- (id)defaultMaskInfo
{
  v2 = self;
  v3 = sub_100BB5CC8();

  return v3;
}

- (BOOL)maskCanBeReset
{
  v2 = self;
  v3 = sub_100BB60A8();

  return v3 & 1;
}

- (BOOL)isBackgroundRemoved
{
  v3 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&self->super.super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A25280)
  {
    swift_beginAccess();
    v7 = self;

    sub_1005B981C(&unk_101A2F5B0);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v8 = v6[*(v3 + 28)];
    sub_100BBFD64(v6, type metadata accessor for CRLImageItemAssetData);
    return v8 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setIsBackgroundRemoved:(BOOL)a3
{
  v4 = self;
  sub_100BB66D0(a3);
}

- (BOOL)isImagePlaceholder
{
  v2 = self;
  v3 = sub_100BB691C();

  return v3 & 1;
}

- (void)setIsImagePlaceholder:(BOOL)a3
{
  v4 = self;
  sub_100BB6AEC(a3);
}

- (BOOL)isSpatial
{
  v2 = self;
  v3 = sub_100BB6D6C();

  return v3 & 1;
}

- (BOOL)isOriginalAspectRatio
{
  v2 = self;
  v3 = sub_100BB6F04();

  return v3;
}

- (BOOL)shouldDisplayAsSpatial
{
  v2 = self;
  v3 = sub_100BB721C();

  return v3;
}

- (id)commandToResetMask
{
  v2 = self;
  v3 = sub_100BB74D4();

  return v3;
}

- (BOOL)maskMatchesImageGeometryWithIgnoreRoundedCorners:(BOOL)a3
{
  v4 = self;
  v5 = sub_100BB7BA4(a3);

  return v5 & 1;
}

- (CRLCanvasInfoGeometry)geometryWithMask
{
  v2 = self;
  v3 = sub_100BB7E00();

  return v3;
}

- (BOOL)isPDF
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = sub_100BB2384();
  if (v8)
  {
    v9 = v8;
    static UTType.pdf.getter();
    UTType.identifier.getter();
    (*(v4 + 8))(v6, v3);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v9 hasRepresentationConformingToTypeIdentifier:v10 fileOptions:0];
  }

  else
  {

    return 0;
  }

  return v11;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  v2 = self;
  v3 = sub_100BB88FC();

  return v3 & 1;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v2 = self;
  v3 = sub_100BB8C1C();

  return v3 & 1;
}

- (void)takePropertiesFromReplacedBoardItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100BB8F14(v4);
}

- (NSString)previewTooltip
{
  sub_100BBFBC8();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (Class)layoutClass
{
  sub_100006370(0, &qword_101A13F90);

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  sub_100006370(0, &qword_101A13F88);

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  sub_100006370(0, &qword_101A13F80);

  return swift_getObjCClassFromMetadata();
}

- (void)scaleDownSizeToFitWithinSize:(CGSize)a3 board:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = self;
  sub_100BB9214(v7, width, height);
}

+ (void)adjustIncomingWithNewImageGeometry:(id)a3 newMaskGeometry:(id)a4 newImageData:(id)a5 targetImageGeometry:(id)a6 targetMaskGeometry:(id)a7 assetOwner:(id)a8
{
  swift_getObjCClassMetadata();
  swift_getObjectType();
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  swift_unknownObjectRetain();
  sub_100BBEE78(v14, v15, v16, v17, a7, a8);

  swift_unknownObjectRelease();
}

- (float)roundedCornerAmount
{
  v2 = self;
  v3 = sub_100BB96E0();

  return v3;
}

- (id)commandToSetRoundedCornersEnabled:(BOOL)a3
{
  v4 = self;
  v5 = sub_100BB9798(a3);

  return v5;
}

- (id)maskInfoForCornerRadius:(float)a3
{
  v4 = self;
  v5 = sub_100BB9950(a3);

  return v5;
}

- (BOOL)needsDownload
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 standardUserDefaults];
  LOBYTE(v3) = [v5 BOOLForKey:@"CRLImageItemsRequireAssetDownloadForSendCopyUserDefault"];

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1009B07F4();
  }

  return v6 & 1;
}

- (void)updateGeometryToReplaceBoardItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100BB9D68(v4);
}

- (CGPoint)centerForReplacingWithNewItem
{
  v2 = self;
  v3 = sub_100BBAFAC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (BOOL)placeHolderDataNeedsDownload
{
  v2 = self;
  v3 = sub_100BB3AB4();
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v5 = *&v3[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    v6 = v3;
    sub_100020E58(&v3[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v4);
    v7 = (*(v5 + 64))(v4, v5);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (double)viewScaleToUseWhenRasterizingSingleBoardItemForCopy
{
  v2 = self;
  sub_100BBB1E0();
  v4 = v3;

  return v4;
}

- (NSArray)generativePlaygroundImageItems
{
  v2 = self;
  v3 = sub_100BB30D8();
  v4 = *(v3 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v5 = *(v3 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v3 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v4);
  v6 = (*(v5 + 64))(v4, v5);

  if (v6)
  {
  }

  else
  {
    sub_1005B981C(&unk_1019F4D60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101465920;
    *(v7 + 32) = v2;
  }

  type metadata accessor for CRLBoardItem(0);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

@end