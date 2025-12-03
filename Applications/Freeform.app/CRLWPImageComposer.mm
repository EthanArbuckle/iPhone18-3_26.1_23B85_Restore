@interface CRLWPImageComposer
- (CRLWPImageComposer)initWithBaseImage:(id)image screenScale:(double)scale;
- (id)overlayImage:(id)image usingFrame:(CGRect)frame;
@end

@implementation CRLWPImageComposer

- (CRLWPImageComposer)initWithBaseImage:(id)image screenScale:(double)scale
{
  imageCopy = image;
  v11.receiver = self;
  v11.super_class = CRLWPImageComposer;
  v7 = [(CRLWPImageComposer *)&v11 init];
  if (v7)
  {
    [imageCopy scale];
    if (v8 != scale)
    {
      v9 = +[CRLImage imageWithCGImage:](CRLImage, "imageWithCGImage:", [imageCopy CGImageForContentsScale:scale]);

      imageCopy = v9;
    }

    objc_storeStrong(&v7->_baseImage, imageCopy);
    objc_storeStrong(&v7->_compositedImage, imageCopy);
    v7->_screenScale = scale;
  }

  return v7;
}

- (id)overlayImage:(id)image usingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  imageCopy = image;
  if (sub_1001207D0(x, y, width, height))
  {
    [imageCopy scale];
    v11 = v10;
    [(CRLWPImageComposer *)self screenScale];
    if (v11 != v12)
    {
      [(CRLWPImageComposer *)self screenScale];
      v13 = +[CRLImage imageWithCGImage:](CRLImage, "imageWithCGImage:", [imageCopy CGImageForContentsScale:?]);

      imageCopy = v13;
    }

    compositedImage = [(CRLWPImageComposer *)self compositedImage];
    [compositedImage size];
    v15 = sub_10011ECB4();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    compositedImage2 = [(CRLWPImageComposer *)self compositedImage];
    [compositedImage2 scale];
    v24 = sub_10011FFD8(v15, v17, v19, v21, v23);
    v53 = v25;
    v54 = v24;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    compositedImage3 = [(CRLWPImageComposer *)self compositedImage];
    [compositedImage3 scale];
    v33 = sub_10011FFD8(x, y, width, height, v32);
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = sub_10011FC04(v24, v26, v28, v30, v33, v35, v37, v39);
    v42 = v41;
    v45 = sub_10050DF80(3, v43, v44);
    CGContextTranslateCTM(v45, -v40, -v42);
    compositedImage4 = [(CRLWPImageComposer *)self compositedImage];
    cGImage = [compositedImage4 CGImage];
    v56.origin.y = v53;
    v56.origin.x = v54;
    v56.size.width = v28;
    v56.size.height = v30;
    CGContextDrawImage(v45, v56, cGImage);

    [(CRLWPImageComposer *)self screenScale];
    v48 = [imageCopy CGImageForContentsScale:?];
    v57.origin.x = v33;
    v57.origin.y = v35;
    v57.size.width = v37;
    v57.size.height = v39;
    CGContextDrawImage(v45, v57, v48);
    Image = CGBitmapContextCreateImage(v45);
    CGContextRelease(v45);
    [(CRLWPImageComposer *)self screenScale];
    compositedImage5 = [CRLImage imageWithCGImage:Image scale:0 orientation:?];
    CGImageRelease(Image);
    [(CRLWPImageComposer *)self setCompositedImage:compositedImage5];
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101368838();
    }

    v51 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
    {
      sub_10136884C(v51, x, y, width, height);
    }

    compositedImage5 = [(CRLWPImageComposer *)self compositedImage];
  }

  return compositedImage5;
}

@end