@interface VNHomeAppFaceAnalyzerMultiDetectorBase
- (CGRect)calculateCropRectForInputFace:(id)a3 imageBuffer:(id)a4 options:(id)a5 error:(id *)a6;
- (vImage_Buffer)prepare_vImageBufferForCVPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
@end

@implementation VNHomeAppFaceAnalyzerMultiDetectorBase

- (vImage_Buffer)prepare_vImageBufferForCVPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v6 = malloc_type_calloc(0x20uLL, 1uLL, 0x1080040ABB4582EuLL);
  if (v6)
  {
    v6->data = CVPixelBufferGetBaseAddress(a3);
    v6->height = CVPixelBufferGetHeight(a3);
    v6->width = CVPixelBufferGetWidth(a3);
    v6->rowBytes = CVPixelBufferGetBytesPerRow(a3);
  }

  else if (a4)
  {
    *a4 = +[VNError errorForMemoryAllocationFailure];
  }

  return v6;
}

- (CGRect)calculateCropRectForInputFace:(id)a3 imageBuffer:(id)a4 options:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 width];
  v12 = [v10 height];
  if (v11 == -[VNEspressoModelFileBasedDetector networkRequiredInputImageWidth](self, "networkRequiredInputImageWidth") && v12 == -[VNEspressoModelFileBasedDetector networkRequiredInputImageHeight](self, "networkRequiredInputImageHeight") && ([v9 unalignedBoundingBox], v27.origin.x = 0.0, v27.origin.y = 0.0, v27.size.width = 1.0, v27.size.height = 1.0, CGRectEqualToRect(v25, v27)))
  {
    [v9 unalignedBoundingBox];
    v14 = v13 * v11;
    v16 = v15 * v11;
    v18 = v17 * v12;
    v20 = v19 * v12;
  }

  else
  {
    if (a6)
    {
      *a6 = [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error: input specifications are invalid for executing this request"];
    }

    v14 = *MEMORY[0x1E695F050];
    v18 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v20 = *(MEMORY[0x1E695F050] + 24);
  }

  v21 = v14;
  v22 = v18;
  v23 = v16;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

@end