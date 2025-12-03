@interface UIImage(FixOrientation)
- (__n128)wf_affineTransformForImageMirroringOrientation:()FixOrientation;
- (__n128)wf_affineTransformForImageOrientation:()FixOrientation;
- (id)wf_imageInIntrinsicOrientation;
- (uint64_t)wf_majorAxisOrientedSize;
@end

@implementation UIImage(FixOrientation)

- (__n128)wf_affineTransformForImageMirroringOrientation:()FixOrientation
{
  if (([self imageOrientation] & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    [self wf_majorAxisOrientedSize];
    v6 = a2[1];
    *&v13.a = *a2;
    *&v13.c = v6;
    *&v13.tx = a2[2];
    CGAffineTransformTranslate(&v14, &v13, v7, 0.0);
    v8 = *&v14.c;
    *a2 = *&v14.a;
    a2[1] = v8;
    a2[2] = *&v14.tx;
    v9 = a2[1];
    *&v13.a = *a2;
    *&v13.c = v9;
    *&v13.tx = a2[2];
    CGAffineTransformScale(&v14, &v13, -1.0, 1.0);
    v10 = *&v14.c;
    *a2 = *&v14.a;
    a2[1] = v10;
    a2[2] = *&v14.tx;
  }

  v11 = a2[1];
  *a3 = *a2;
  a3[1] = v11;
  result = a2[2];
  a3[2] = result;
  return result;
}

- (__n128)wf_affineTransformForImageOrientation:()FixOrientation
{
  imageOrientation = [self imageOrientation];
  if (imageOrientation <= 7)
  {
    if (((1 << imageOrientation) & 0x22) != 0)
    {
      [self size];
      v17 = v16;
      [self size];
      v18 = a2[1];
      *&v25.a = *a2;
      *&v25.c = v18;
      *&v25.tx = a2[2];
      CGAffineTransformTranslate(&v26, &v25, v17, v19);
      v20 = *&v26.c;
      *a2 = *&v26.a;
      a2[1] = v20;
      a2[2] = *&v26.tx;
      v21 = a2[1];
      *&v25.a = *a2;
      *&v25.c = v21;
      *&v25.tx = a2[2];
      v11 = 3.14159265;
      goto LABEL_8;
    }

    if (((1 << imageOrientation) & 0x44) != 0)
    {
      [self size];
      v12 = a2[1];
      *&v25.a = *a2;
      *&v25.c = v12;
      *&v25.tx = a2[2];
      CGAffineTransformTranslate(&v26, &v25, v13, 0.0);
      v14 = *&v26.c;
      *a2 = *&v26.a;
      a2[1] = v14;
      a2[2] = *&v26.tx;
      v15 = a2[1];
      *&v25.a = *a2;
      *&v25.c = v15;
      *&v25.tx = a2[2];
      v11 = 1.57079633;
      goto LABEL_8;
    }

    if (((1 << imageOrientation) & 0x88) != 0)
    {
      [self size];
      v7 = a2[1];
      *&v25.a = *a2;
      *&v25.c = v7;
      *&v25.tx = a2[2];
      CGAffineTransformTranslate(&v26, &v25, 0.0, v8);
      v9 = *&v26.c;
      *a2 = *&v26.a;
      a2[1] = v9;
      a2[2] = *&v26.tx;
      v10 = a2[1];
      *&v25.a = *a2;
      *&v25.c = v10;
      *&v25.tx = a2[2];
      v11 = -1.57079633;
LABEL_8:
      CGAffineTransformRotate(&v26, &v25, v11);
      v22 = *&v26.c;
      *a2 = *&v26.a;
      a2[1] = v22;
      a2[2] = *&v26.tx;
    }
  }

  v23 = a2[1];
  *a3 = *a2;
  a3[1] = v23;
  result = a2[2];
  a3[2] = result;
  return result;
}

- (uint64_t)wf_majorAxisOrientedSize
{
  imageOrientation = [self imageOrientation];
  if (imageOrientation <= 7 && ((1 << imageOrientation) & 0xCC) != 0)
  {
    [self size];
    return [self size];
  }

  else
  {

    return [self size];
  }
}

- (id)wf_imageInIntrinsicOrientation
{
  if ([self imageOrientation])
  {
    v2 = *(MEMORY[0x277CBF2C0] + 16);
    *&v21.a = *MEMORY[0x277CBF2C0];
    *&v21.c = v2;
    *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
    *&transform.a = *&v21.a;
    *&transform.c = v2;
    *&transform.tx = *&v21.tx;
    [self wf_affineTransformForImageOrientation:&transform];
    v19 = v21;
    [self wf_affineTransformForImageMirroringOrientation:&v19];
    v21 = transform;
    [self size];
    v4 = v3;
    [self size];
    v6 = v5;
    BitsPerComponent = CGImageGetBitsPerComponent([self CGImage]);
    ColorSpace = CGImageGetColorSpace([self CGImage]);
    BitmapInfo = CGImageGetBitmapInfo([self CGImage]);
    v10 = CGBitmapContextCreate(0, v4, v6, BitsPerComponent, 0, ColorSpace, BitmapInfo);
    transform = v21;
    CGContextConcatCTM(v10, &transform);
    [self wf_majorAxisOrientedSize];
    v12 = v11;
    v14 = v13;
    cGImage = [self CGImage];
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v12;
    v23.size.height = v14;
    CGContextDrawImage(v10, v23, cGImage);
    Image = CGBitmapContextCreateImage(v10);
    selfCopy = [MEMORY[0x277D755B8] imageWithCGImage:Image];
    CGContextRelease(v10);
    CGImageRelease(Image);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end