@interface CRLWPImageComposer
- (CRLWPImageComposer)initWithBaseImage:(id)a3 screenScale:(double)a4;
- (id)overlayImage:(id)a3 usingFrame:(CGRect)a4;
@end

@implementation CRLWPImageComposer

- (CRLWPImageComposer)initWithBaseImage:(id)a3 screenScale:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CRLWPImageComposer;
  v7 = [(CRLWPImageComposer *)&v11 init];
  if (v7)
  {
    [v6 scale];
    if (v8 != a4)
    {
      v9 = +[CRLImage imageWithCGImage:](CRLImage, "imageWithCGImage:", [v6 CGImageForContentsScale:a4]);

      v6 = v9;
    }

    objc_storeStrong(&v7->_baseImage, v6);
    objc_storeStrong(&v7->_compositedImage, v6);
    v7->_screenScale = a4;
  }

  return v7;
}

- (id)overlayImage:(id)a3 usingFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  if (sub_1001207D0(x, y, width, height))
  {
    [v9 scale];
    v11 = v10;
    [(CRLWPImageComposer *)self screenScale];
    if (v11 != v12)
    {
      [(CRLWPImageComposer *)self screenScale];
      v13 = +[CRLImage imageWithCGImage:](CRLImage, "imageWithCGImage:", [v9 CGImageForContentsScale:?]);

      v9 = v13;
    }

    v14 = [(CRLWPImageComposer *)self compositedImage];
    [v14 size];
    v15 = sub_10011ECB4();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [(CRLWPImageComposer *)self compositedImage];
    [v22 scale];
    v24 = sub_10011FFD8(v15, v17, v19, v21, v23);
    v53 = v25;
    v54 = v24;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = [(CRLWPImageComposer *)self compositedImage];
    [v31 scale];
    v33 = sub_10011FFD8(x, y, width, height, v32);
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = sub_10011FC04(v24, v26, v28, v30, v33, v35, v37, v39);
    v42 = v41;
    v45 = sub_10050DF80(3, v43, v44);
    CGContextTranslateCTM(v45, -v40, -v42);
    v46 = [(CRLWPImageComposer *)self compositedImage];
    v47 = [v46 CGImage];
    v56.origin.y = v53;
    v56.origin.x = v54;
    v56.size.width = v28;
    v56.size.height = v30;
    CGContextDrawImage(v45, v56, v47);

    [(CRLWPImageComposer *)self screenScale];
    v48 = [v9 CGImageForContentsScale:?];
    v57.origin.x = v33;
    v57.origin.y = v35;
    v57.size.width = v37;
    v57.size.height = v39;
    CGContextDrawImage(v45, v57, v48);
    Image = CGBitmapContextCreateImage(v45);
    CGContextRelease(v45);
    [(CRLWPImageComposer *)self screenScale];
    v50 = [CRLImage imageWithCGImage:Image scale:0 orientation:?];
    CGImageRelease(Image);
    [(CRLWPImageComposer *)self setCompositedImage:v50];
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

    v50 = [(CRLWPImageComposer *)self compositedImage];
  }

  return v50;
}

@end