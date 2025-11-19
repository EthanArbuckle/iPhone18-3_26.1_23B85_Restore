@interface PFBoxBlur3_7
- (id)outputImage;
@end

@implementation PFBoxBlur3_7

- (id)outputImage
{
  inputImage = self->inputImage;
  if (inputImage)
  {
    [(CIImage *)self->inputImage extent];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v23 = kCIKernelOutputFormat;
    v24 = [NSNumber numberWithInt:kCIFormatRh];
    v11 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v12 = [(CIImage *)inputImage imageByClampingToExtent];
    if (qword_8C968 != -1)
    {
      sub_491D4();
    }

    v13 = qword_8C960;
    v22 = v12;
    v14 = [NSArray arrayWithObjects:&v22 count:1];
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
    v18 = [v13 applyWithExtent:&stru_748A0 roiCallback:v14 arguments:v11 options:{CGRectInfinite.origin.x, y, width, height}];
    if (qword_8C978 != -1)
    {
      sub_491FC();
    }

    v21 = v18;
    v19 = [qword_8C970 applyWithExtent:&stru_748C0 roiCallback:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{&v21, 1), v11, CGRectInfinite.origin.x, y, width, height}];
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    if (!CGRectIsInfinite(v26))
    {
      return [v19 imageByCroppingToRect:{v4, v6, v8, v10}];
    }

    return v19;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end