@interface MFAttachmentImageGenerator
+ (CGRect)imageRectForAttachment:(id)a3;
+ (id)imageForAttachment:(id)a3;
+ (id)pngDataForAttachment:(id)a3;
- (CGRect)imageRect;
- (MFAttachmentImageGenerator)initWithAttachment:(id)a3;
- (id)pngData;
- (void)drawRect:(CGRect)a3;
@end

@implementation MFAttachmentImageGenerator

- (MFAttachmentImageGenerator)initWithAttachment:(id)a3
{
  v4 = a3;
  [objc_opt_class() defaultHeight];
  v6 = v5;
  v7 = [v4 isPass];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v4 passWithError:0];
  if (!v8)
  {
    goto LABEL_6;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v9 = getPKPassViewClass_softClass;
  v41 = getPKPassViewClass_softClass;
  if (!getPKPassViewClass_softClass)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __getPKPassViewClass_block_invoke;
    v37[3] = &unk_1E806CA38;
    v37[4] = &v38;
    __getPKPassViewClass_block_invoke(v37);
    v9 = v39[3];
  }

  v10 = v9;
  _Block_object_dispose(&v38, 8);
  v11 = [[v9 alloc] initWithPass:v8 content:5];
  [v11 setSuppressedContent:6];
  v12 = [v11 snapshotOfFrontFace];
  [v12 size];
  v6 = v13;

  if (!v12)
  {
LABEL_6:
    v14 = [v4 contentTypeIdentifier];
    if (!v14 || (v15 = objc_alloc_init(MEMORY[0x1E69CDA18]), [v4 fileName], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "setName:", v16), v16, objc_msgSend(v15, "setUTI:", v14), objc_msgSend(v15, "icons"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), v17, v15, v14, !v12))
    {
      v18 = MEMORY[0x1E69DCAB8];
      v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v12 = [v18 imageNamed:@"downloadinprogress" inBundle:v19];
    }
  }

  [v12 size];
  v21 = v20;
  v23 = v22;
  if (!sDownloadFont)
  {
    v24 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
    v25 = sDownloadFont;
    sDownloadFont = v24;
  }

  v26 = [v4 fileName];
  [v26 _legacy_sizeWithFont:sDownloadFont forWidth:5 lineBreakMode:150.0];
  v28 = v27;
  v30 = v29;
  if (v27 >= v21)
  {
    v21 = v27;
  }

  v36.receiver = self;
  v36.super_class = MFAttachmentImageGenerator;
  v31 = [(MFAttachmentImageGenerator *)&v36 initWithFrame:0.0, 0.0, v21, v6];
  if (v31)
  {
    [v4 setImageDimensions:{v21, v6}];
    v31->_textSize.width = v28;
    v31->_textSize.height = v30;
    v32 = [v26 copy];
    displayString = v31->_displayString;
    v31->_displayString = v32;

    objc_storeStrong(&v31->_image, v12);
    v34 = 48.0;
    if (v7)
    {
      v34 = v23;
    }

    v31->_maxImageHeight = v34;
    [(MFAttachmentImageGenerator *)v31 setOpaque:0];
  }

  return v31;
}

+ (id)pngDataForAttachment:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAttachment:v4];
  v6 = [v5 pngData];

  return v6;
}

+ (id)imageForAttachment:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAttachment:v4];
  v6 = [v5 image];

  return v6;
}

+ (CGRect)imageRectForAttachment:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAttachment:v4];
  [v5 imageRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)pngData
{
  [(MFAttachmentImageGenerator *)self bounds];
  v10.width = v3;
  v10.height = v4;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  v5 = [(MFAttachmentImageGenerator *)self layer];
  [v5 renderInContext:UIGraphicsGetCurrentContext()];

  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v7 = UIImagePNGRepresentation(v6);

  return v7;
}

- (CGRect)imageRect
{
  [(MFAttachmentImageGenerator *)self bounds];
  v4 = v3;
  [(UIImage *)self->_image size];
  v7 = v5;
  maxImageHeight = self->_maxImageHeight;
  if (v6 <= maxImageHeight)
  {
    maxImageHeight = v6;
  }

  else
  {
    v7 = v5 * (maxImageHeight / v6);
  }

  v9 = (v4 - v7) * 0.5;
  v10 = 5.0;
  result.size.height = maxImageHeight;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  [(MFAttachmentImageGenerator *)self bounds:a3.origin.x];
  v5 = v4;
  [(MFAttachmentImageGenerator *)self imageRect];
  v7 = v6;
  v9 = v8;
  [(UIImage *)self->_image drawInRect:?];
  v10 = [MEMORY[0x1E69DC888] grayColor];
  [v10 set];

  displayString = self->_displayString;
  v12 = (v5 - self->_textSize.width) * 0.5;
  v13 = sDownloadFont;

  [(NSString *)displayString _legacy_drawAtPoint:v13 forWidth:5 withFont:v12 lineBreakMode:v7 + v9 + 5.0];
}

@end