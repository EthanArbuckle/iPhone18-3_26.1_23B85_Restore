@interface SSSScreenshotItemProviderImage
+ (id)fileFormatTypeForActivityType:(id)a3 isHDR:(BOOL)a4;
- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerSuggestionAssetLocalIdentifier:(id)a3;
- (id)itemForActivityType:(id)a3;
- (id)placeholderItemForScreenshot:(id)a3;
@end

@implementation SSSScreenshotItemProviderImage

+ (id)fileFormatTypeForActivityType:(id)a3 isHDR:(BOOL)a4
{
  v5 = a3;
  if ((_SSHDRCaptureEnabled() & 1) == 0 && !a4)
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
    if (a4 || (v7 & 1) != 0)
    {
      v8 = &UTTypeHEIC;
      goto LABEL_8;
    }

LABEL_7:
    v8 = &UTTypePNG;
LABEL_8:
    v9 = [*v8 identifier];
    goto LABEL_9;
  }

  v9 = [UTTypePNG identifier];
  if (v5)
  {
    if (qword_1000D4980 != -1)
    {
      sub_100073D1C();
    }

    if ([qword_1000D4988 containsObject:v5])
    {
      v11 = [UTTypeHEIC identifier];

      v9 = v11;
    }
  }

LABEL_9:

  return v9;
}

- (id)placeholderItemForScreenshot:(id)a3
{
  v3 = [a3 imageProvider];
  v4 = [v3 requestOutputImageForUIBlocking];

  return v4;
}

- (id)itemForActivityType:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshotItemProvider *)self screenshot];
  v6 = [v5 imageGenerator];
  v7 = [(SSSScreenshotItemProvider *)self screenshot];
  v8 = [v6 isGeneratedImageHDR:v7];

  v9 = [objc_opt_class() fileFormatTypeForActivityType:v4 isHDR:v8];
  v10 = [UTTypeHEIC identifier];
  v11 = [v9 isEqualToString:v10];

  if (!v4)
  {
    goto LABEL_6;
  }

  if (qword_1000D4990 != -1)
  {
    sub_100073D30();
  }

  if ([qword_1000D4998 containsObject:v4])
  {
    v12 = [(SSSScreenshotItemProvider *)self screenshot];
    v13 = [v12 imageGenerator];
    v14 = [(SSSScreenshotItemProvider *)self screenshot];
    v15 = [v13 generateImageForScreenshot:v14 shouldApplyCrop:1 allowHDR:v11 targetSize:{CGSizeZero.width, CGSizeZero.height}];
  }

  else
  {
LABEL_6:
    v12 = [(SSSScreenshotItemProvider *)self screenshot];
    v13 = [v12 imageGenerator];
    v14 = [(SSSScreenshotItemProvider *)self screenshot];
    v16 = [UTType typeWithIdentifier:v9];
    v15 = [v13 generateImageDataForScreenshot:v14 shouldApplyCrop:1 allowHDR:v11 targetSize:v16 imageType:{CGSizeZero.width, CGSizeZero.height}];
  }

  return v15;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = a3;
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
  v11 = [(SSSScreenshotItemProvider *)self screenshot];
  v12 = [v11 imageGenerator];
  v13 = [(SSSScreenshotItemProvider *)self screenshot];
  v14 = [v12 imageGeneratorCachedImageForScreenshot:v13 allowHDR:0];

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

  v23 = [(SSSScreenshotItemProvider *)self nameForScreenshot];
  [v10 setName:v23];

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

  v27 = [UTTypeImage identifier];
  [v10 setType:v27];

  [v7 setSpecialization:v10];

  return v7;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  v5 = a4;
  v6 = [(SSSScreenshotItemProvider *)self screenshot];
  v7 = [v6 imageGenerator];
  v8 = [(SSSScreenshotItemProvider *)self screenshot];
  v9 = [v7 isGeneratedImageHDR:v8];

  v10 = [objc_opt_class() fileFormatTypeForActivityType:v5 isHDR:v9];

  return v10;
}

- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4
{
  v5 = a4;
  v6 = [(SSSScreenshotItemProvider *)self nameForScreenshot];
  if (v5)
  {
    v7 = [(SSSScreenshotItemProvider *)self screenshot];
    v8 = [v7 imageGenerator];

    if (v8)
    {
      v9 = [(SSSScreenshotItemProvider *)self screenshot];
      v10 = [v8 isGeneratedImageHDR:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_opt_class() fileFormatTypeForActivityType:v5 isHDR:v10];
    v12 = [UTType typeWithIdentifier:v11];
    v13 = [v12 preferredFilenameExtension];
    if (v13)
    {
      v14 = [v6 stringByAppendingPathExtension:v13];

      v6 = v14;
    }
  }

  return v6;
}

- (id)activityViewControllerSuggestionAssetLocalIdentifier:(id)a3
{
  v3 = [(SSSScreenshotItemProvider *)self screenshot];
  v4 = [v3 identifier];

  return v4;
}

@end