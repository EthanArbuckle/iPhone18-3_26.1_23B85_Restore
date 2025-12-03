@interface CVADisparityPostprocessingRequest
- (CGRect)primaryCaptureRect;
- (CVAQuaternion)sourceColorPixelBufferOrientation;
- (CVAVector)sourceColorPixelBufferGlobalMotion;
- (CVAVector)sourceColorPixelBufferGravity;
- (uint64_t)initWithSourceColorPixelBuffer:(float)buffer segmentationPixelBuffer:(float)pixelBuffer focusTileData:(double)data focusTileXOffset:(double)offset focusTileYOffset:(double)yOffset focusTileWidth:(double)width focusTileHeight:(uint64_t)height focusMapWidth:(__CVBuffer *)self0 focusMapHeight:(__CVBuffer *)self1 totalSensorCropXOffset:(void *)self2 totalSensorCropYOffset:(__int16)self3 totalSensorCropWidth:(__int16)self4 totalSensorCropHeight:(__int16)self5 phaseToBlurFactor:(__int16)self6 destinationDisparityPixelBuffer:(__int16)self7 focusRegion:(__int16)self8 focusRegionType:(__int16)self9 currentFocusPosition:(__int16)position lockFocalPlane:(__int16)plane focusDistanceToMaxAllowedFocusDistanceRatio:(__int16)ratio sourceColorPixelBufferOrientation:(__CVBuffer *)texture sourceColorPixelBufferGravity:(void *)gravity sourceColorPixelBufferGlobalMotion:(int)motion facesArray:(char)array;
- (void)dealloc;
- (void)initWithSourceColorPixelBuffer:(double)buffer fixedPointDisparityPixelBuffer:(double)pixelBuffer destinationDisparityPixelBuffer:(double)disparityPixelBuffer focusRegion:(double)region focusRegionType:(double)type currentFocusPosition:(double)position lockFocalPlane:(double)plane sourceColorPixelBufferOrientation:(uint64_t)self0 sourceColorPixelBufferGravity:(__CVBuffer *)self1 sourceColorPixelBufferGlobalMotion:(__CVBuffer *)self2 facesArray:(__CVBuffer *)self3 disparityNormalizationMultiplier:(void *)self4 disparityNormalizationOffset:(int)self5 primaryCaptureRect:(char)self6 cropDepthToPrimaryCaptureRect:(uint64_t)self7;
- (void)initWithSourceColorPixelBuffer:(double)buffer segmentationPixelBuffer:(double)pixelBuffer networkDisparityPixelBuffer:(double)disparityPixelBuffer destinationDisparityPixelBuffer:(double)destinationDisparityPixelBuffer focusRegion:(double)region focusRegionType:(double)type currentFocusPosition:(double)position lockFocalPlane:(uint64_t)self0 sourceColorPixelBufferOrientation:(__CVBuffer *)self1 sourceColorPixelBufferGravity:(__CVBuffer *)self2 sourceColorPixelBufferGlobalMotion:(__CVBuffer *)self3 facesArray:(__CVBuffer *)self4 disparityNormalizationMultiplier:(void *)self5 disparityNormalizationOffset:(int)self6;
@end

@implementation CVADisparityPostprocessingRequest

- (CVAVector)sourceColorPixelBufferGlobalMotion
{
  objc_copyStruct(dest, &self->_sourceColorPixelBufferGlobalMotion, 24, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)primaryCaptureRect
{
  objc_copyStruct(v6, &self->_primaryCaptureRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CVAVector)sourceColorPixelBufferGravity
{
  objc_copyStruct(dest, &self->_sourceColorPixelBufferGravity, 24, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CVAQuaternion)sourceColorPixelBufferOrientation
{
  objc_copyStruct(v6, &self->_sourceColorPixelBufferOrientation, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.z = v5;
  result.y = v4;
  result.x = v3;
  result.w = v2;
  return result;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_sourceColorPixelBuffer);
  CVPixelBufferRelease(self->_fixedPointDisparityPixelBuffer);
  CVPixelBufferRelease(self->_destinationDisparityPixelBuffer);
  CVPixelBufferRelease(self->_segmentationPixelBuffer);
  CVPixelBufferRelease(self->_networkDisparityPixelBuffer);
  v3.receiver = self;
  v3.super_class = CVADisparityPostprocessingRequest;
  [(CVADisparityPostprocessingRequest *)&v3 dealloc];
}

- (uint64_t)initWithSourceColorPixelBuffer:(float)buffer segmentationPixelBuffer:(float)pixelBuffer focusTileData:(double)data focusTileXOffset:(double)offset focusTileYOffset:(double)yOffset focusTileWidth:(double)width focusTileHeight:(uint64_t)height focusMapWidth:(__CVBuffer *)self0 focusMapHeight:(__CVBuffer *)self1 totalSensorCropXOffset:(void *)self2 totalSensorCropYOffset:(__int16)self3 totalSensorCropWidth:(__int16)self4 totalSensorCropHeight:(__int16)self5 phaseToBlurFactor:(__int16)self6 destinationDisparityPixelBuffer:(__int16)self7 focusRegion:(__int16)self8 focusRegionType:(__int16)self9 currentFocusPosition:(__int16)position lockFocalPlane:(__int16)plane focusDistanceToMaxAllowedFocusDistanceRatio:(__int16)ratio sourceColorPixelBufferOrientation:(__CVBuffer *)texture sourceColorPixelBufferGravity:(void *)gravity sourceColorPixelBufferGlobalMotion:(int)motion facesArray:(char)array
{
  xOffsetCopy = xOffset;
  gravityCopy = gravity;
  v55 = a33;
  *(self + 56) = mapWidth;
  CVPixelBufferRetain(mapWidth);
  *(self + 64) = mapHeight;
  CVPixelBufferRetain(mapHeight);
  *(self + 72) = 0;
  *(self + 80) = texture;
  CVPixelBufferRetain(texture);
  v38 = *(self + 120);
  *(self + 120) = xOffsetCopy;
  v53 = xOffsetCopy;

  *(self + 10) = cropYOffset;
  *(self + 12) = cropWidth;
  *(self + 14) = cropHeight;
  *(self + 16) = factor;
  *(self + 18) = disparityPixelBuffer;
  *(self + 20) = region;
  *(self + 22) = type;
  *(self + 24) = position;
  *(self + 26) = plane;
  *(self + 28) = ratio;
  *(self + 52) = a2;
  v39 = *(self + 96);
  *(self + 96) = gravityCopy;
  v40 = gravityCopy;

  *(self + 32) = motion;
  *(self + 8) = array;
  *(self + 36) = buffer;
  *(self + 40) = pixelBuffer;
  *(self + 176) = data;
  *(self + 184) = offset;
  *(self + 192) = yOffset;
  *(self + 200) = width;
  *(self + 128) = a27;
  *(self + 136) = a28;
  *(self + 144) = a29;
  *(self + 152) = a30;
  *(self + 160) = a31;
  *(self + 168) = a32;
  v41 = *(self + 104);
  *(self + 104) = v55;

  v42 = *(MEMORY[0x1E695F058] + 16);
  *(self + 208) = *MEMORY[0x1E695F058];
  *(self + 224) = v42;
  return self;
}

- (void)initWithSourceColorPixelBuffer:(double)buffer segmentationPixelBuffer:(double)pixelBuffer networkDisparityPixelBuffer:(double)disparityPixelBuffer destinationDisparityPixelBuffer:(double)destinationDisparityPixelBuffer focusRegion:(double)region focusRegionType:(double)type currentFocusPosition:(double)position lockFocalPlane:(uint64_t)self0 sourceColorPixelBufferOrientation:(__CVBuffer *)self1 sourceColorPixelBufferGravity:(__CVBuffer *)self2 sourceColorPixelBufferGlobalMotion:(__CVBuffer *)self3 facesArray:(__CVBuffer *)self4 disparityNormalizationMultiplier:(void *)self5 disparityNormalizationOffset:(int)self6
{
  multiplierCopy = multiplier;
  v33 = a21;
  v46.receiver = self;
  v46.super_class = CVADisparityPostprocessingRequest;
  v34 = objc_msgSendSuper2(&v46, sel_init);
  v34[7] = orientation;
  CVPixelBufferRetain(orientation);
  v34[8] = gravity;
  v34[9] = 0;
  CVPixelBufferRetain(gravity);
  v34[11] = motion;
  CVPixelBufferRetain(motion);
  v34[10] = array;
  CVPixelBufferRetain(array);
  v35 = v34[12];
  v34[12] = multiplierCopy;
  v36 = multiplierCopy;

  *(v34 + 8) = offset;
  *(v34 + 9) = a2;
  *(v34 + 8) = a17;
  *(v34 + 22) = buffer;
  *(v34 + 23) = pixelBuffer;
  *(v34 + 24) = disparityPixelBuffer;
  *(v34 + 25) = destinationDisparityPixelBuffer;
  *(v34 + 16) = region;
  *(v34 + 17) = type;
  *(v34 + 18) = position;
  v34[19] = a18;
  v34[20] = a19;
  v34[21] = a20;
  v37 = v34[13];
  v34[13] = v33;

  v38 = MEMORY[0x1E695F058];
  *(v34 + 11) = a22;
  *(v34 + 12) = a23;
  v39 = v38[1];
  *(v34 + 13) = *v38;
  *(v34 + 14) = v39;
  return v34;
}

- (void)initWithSourceColorPixelBuffer:(double)buffer fixedPointDisparityPixelBuffer:(double)pixelBuffer destinationDisparityPixelBuffer:(double)disparityPixelBuffer focusRegion:(double)region focusRegionType:(double)type currentFocusPosition:(double)position lockFocalPlane:(double)plane sourceColorPixelBufferOrientation:(uint64_t)self0 sourceColorPixelBufferGravity:(__CVBuffer *)self1 sourceColorPixelBufferGlobalMotion:(__CVBuffer *)self2 facesArray:(__CVBuffer *)self3 disparityNormalizationMultiplier:(void *)self4 disparityNormalizationOffset:(int)self5 primaryCaptureRect:(char)self6 cropDepthToPrimaryCaptureRect:(uint64_t)self7
{
  multiplierCopy = multiplier;
  v34 = a20;
  v48.receiver = self;
  v48.super_class = CVADisparityPostprocessingRequest;
  v35 = objc_msgSendSuper2(&v48, sel_init);
  v35[7] = gravity;
  CVPixelBufferRetain(gravity);
  v35[8] = 0;
  v35[9] = motion;
  CVPixelBufferRetain(motion);
  v35[10] = array;
  CVPixelBufferRetain(array);
  v36 = v35[12];
  v35[12] = multiplierCopy;
  v37 = multiplierCopy;

  *(v35 + 8) = offset;
  *(v35 + 9) = a2;
  *(v35 + 8) = rect;
  *(v35 + 22) = buffer;
  *(v35 + 23) = pixelBuffer;
  *(v35 + 24) = disparityPixelBuffer;
  *(v35 + 25) = region;
  *(v35 + 16) = type;
  *(v35 + 17) = position;
  *(v35 + 18) = plane;
  v35[19] = captureRect;
  v35[20] = a18;
  v35[21] = a19;
  v38 = v35[13];
  v35[13] = v34;

  *(v35 + 11) = a21;
  *(v35 + 12) = a22;
  v35[26] = a23;
  v35[27] = a24;
  v35[28] = a25;
  v35[29] = a26;
  *(v35 + 9) = a27;
  return v35;
}

@end