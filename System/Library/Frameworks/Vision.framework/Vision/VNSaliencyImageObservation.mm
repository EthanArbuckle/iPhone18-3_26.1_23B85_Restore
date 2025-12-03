@interface VNSaliencyImageObservation
- (BOOL)isEqual:(id)equal;
- (CGRect)boundingBox;
- (CGRect)narrowedBoundingBox;
- (VNSaliencyImageObservation)initWithCoder:(id)coder;
- (VNSaliencyImageObservation)initWithOriginatingRequestSpecifier:(id)specifier rawSaliencyImage:(__CVBuffer *)image originalImageSize:(CGSize)size salientObjectBoundingBoxes:(id)boxes;
- (__CVBuffer)createSaliencyImageAndReturnError:(id *)error;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)_computeBoundingBoxes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNSaliencyImageObservation

- (CGRect)narrowedBoundingBox
{
  os_unfair_lock_lock(&self->_mComputeBoundingBoxesLock);
  if (CGRectIsNull(self->_mHighlySalientRegion))
  {
    [(VNSaliencyImageObservation *)self _computeBoundingBoxes];
  }

  os_unfair_lock_unlock(&self->_mComputeBoundingBoxesLock);
  x = self->_mHighlySalientRegion.origin.x;
  y = self->_mHighlySalientRegion.origin.y;
  width = self->_mHighlySalientRegion.size.width;
  height = self->_mHighlySalientRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)boundingBox
{
  os_unfair_lock_lock(&self->_mComputeBoundingBoxesLock);
  if (CGRectIsNull(self->_mSalientRegion))
  {
    [(VNSaliencyImageObservation *)self _computeBoundingBoxes];
  }

  os_unfair_lock_unlock(&self->_mComputeBoundingBoxesLock);
  x = self->_mSalientRegion.origin.x;
  y = self->_mSalientRegion.origin.y;
  width = self->_mSalientRegion.size.width;
  height = self->_mSalientRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_computeBoundingBoxes
{
  pixelBuffer = [(VNPixelBufferObservation *)self pixelBuffer];
  LODWORD(v4) = 1022739087;
  LODWORD(v5) = 4.0;
  LODWORD(v6) = 1022739087;
  v12 = [VNHeatMapUtilities boundingBoxesFromFloat32PixelBuffer:pixelBuffer thresholds:&unk_1F19C1F90 relativeToMaximum:1 applySmoothing:1 originalImageSize:0 sigmaX:self->_mOriginalImageSize.width sigmaY:self->_mOriginalImageSize.height nStd:v4 error:v6, v5];
  if ([v12 count] == 2)
  {
    v7 = [v12 objectAtIndexedSubscript:0];
    [v7 getValue:&self->_mSalientRegion size:32];

    v8 = [v12 objectAtIndexedSubscript:1];
    [v8 getValue:&self->_mHighlySalientRegion size:32];
  }

  else
  {
    v9 = MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 16);
    self->_mSalientRegion.origin = *MEMORY[0x1E695F050];
    self->_mSalientRegion.size = v10;
    v11 = *(v9 + 16);
    self->_mHighlySalientRegion.origin = *v9;
    self->_mHighlySalientRegion.size = v11;
  }
}

- (__CVBuffer)createSaliencyImageAndReturnError:(id *)error
{
  pixelBuffer = [(VNPixelBufferObservation *)self pixelBuffer];

  return CVPixelBufferRetain(pixelBuffer);
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNSaliencyImageObservation;
  v3 = [(VNPixelBufferObservation *)&v7 hash];
  width = self->_mOriginalImageSize.width;
  if (width == 0.0)
  {
    width = 0.0;
  }

  height = self->_mOriginalImageSize.height;
  if (height == 0.0)
  {
    height = 0.0;
  }

  return *&height ^ __ROR8__(*&width, 51) ^ __ROR8__(v3, 51);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = VNSaliencyImageObservation;
  v5 = [(VNPixelBufferObservation *)&v7 isEqual:equalCopy]&& self->_mOriginalImageSize.height == equalCopy[19] && self->_mOriginalImageSize.width == equalCopy[18];

  return v5;
}

- (id)vn_cloneObject
{
  v10.receiver = self;
  v10.super_class = VNSaliencyImageObservation;
  vn_cloneObject = [(VNPixelBufferObservation *)&v10 vn_cloneObject];
  v4 = vn_cloneObject;
  if (vn_cloneObject)
  {
    size = self->_mSalientRegion.size;
    *(vn_cloneObject + 160) = self->_mSalientRegion.origin;
    *(vn_cloneObject + 176) = size;
    v6 = self->_mHighlySalientRegion.size;
    *(vn_cloneObject + 192) = self->_mHighlySalientRegion.origin;
    *(vn_cloneObject + 208) = v6;
    *(vn_cloneObject + 144) = self->_mOriginalImageSize;
    v7 = [(NSArray *)self->_mSalientObjects copy];
    v8 = v4[29];
    v4[29] = v7;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = VNSaliencyImageObservation;
  [(VNPixelBufferObservation *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:&unk_1F19C1300 forKey:@"VNSaliencyImageObservation"];
  [coderCopy encodeDouble:@"OISW" forKey:self->_mOriginalImageSize.width];
  [coderCopy encodeDouble:@"OISH" forKey:self->_mOriginalImageSize.height];
  [coderCopy encodeObject:self->_mSalientObjects forKey:@"SOBJ"];
  [coderCopy encodeDouble:@"BBOX" forKey:self->_mSalientRegion.origin.x];
  [coderCopy encodeDouble:@"BBOY" forKey:self->_mSalientRegion.origin.y];
  [coderCopy encodeDouble:@"BBSW" forKey:self->_mSalientRegion.size.width];
  [coderCopy encodeDouble:@"BBSH" forKey:self->_mSalientRegion.size.height];
  self = (self + 192);
  [coderCopy encodeDouble:@"NBBOX" forKey:*&self->super.super.super.isa];
  [coderCopy encodeDouble:@"NBBOY" forKey:*&self->super.super._originatingRequestSpecifier];
  [coderCopy encodeDouble:@"NBBSW" forKey:*&self->super.super._confidence];
  [coderCopy encodeDouble:@"NBBSH" forKey:*&self->super.super._uuid];
  objc_autoreleasePoolPop(v5);
}

- (VNSaliencyImageObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = VNSaliencyImageObservation;
  v5 = [(VNPixelBufferObservation *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VNSaliencyImageObservation"];
    if ([v6 intValue] != 1)
    {

      v23 = 0;
      goto LABEL_6;
    }

    [coderCopy decodeDoubleForKey:@"OISW"];
    v8 = v7;
    [coderCopy decodeDoubleForKey:@"OISH"];
    v5->_mOriginalImageSize.width = v8;
    v5->_mOriginalImageSize.height = v9;
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"SOBJ"];
    mSalientObjects = v5->_mSalientObjects;
    v5->_mSalientObjects = v13;

    [coderCopy decodeDoubleForKey:@"BBOX"];
    v5->_mSalientRegion.origin.x = v15;
    [coderCopy decodeDoubleForKey:@"BBOY"];
    v5->_mSalientRegion.origin.y = v16;
    [coderCopy decodeDoubleForKey:@"BBSW"];
    v5->_mSalientRegion.size.width = v17;
    [coderCopy decodeDoubleForKey:@"BBSH"];
    v5->_mSalientRegion.size.height = v18;
    [coderCopy decodeDoubleForKey:@"NBBOX"];
    v5->_mHighlySalientRegion.origin.x = v19;
    [coderCopy decodeDoubleForKey:@"NBBOY"];
    v5->_mHighlySalientRegion.origin.y = v20;
    [coderCopy decodeDoubleForKey:@"NBBSW"];
    v5->_mHighlySalientRegion.size.width = v21;
    [coderCopy decodeDoubleForKey:@"NBBSH"];
    v5->_mHighlySalientRegion.size.height = v22;
  }

  v23 = v5;
LABEL_6:

  return v23;
}

- (VNSaliencyImageObservation)initWithOriginatingRequestSpecifier:(id)specifier rawSaliencyImage:(__CVBuffer *)image originalImageSize:(CGSize)size salientObjectBoundingBoxes:(id)boxes
{
  height = size.height;
  width = size.width;
  specifierCopy = specifier;
  boxesCopy = boxes;
  v21.receiver = self;
  v21.super_class = VNSaliencyImageObservation;
  v13 = [(VNPixelBufferObservation *)&v21 initWithOriginatingRequestSpecifier:specifierCopy featureName:0 CVPixelBuffer:image];
  v14 = v13;
  if (v13)
  {
    v13->_mOriginalImageSize.width = width;
    v13->_mOriginalImageSize.height = height;
    v15 = MEMORY[0x1E695F050];
    v16 = *(MEMORY[0x1E695F050] + 16);
    v13->_mSalientRegion.origin = *MEMORY[0x1E695F050];
    v13->_mSalientRegion.size = v16;
    v17 = v15[1];
    v13->_mHighlySalientRegion.origin = *v15;
    v13->_mHighlySalientRegion.size = v17;
    v18 = [boxesCopy copy];
    mSalientObjects = v14->_mSalientObjects;
    v14->_mSalientObjects = v18;
  }

  return v14;
}

@end