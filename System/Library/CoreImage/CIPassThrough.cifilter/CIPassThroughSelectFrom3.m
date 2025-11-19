@interface CIPassThroughSelectFrom3
- (id)outputImage;
@end

@implementation CIPassThroughSelectFrom3

- (id)outputImage
{
  if ([(NSNumber *)self->inputSelected intValue]< 0 || [(NSNumber *)self->inputSelected intValue]<= 2)
  {
    if ([(NSNumber *)self->inputSelected intValue]< 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = [(NSNumber *)self->inputSelected intValue];
    }
  }

  else
  {
    v3 = 2;
  }

  inputImage = self->inputImage;
  if (inputImage)
  {
    v5 = inputImage;
  }

  else
  {
    v5 = +[CIImage emptyImage];
  }

  v6 = v5;
  inputImage1 = self->inputImage1;
  if (inputImage1)
  {
    v8 = inputImage1;
  }

  else
  {
    v8 = +[CIImage emptyImage];
  }

  v9 = v8;
  inputImage2 = self->inputImage2;
  if (inputImage2)
  {
    v11 = inputImage2;
  }

  else
  {
    v11 = +[CIImage emptyImage];
  }

  v12 = v11;
  [(CIImage *)v6 extent];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(CIImage *)v9 extent];
  v48.origin.x = v21;
  v48.origin.y = v22;
  v48.size.width = v23;
  v48.size.height = v24;
  v44.origin.x = v14;
  v44.origin.y = v16;
  v44.size.width = v18;
  v44.size.height = v20;
  v45 = CGRectUnion(v44, v48);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  [(CIImage *)v12 extent];
  v49.origin.x = v29;
  v49.origin.y = v30;
  v49.size.width = v31;
  v49.size.height = v32;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47 = CGRectUnion(v46, v49);
  v33 = v47.origin.x;
  v34 = v47.origin.y;
  v35 = v47.size.width;
  v36 = v47.size.height;
  if (CGRectIsEmpty(v47))
  {
    v37 = 0;
  }

  else
  {
    v38 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIPT_Select3(__sample c0, __sample c1, __sample c2, float sel) { return sel < 1.0 ? c0 : sel < 2.0 ? c1 : c2 } \n"];;
    v42[0] = v6;
    v42[1] = v9;
    v42[2] = v12;
    v39 = [NSNumber numberWithInt:v3];
    v42[3] = v39;
    v40 = [NSArray arrayWithObjects:v42 count:4];
    v37 = [v38 applyWithExtent:v40 arguments:{v33, v34, v35, v36}];
  }

  return v37;
}

@end