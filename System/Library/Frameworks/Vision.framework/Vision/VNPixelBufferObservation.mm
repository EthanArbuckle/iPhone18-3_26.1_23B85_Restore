@interface VNPixelBufferObservation
- (BOOL)isEqual:(id)equal;
- (CGRect)croppedBoundingBox;
- (VNPixelBufferObservation)initWithCoder:(id)coder;
- (VNPixelBufferObservation)initWithOriginatingRequestSpecifier:(id)specifier featureName:(id)name CVPixelBuffer:(__CVBuffer *)buffer;
- (__CVBuffer)createPixelBufferInOrientation:(unsigned int)orientation error:(id *)error;
- (double)setCroppedBoundingBox:(double)box;
- (id)debugQuickLookObject;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNPixelBufferObservation

- (CGRect)croppedBoundingBox
{
  x = self->_croppedBoundingBox.origin.x;
  y = self->_croppedBoundingBox.origin.y;
  width = self->_croppedBoundingBox.size.width;
  height = self->_croppedBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)debugQuickLookObject
{
  v14[1] = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(self->_pixelBuffer);
  if (PixelFormatType - 1278226488 > 0x30 || ((1 << (PixelFormatType - 56)) & 0x1400000000001) == 0)
  {
    v11 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:self->_pixelBuffer];
  }

  else
  {
    v5 = [MEMORY[0x1E695F658] imageWithCVImageBuffer:self->_pixelBuffer];
    v6 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    v13 = @"inputBVector";
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v5 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v7];

    context = [MEMORY[0x1E695F620] context];
    [v8 extent];
    v10 = [context createCGImage:v8 fromRect:?];
    v11 = VNDebugImageFromCGImage(v10);
    CGImageRelease(v10);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = VNPixelBufferObservation;
  v5 = [(VNObservation *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [VNCVPixelBufferConversionHelpers isCVPixelBuffer:self->_pixelBuffer equalToCVPixelBuffer:equalCopy[12]];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNPixelBufferObservation;
  return [VNCVPixelBufferConversionHelpers computeHashForCVPixelBuffer:self->_pixelBuffer]^ __ROR8__([(VNObservation *)&v3 hash], 51);
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = VNPixelBufferObservation;
  v4 = [(VNObservation *)&v9 description];
  [v3 appendString:v4];

  featureName = [(VNPixelBufferObservation *)self featureName];
  v6 = featureName;
  if (featureName)
  {
    [v3 appendFormat:@" %@", featureName];
  }

  v7 = CFCopyDescription(self->_pixelBuffer);
  [v3 appendFormat:@" %@", v7];

  return v3;
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNPixelBufferObservation;
  vn_cloneObject = [(VNObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    vn_cloneObject[12] = CVPixelBufferRetain(self->_pixelBuffer);
    v4 = [(NSString *)self->_featureName copy];
    v5 = vn_cloneObject[13];
    vn_cloneObject[13] = v4;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNPixelBufferObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy vn_encodePixelBuffer:self->_pixelBuffer forKey:@"vnpbo_pbdict"];
  [coderCopy encodeObject:self->_featureName forKey:@"featureName"];
}

- (VNPixelBufferObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = VNPixelBufferObservation;
  v5 = [(VNObservation *)&v12 initWithCoder:coderCopy];
  if (v5 && (v6 = [coderCopy vn_decodePixelBufferForKey:@"vnpbo_pbdict"], (v5->_pixelBuffer = v6) != 0))
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureName"];
    v8 = [v7 copy];
    featureName = v5->_featureName;
    v5->_featureName = v8;

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = VNPixelBufferObservation;
  [(VNPixelBufferObservation *)&v3 dealloc];
}

- (VNPixelBufferObservation)initWithOriginatingRequestSpecifier:(id)specifier featureName:(id)name CVPixelBuffer:(__CVBuffer *)buffer
{
  specifierCopy = specifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = VNPixelBufferObservation;
  v10 = [(VNObservation *)&v14 initWithOriginatingRequestSpecifier:specifierCopy];
  if (v10)
  {
    v10->_pixelBuffer = CVPixelBufferRetain(buffer);
    v11 = [nameCopy copy];
    featureName = v10->_featureName;
    v10->_featureName = v11;
  }

  return v10;
}

- (double)setCroppedBoundingBox:(double)box
{
  if (result)
  {
    result[14] = a2;
    result[15] = box;
    result[16] = a4;
    result[17] = a5;
  }

  return result;
}

- (__CVBuffer)createPixelBufferInOrientation:(unsigned int)orientation error:(id *)error
{
  pixelBuffer = [(VNPixelBufferObservation *)self pixelBuffer];
  v7 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:pixelBuffer];
  v8 = [v7 imageByApplyingTransform:{v18, VNAffineTransformForVisionToTopLeftOriginOrientation(0, orientation, v18)}];

  [v8 extent];
  v10 = v9;
  v12 = v11;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v14 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v10 height:v12 pixelFormatType:PixelFormatType error:error];
  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E695F620]);
    v16 = [v15 initWithOptions:MEMORY[0x1E695E0F8]];
    [v16 render:v8 toCVPixelBuffer:v14];
  }

  return v14;
}

@end