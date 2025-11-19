@interface CVADisparityPostprocessingRequest
- (CGRect)primaryCaptureRect;
- (CVAQuaternion)sourceColorPixelBufferOrientation;
- (CVAVector)sourceColorPixelBufferGlobalMotion;
- (CVAVector)sourceColorPixelBufferGravity;
- (uint64_t)initWithSourceColorPixelBuffer:(float)a3 segmentationPixelBuffer:(float)a4 focusTileData:(double)a5 focusTileXOffset:(double)a6 focusTileYOffset:(double)a7 focusTileWidth:(double)a8 focusTileHeight:(uint64_t)a9 focusMapWidth:(__CVBuffer *)a10 focusMapHeight:(__CVBuffer *)a11 totalSensorCropXOffset:(void *)a12 totalSensorCropYOffset:(__int16)a13 totalSensorCropWidth:(__int16)a14 totalSensorCropHeight:(__int16)a15 phaseToBlurFactor:(__int16)a16 destinationDisparityPixelBuffer:(__int16)a17 focusRegion:(__int16)a18 focusRegionType:(__int16)a19 currentFocusPosition:(__int16)a20 lockFocalPlane:(__int16)a21 focusDistanceToMaxAllowedFocusDistanceRatio:(__int16)a22 sourceColorPixelBufferOrientation:(__CVBuffer *)texture sourceColorPixelBufferGravity:(void *)a24 sourceColorPixelBufferGlobalMotion:(int)a25 facesArray:(char)a26;
- (void)dealloc;
- (void)initWithSourceColorPixelBuffer:(double)a3 fixedPointDisparityPixelBuffer:(double)a4 destinationDisparityPixelBuffer:(double)a5 focusRegion:(double)a6 focusRegionType:(double)a7 currentFocusPosition:(double)a8 lockFocalPlane:(double)a9 sourceColorPixelBufferOrientation:(uint64_t)a10 sourceColorPixelBufferGravity:(__CVBuffer *)a11 sourceColorPixelBufferGlobalMotion:(__CVBuffer *)a12 facesArray:(__CVBuffer *)a13 disparityNormalizationMultiplier:(void *)a14 disparityNormalizationOffset:(int)a15 primaryCaptureRect:(char)a16 cropDepthToPrimaryCaptureRect:(uint64_t)a17;
- (void)initWithSourceColorPixelBuffer:(double)a3 segmentationPixelBuffer:(double)a4 networkDisparityPixelBuffer:(double)a5 destinationDisparityPixelBuffer:(double)a6 focusRegion:(double)a7 focusRegionType:(double)a8 currentFocusPosition:(double)a9 lockFocalPlane:(uint64_t)a10 sourceColorPixelBufferOrientation:(__CVBuffer *)a11 sourceColorPixelBufferGravity:(__CVBuffer *)a12 sourceColorPixelBufferGlobalMotion:(__CVBuffer *)a13 facesArray:(__CVBuffer *)a14 disparityNormalizationMultiplier:(void *)a15 disparityNormalizationOffset:(int)a16;
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

- (uint64_t)initWithSourceColorPixelBuffer:(float)a3 segmentationPixelBuffer:(float)a4 focusTileData:(double)a5 focusTileXOffset:(double)a6 focusTileYOffset:(double)a7 focusTileWidth:(double)a8 focusTileHeight:(uint64_t)a9 focusMapWidth:(__CVBuffer *)a10 focusMapHeight:(__CVBuffer *)a11 totalSensorCropXOffset:(void *)a12 totalSensorCropYOffset:(__int16)a13 totalSensorCropWidth:(__int16)a14 totalSensorCropHeight:(__int16)a15 phaseToBlurFactor:(__int16)a16 destinationDisparityPixelBuffer:(__int16)a17 focusRegion:(__int16)a18 focusRegionType:(__int16)a19 currentFocusPosition:(__int16)a20 lockFocalPlane:(__int16)a21 focusDistanceToMaxAllowedFocusDistanceRatio:(__int16)a22 sourceColorPixelBufferOrientation:(__CVBuffer *)texture sourceColorPixelBufferGravity:(void *)a24 sourceColorPixelBufferGlobalMotion:(int)a25 facesArray:(char)a26
{
  v52 = a12;
  v54 = a24;
  v55 = a33;
  *(a1 + 56) = a10;
  CVPixelBufferRetain(a10);
  *(a1 + 64) = a11;
  CVPixelBufferRetain(a11);
  *(a1 + 72) = 0;
  *(a1 + 80) = texture;
  CVPixelBufferRetain(texture);
  v38 = *(a1 + 120);
  *(a1 + 120) = v52;
  v53 = v52;

  *(a1 + 10) = a13;
  *(a1 + 12) = a14;
  *(a1 + 14) = a15;
  *(a1 + 16) = a16;
  *(a1 + 18) = a17;
  *(a1 + 20) = a18;
  *(a1 + 22) = a19;
  *(a1 + 24) = a20;
  *(a1 + 26) = a21;
  *(a1 + 28) = a22;
  *(a1 + 52) = a2;
  v39 = *(a1 + 96);
  *(a1 + 96) = v54;
  v40 = v54;

  *(a1 + 32) = a25;
  *(a1 + 8) = a26;
  *(a1 + 36) = a3;
  *(a1 + 40) = a4;
  *(a1 + 176) = a5;
  *(a1 + 184) = a6;
  *(a1 + 192) = a7;
  *(a1 + 200) = a8;
  *(a1 + 128) = a27;
  *(a1 + 136) = a28;
  *(a1 + 144) = a29;
  *(a1 + 152) = a30;
  *(a1 + 160) = a31;
  *(a1 + 168) = a32;
  v41 = *(a1 + 104);
  *(a1 + 104) = v55;

  v42 = *(MEMORY[0x1E695F058] + 16);
  *(a1 + 208) = *MEMORY[0x1E695F058];
  *(a1 + 224) = v42;
  return a1;
}

- (void)initWithSourceColorPixelBuffer:(double)a3 segmentationPixelBuffer:(double)a4 networkDisparityPixelBuffer:(double)a5 destinationDisparityPixelBuffer:(double)a6 focusRegion:(double)a7 focusRegionType:(double)a8 currentFocusPosition:(double)a9 lockFocalPlane:(uint64_t)a10 sourceColorPixelBufferOrientation:(__CVBuffer *)a11 sourceColorPixelBufferGravity:(__CVBuffer *)a12 sourceColorPixelBufferGlobalMotion:(__CVBuffer *)a13 facesArray:(__CVBuffer *)a14 disparityNormalizationMultiplier:(void *)a15 disparityNormalizationOffset:(int)a16
{
  v32 = a15;
  v33 = a21;
  v46.receiver = a1;
  v46.super_class = CVADisparityPostprocessingRequest;
  v34 = objc_msgSendSuper2(&v46, sel_init);
  v34[7] = a11;
  CVPixelBufferRetain(a11);
  v34[8] = a12;
  v34[9] = 0;
  CVPixelBufferRetain(a12);
  v34[11] = a13;
  CVPixelBufferRetain(a13);
  v34[10] = a14;
  CVPixelBufferRetain(a14);
  v35 = v34[12];
  v34[12] = v32;
  v36 = v32;

  *(v34 + 8) = a16;
  *(v34 + 9) = a2;
  *(v34 + 8) = a17;
  *(v34 + 22) = a3;
  *(v34 + 23) = a4;
  *(v34 + 24) = a5;
  *(v34 + 25) = a6;
  *(v34 + 16) = a7;
  *(v34 + 17) = a8;
  *(v34 + 18) = a9;
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

- (void)initWithSourceColorPixelBuffer:(double)a3 fixedPointDisparityPixelBuffer:(double)a4 destinationDisparityPixelBuffer:(double)a5 focusRegion:(double)a6 focusRegionType:(double)a7 currentFocusPosition:(double)a8 lockFocalPlane:(double)a9 sourceColorPixelBufferOrientation:(uint64_t)a10 sourceColorPixelBufferGravity:(__CVBuffer *)a11 sourceColorPixelBufferGlobalMotion:(__CVBuffer *)a12 facesArray:(__CVBuffer *)a13 disparityNormalizationMultiplier:(void *)a14 disparityNormalizationOffset:(int)a15 primaryCaptureRect:(char)a16 cropDepthToPrimaryCaptureRect:(uint64_t)a17
{
  v33 = a14;
  v34 = a20;
  v48.receiver = a1;
  v48.super_class = CVADisparityPostprocessingRequest;
  v35 = objc_msgSendSuper2(&v48, sel_init);
  v35[7] = a11;
  CVPixelBufferRetain(a11);
  v35[8] = 0;
  v35[9] = a12;
  CVPixelBufferRetain(a12);
  v35[10] = a13;
  CVPixelBufferRetain(a13);
  v36 = v35[12];
  v35[12] = v33;
  v37 = v33;

  *(v35 + 8) = a15;
  *(v35 + 9) = a2;
  *(v35 + 8) = a16;
  *(v35 + 22) = a3;
  *(v35 + 23) = a4;
  *(v35 + 24) = a5;
  *(v35 + 25) = a6;
  *(v35 + 16) = a7;
  *(v35 + 17) = a8;
  *(v35 + 18) = a9;
  v35[19] = a17;
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