@interface NTKUltraCubePreviewCoveragePercentageValidator
- (NTKUltraCubePreviewCoveragePercentageValidator)initWithMaskImage:(CGImage *)image orientation:(unsigned int)orientation;
- (double)coverageOfTimeLabel:(CGRect)label;
- (void)dealloc;
- (void)validateTimeLabel:(CGRect)label completion:(id)completion;
@end

@implementation NTKUltraCubePreviewCoveragePercentageValidator

- (NTKUltraCubePreviewCoveragePercentageValidator)initWithMaskImage:(CGImage *)image orientation:(unsigned int)orientation
{
  v16.receiver = self;
  v16.super_class = NTKUltraCubePreviewCoveragePercentageValidator;
  v5 = [(NTKUltraCubePreviewCoveragePercentageValidator *)&v16 init];
  if (v5)
  {
    CGImageGetWidth(image);
    CGImageGetHeight(image);
    v6 = objc_autoreleasePoolPush();
    NTKCGImagePropertyOrientationToUIImageOrientation();
    NTKImagePresentationTransform();
    memset(&buf, 0, sizeof(buf));
    NTKImagePresentationSize();
    v8 = rint(v7 * 0.25);
    v10 = rint(v9 * 0.25);
    v5->_width = v8;
    v5->_height = v10;
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 134218240;
      *(&buf.a + 4) = v8;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "createScaledInputData: scale input data to == %ldx%ld", &buf, 0x16u);
    }

    v12 = [NSMutableData dataWithLength:(v10 + 1) * (v8 + 1)];
    v13 = CGColorSpaceCreateWithName(kCGColorSpaceGenericGray);
    v14 = sub_198EC(v8 + 1, v10 + 1, v13, 0, v12);
    CGColorSpaceRelease(v13);
    memset(&buf, 0, sizeof(buf));
    memset(&v18, 0, sizeof(v18));
    sub_197D4(image, &v18, &buf);
    transform = buf;
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformInvert(&v18, &transform);
    transform = buf;
    CGContextConcatCTM(v14, &transform);
    transform = v18;
    v20.origin.x = 1.0;
    v20.origin.y = 0.0;
    v20.size.width = v8;
    v20.size.height = v10;
    v21 = CGRectApplyAffineTransform(v20, &transform);
    CGContextDrawImage(v14, v21, image);
    CGContextRelease(v14);
    v5->_cumulativeData = createCumulativeData(v12, v5->_width, v5->_height);

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)dealloc
{
  cumulativeData = self->_cumulativeData;
  if (cumulativeData)
  {
    free(cumulativeData);
  }

  v4.receiver = self;
  v4.super_class = NTKUltraCubePreviewCoveragePercentageValidator;
  [(NTKUltraCubePreviewCoveragePercentageValidator *)&v4 dealloc];
}

- (double)coverageOfTimeLabel:(CGRect)label
{
  height = label.size.height;
  width = label.size.width;
  y = label.origin.y;
  x = label.origin.x;
  v8 = self->_width;
  v9 = v8;
  v10 = self->_height;
  CGAffineTransformMakeScale(&v17, v8, v10);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v19 = CGRectApplyAffineTransform(v18, &v17);
  if (v19.origin.x < 0.0)
  {
    v19.origin.x = 0.0;
  }

  if (v19.origin.y < 0.0)
  {
    v19.origin.y = 0.0;
  }

  if (v19.size.width > v9 - v19.origin.x)
  {
    v19.size.width = v9 - v19.origin.x;
  }

  v11 = rint(v19.origin.x + 1.0);
  if (v19.size.height > v10 - v19.origin.y)
  {
    v19.size.height = v10 - v19.origin.y;
  }

  v12 = rint(v19.origin.x + v19.size.width + -1.0 + 1.0);
  cumulativeData = self->_cumulativeData;
  v14 = &cumulativeData[rint(v19.origin.y + v19.size.height + -1.0 + 1.0) * (v8 + 1)];
  v15 = &cumulativeData[(rint(v19.origin.y + 1.0) - 1) * (v8 + 1)];
  return (v14[v12] - (v14[v11 - 1] + v15[v12]) + v15[v11 - 1]) / (v19.size.width * v19.size.height * 255.0);
}

- (void)validateTimeLabel:(CGRect)label completion:(id)completion
{
  height = label.size.height;
  width = label.size.width;
  y = label.origin.y;
  x = label.origin.x;
  completionCopy = completion;
  [(NTKUltraCubePreviewCoveragePercentageValidator *)self coverageOfTimeLabel:x, y, width, height];
  completionCopy[2](completionCopy, v9 <= 0.2);
}

@end