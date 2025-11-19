@interface UIImage
+ (id)_sss_imageFromScreenshot:(id)a3;
+ (id)ss_imageDataWithDataType:(id)a3 sdrImage:(CGImage *)a4 hdrImage:(CGImage *)a5 properties:(id)a6 imageDescription:(id)a7;
- (id)ss_ppkHeicDataWithProperties:(id)a3;
@end

@implementation UIImage

+ (id)_sss_imageFromScreenshot:(id)a3
{
  v3 = a3;
  v4 = [v3 imageGenerator];
  v5 = v4;
  if (!v4 || ([v4 generateImageForScreenshot:v3 shouldApplyCrop:1 allowHDR:1 targetSize:{CGSizeZero.width, CGSizeZero.height}], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100073DBC(v7);
    }

    v8 = [v3 backingImage];
    v9 = [v3 environmentDescription];
    [v9 imagePixelSize];
    v11 = v10;
    v13 = v12;

    v14 = [v3 environmentDescription];
    [v14 imageScale];
    v16 = v15;

    v17 = [v3 modelModificationInfo];
    v18 = v17;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    if (v17)
    {
      [v17 cropInfo];
    }

    [v18 vellumOpacity];
    v20 = v19;
    v40 = v42;
    v21 = v43;
    v22 = v13 / v16;
    v23 = objc_alloc_init(UIGraphicsImageRendererFormat);
    if ([v8 ss_isHDRImage])
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
    v33 = v8;
    v38 = v20;
    v39 = v21;
    v26 = v8;
    v27 = objc_retainBlock(&v29);
    v6 = [v25 imageWithActions:{v27, v29, v30, v31, v32}];
  }

  return v6;
}

+ (id)ss_imageDataWithDataType:(id)a3 sdrImage:(CGImage *)a4 hdrImage:(CGImage *)a5 properties:(id)a6 imageDescription:(id)a7
{
  v12 = type metadata accessor for UTType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3;
  v26 = a4;
  v25 = a5;
  v17 = a6;
  v18 = a7;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v18)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (v18)
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

- (id)ss_ppkHeicDataWithProperties:(id)a3
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
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