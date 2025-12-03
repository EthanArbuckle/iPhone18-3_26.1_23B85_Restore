@interface PFSobelHV
- (id)outputImage;
@end

@implementation PFSobelHV

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
    if (qword_8C988 != -1)
    {
      sub_49224();
    }

    v11 = qword_8C980;
    imageByClampingToExtent = [(CIImage *)inputImage imageByClampingToExtent];
    v12 = [NSArray arrayWithObjects:&imageByClampingToExtent count:1];
    kCIKernelOutputFormat = [NSNumber numberWithInt:kCIFormatRh, kCIKernelOutputFormat];
    return [objc_msgSend(v11 applyWithExtent:&stru_748E0 roiCallback:v12 arguments:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary options:{"dictionaryWithObjects:forKeys:count:", &kCIKernelOutputFormat, &v14, 1), CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height), "imageByCroppingToRect:", v4, v6, v8, v10}];
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end