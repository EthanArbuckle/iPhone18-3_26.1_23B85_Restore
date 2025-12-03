@interface VNHomeAppFaceAnalyzerMultiDetectorBase
- (CGRect)calculateCropRectForInputFace:(id)face imageBuffer:(id)buffer options:(id)options error:(id *)error;
- (vImage_Buffer)prepare_vImageBufferForCVPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
@end

@implementation VNHomeAppFaceAnalyzerMultiDetectorBase

- (vImage_Buffer)prepare_vImageBufferForCVPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v6 = malloc_type_calloc(0x20uLL, 1uLL, 0x1080040ABB4582EuLL);
  if (v6)
  {
    v6->data = CVPixelBufferGetBaseAddress(buffer);
    v6->height = CVPixelBufferGetHeight(buffer);
    v6->width = CVPixelBufferGetWidth(buffer);
    v6->rowBytes = CVPixelBufferGetBytesPerRow(buffer);
  }

  else if (error)
  {
    *error = +[VNError errorForMemoryAllocationFailure];
  }

  return v6;
}

- (CGRect)calculateCropRectForInputFace:(id)face imageBuffer:(id)buffer options:(id)options error:(id *)error
{
  faceCopy = face;
  bufferCopy = buffer;
  width = [bufferCopy width];
  height = [bufferCopy height];
  if (width == -[VNEspressoModelFileBasedDetector networkRequiredInputImageWidth](self, "networkRequiredInputImageWidth") && height == -[VNEspressoModelFileBasedDetector networkRequiredInputImageHeight](self, "networkRequiredInputImageHeight") && ([faceCopy unalignedBoundingBox], v27.origin.x = 0.0, v27.origin.y = 0.0, v27.size.width = 1.0, v27.size.height = 1.0, CGRectEqualToRect(v25, v27)))
  {
    [faceCopy unalignedBoundingBox];
    v14 = v13 * width;
    v16 = v15 * width;
    v18 = v17 * height;
    v20 = v19 * height;
  }

  else
  {
    if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error: input specifications are invalid for executing this request"];
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