@interface UIImage
+ (id)_sss_imageFromScreenshot:(id)screenshot;
+ (id)ss_imageDataWithDataType:(id)type sdrImage:(CGImage *)image hdrImage:(CGImage *)hdrImage properties:(id)properties imageDescription:(id)description;
- (id)ss_ppkHeicDataWithProperties:(id)properties;
@end

@implementation UIImage

+ (id)_sss_imageFromScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  imageGenerator = [screenshotCopy imageGenerator];
  v5 = imageGenerator;
  if (!imageGenerator || ([imageGenerator generateImageForScreenshot:screenshotCopy shouldApplyCrop:1 allowHDR:1 targetSize:{CGSizeZero.width, CGSizeZero.height}], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100073DBC(v7);
    }

    backingImage = [screenshotCopy backingImage];
    environmentDescription = [screenshotCopy environmentDescription];
    [environmentDescription imagePixelSize];
    v11 = v10;
    v13 = v12;

    environmentDescription2 = [screenshotCopy environmentDescription];
    [environmentDescription2 imageScale];
    v16 = v15;

    modelModificationInfo = [screenshotCopy modelModificationInfo];
    v18 = modelModificationInfo;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    if (modelModificationInfo)
    {
      [modelModificationInfo cropInfo];
    }

    [v18 vellumOpacity];
    v20 = v19;
    v40 = v42;
    v21 = v43;
    v22 = v13 / v16;
    v23 = objc_alloc_init(UIGraphicsImageRendererFormat);
    if ([backingImage ss_isHDRImage])
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    [v23 setPreferredRange:v24];
    [v23 setScale:v16];
    v25 = [[UIGraphicsImageRenderer alloc] initWithSize:v23 format:v21];
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100003584;
    v32 = &unk_1000BA008;
    v34 = v40;
    v35 = v21;
    v36 = v11 / v16;
    v37 = v22;
    v33 = backingImage;
    v38 = v20;
    v39 = v21;
    v26 = backingImage;
    v27 = objc_retainBlock(&v29);
    v6 = [v25 imageWithActions:{v27, v29, v30, v31, v32}];
  }

  return v6;
}

+ (id)ss_imageDataWithDataType:(id)type sdrImage:(CGImage *)image hdrImage:(CGImage *)hdrImage properties:(id)properties imageDescription:(id)description
{
  v12 = type metadata accessor for UTType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &hdrImageCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  typeCopy = type;
  imageCopy = image;
  hdrImageCopy = hdrImage;
  propertiesCopy = properties;
  descriptionCopy = description;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  if (propertiesCopy)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!descriptionCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (descriptionCopy)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_5:
  v19 = sub_1000702D8();
  v21 = v20;

  (*(v13 + 8))(v15, v12);
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100057E78(v19, v21);
    v22 = isa;
  }

  return v22;
}

- (id)ss_ppkHeicDataWithProperties:(id)properties
{
  if (properties)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_100069594(v4);
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100057E78(v6, v8);
    v9 = isa;
  }

  return v9;
}

@end