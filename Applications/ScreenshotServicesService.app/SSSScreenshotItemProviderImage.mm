@interface SSSScreenshotItemProviderImage
+ (id)fileFormatTypeForActivityType:(id)type isHDR:(BOOL)r;
- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerSuggestionAssetLocalIdentifier:(id)identifier;
- (id)itemForActivityType:(id)type;
- (id)placeholderItemForScreenshot:(id)screenshot;
@end

@implementation SSSScreenshotItemProviderImage

+ (id)fileFormatTypeForActivityType:(id)type isHDR:(BOOL)r
{
  typeCopy = type;
  if ((_SSHDRCaptureEnabled() & 1) == 0 && !r)
  {
    goto LABEL_7;
  }

  UsedScreenshotShareFormatOption = _SSGetLastUsedScreenshotShareFormatOption();
  if (UsedScreenshotShareFormatOption == 2)
  {
    goto LABEL_7;
  }

  if (UsedScreenshotShareFormatOption == 1)
  {
    v7 = _SSHDRCaptureEnabled();
    if (r || (v7 & 1) != 0)
    {
      v8 = &UTTypeHEIC;
      goto LABEL_8;
    }

LABEL_7:
    v8 = &UTTypePNG;
LABEL_8:
    identifier = [*v8 identifier];
    goto LABEL_9;
  }

  identifier = [UTTypePNG identifier];
  if (typeCopy)
  {
    if (qword_1000D4980 != -1)
    {
      sub_100073D1C();
    }

    if ([qword_1000D4988 containsObject:typeCopy])
    {
      identifier2 = [UTTypeHEIC identifier];

      identifier = identifier2;
    }
  }

LABEL_9:

  return identifier;
}

- (id)placeholderItemForScreenshot:(id)screenshot
{
  imageProvider = [screenshot imageProvider];
  requestOutputImageForUIBlocking = [imageProvider requestOutputImageForUIBlocking];

  return requestOutputImageForUIBlocking;
}

- (id)itemForActivityType:(id)type
{
  typeCopy = type;
  screenshot = [(SSSScreenshotItemProvider *)self screenshot];
  imageGenerator = [screenshot imageGenerator];
  screenshot2 = [(SSSScreenshotItemProvider *)self screenshot];
  v8 = [imageGenerator isGeneratedImageHDR:screenshot2];

  v9 = [objc_opt_class() fileFormatTypeForActivityType:typeCopy isHDR:v8];
  identifier = [UTTypeHEIC identifier];
  v11 = [v9 isEqualToString:identifier];

  if (!typeCopy)
  {
    goto LABEL_6;
  }

  if (qword_1000D4990 != -1)
  {
    sub_100073D30();
  }

  if ([qword_1000D4998 containsObject:typeCopy])
  {
    screenshot3 = [(SSSScreenshotItemProvider *)self screenshot];
    imageGenerator2 = [screenshot3 imageGenerator];
    screenshot4 = [(SSSScreenshotItemProvider *)self screenshot];
    v15 = [imageGenerator2 generateImageForScreenshot:screenshot4 shouldApplyCrop:1 allowHDR:v11 targetSize:{CGSizeZero.width, CGSizeZero.height}];
  }

  else
  {
LABEL_6:
    screenshot3 = [(SSSScreenshotItemProvider *)self screenshot];
    imageGenerator2 = [screenshot3 imageGenerator];
    screenshot4 = [(SSSScreenshotItemProvider *)self screenshot];
    v16 = [UTType typeWithIdentifier:v9];
    v15 = [imageGenerator2 generateImageDataForScreenshot:screenshot4 shouldApplyCrop:1 allowHDR:v11 targetSize:v16 imageType:{CGSizeZero.width, CGSizeZero.height}];
  }

  return v15;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v5 = qword_1000D49A0;
  v41 = qword_1000D49A0;
  if (!qword_1000D49A0)
  {
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_100003088;
    v36 = &unk_1000B9FA8;
    v37 = &v38;
    sub_100003088(&v33);
    v5 = v39[3];
  }

  v6 = v5;
  _Block_object_dispose(&v38, 8);
  v7 = objc_alloc_init(v5);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v8 = qword_1000D49B0;
  v41 = qword_1000D49B0;
  if (!qword_1000D49B0)
  {
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_100003250;
    v36 = &unk_1000B9FA8;
    v37 = &v38;
    sub_100003250(&v33);
    v8 = v39[3];
  }

  v9 = v8;
  _Block_object_dispose(&v38, 8);
  v10 = objc_alloc_init(v8);
  screenshot = [(SSSScreenshotItemProvider *)self screenshot];
  imageGenerator = [screenshot imageGenerator];
  screenshot2 = [(SSSScreenshotItemProvider *)self screenshot];
  v14 = [imageGenerator imageGeneratorCachedImageForScreenshot:screenshot2 allowHDR:0];

  if (v14)
  {
    [v14 size];
    if (v15 > 128.0 || ([v14 size], v16 > 128.0))
    {
      [v14 size];
      v18 = v17;
      [v14 size];
      v20 = 128.0 / (v18 / v19);
      v21 = +[UIGraphicsImageRendererFormat defaultFormat];
      [v21 setPreferredRange:2];
      v22 = [[UIGraphicsImageRenderer alloc] initWithSize:v21 format:{128.0, v20}];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100002CB4;
      v29[3] = &unk_1000B9F20;
      v32 = v20;
      v30 = v14;
      v31 = 0x4060000000000000;
      v14 = [v22 imageWithActions:v29];
    }
  }

  nameForScreenshot = [(SSSScreenshotItemProvider *)self nameForScreenshot];
  [v10 setName:nameForScreenshot];

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v24 = qword_1000D49B8;
  v41 = qword_1000D49B8;
  if (!qword_1000D49B8)
  {
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_1000032A8;
    v36 = &unk_1000B9FA8;
    v37 = &v38;
    sub_1000032A8(&v33);
    v24 = v39[3];
  }

  v25 = v24;
  _Block_object_dispose(&v38, 8);
  v26 = [[v24 alloc] initWithPlatformImage:v14];
  [v10 setThumbnail:v26];

  identifier = [UTTypeImage identifier];
  [v10 setType:identifier];

  [v7 setSpecialization:v10];

  return v7;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  typeCopy = type;
  screenshot = [(SSSScreenshotItemProvider *)self screenshot];
  imageGenerator = [screenshot imageGenerator];
  screenshot2 = [(SSSScreenshotItemProvider *)self screenshot];
  v9 = [imageGenerator isGeneratedImageHDR:screenshot2];

  v10 = [objc_opt_class() fileFormatTypeForActivityType:typeCopy isHDR:v9];

  return v10;
}

- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type
{
  typeCopy = type;
  nameForScreenshot = [(SSSScreenshotItemProvider *)self nameForScreenshot];
  if (typeCopy)
  {
    screenshot = [(SSSScreenshotItemProvider *)self screenshot];
    imageGenerator = [screenshot imageGenerator];

    if (imageGenerator)
    {
      screenshot2 = [(SSSScreenshotItemProvider *)self screenshot];
      v10 = [imageGenerator isGeneratedImageHDR:screenshot2];
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_opt_class() fileFormatTypeForActivityType:typeCopy isHDR:v10];
    v12 = [UTType typeWithIdentifier:v11];
    preferredFilenameExtension = [v12 preferredFilenameExtension];
    if (preferredFilenameExtension)
    {
      v14 = [nameForScreenshot stringByAppendingPathExtension:preferredFilenameExtension];

      nameForScreenshot = v14;
    }
  }

  return nameForScreenshot;
}

- (id)activityViewControllerSuggestionAssetLocalIdentifier:(id)identifier
{
  screenshot = [(SSSScreenshotItemProvider *)self screenshot];
  identifier = [screenshot identifier];

  return identifier;
}

@end