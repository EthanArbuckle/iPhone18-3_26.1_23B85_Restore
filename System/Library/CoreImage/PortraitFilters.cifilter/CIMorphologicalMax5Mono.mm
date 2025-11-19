@interface CIMorphologicalMax5Mono
- (id)outputImage;
@end

@implementation CIMorphologicalMax5Mono

- (id)outputImage
{
  inputImage = self->inputImage;
  if (inputImage)
  {
    [(CIImage *)inputImage extent];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(CIImage *)self->inputImage imageByClampingToExtent];
    if (qword_8C998 != -1)
    {
      sub_49238();
    }

    v13 = qword_8C990;
    v36 = v12;
    v14 = [NSArray arrayWithObjects:&v36 count:1];
    v15 = kCIKernelOutputFormat;
    v34 = kCIKernelOutputFormat;
    v16 = kCIFormatRh;
    v35 = [NSNumber numberWithInt:kCIFormatRh];
    v17 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
    v21 = [objc_msgSend(objc_msgSend(v13 applyWithExtent:&stru_74900 roiCallback:v14 arguments:v17 options:{CGRectInfinite.origin.x, y, width, height), "imageByCroppingToRect:", v5, v7, v9, v11), "imageByClampingToExtent"}];
    if (qword_8C9A8 != -1)
    {
      sub_4924C();
    }

    v22 = qword_8C9A0;
    v33 = v21;
    v23 = [NSArray arrayWithObjects:&v33 count:1];
    v31 = v15;
    v32 = [NSNumber numberWithInt:v16];
    v24 = [objc_msgSend(objc_msgSend(v22 applyWithExtent:&stru_74920 roiCallback:v23 arguments:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary options:{"dictionaryWithObjects:forKeys:count:", &v32, &v31, 1), CGRectInfinite.origin.x, y, width, height), "imageByCroppingToRect:", v5, v7, v9, v11), "imageByClampingToExtent"}];
    if (qword_8C9B8 != -1)
    {
      sub_49274();
    }

    v25 = qword_8C9B0;
    v30[0] = v24;
    v30[1] = v12;
    v26 = [NSArray arrayWithObjects:v30 count:2];
    v28 = v15;
    v29 = [NSNumber numberWithInt:v16];
    return [objc_msgSend(v25 applyWithExtent:&stru_74940 roiCallback:v26 arguments:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary options:{"dictionaryWithObjects:forKeys:count:", &v29, &v28, 1), CGRectInfinite.origin.x, y, width, height), "imageByCroppingToRect:", v5, v7, v9, v11}];
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end