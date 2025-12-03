@interface MPSGraphCropResizeOpDescriptor
+ (id)descriptorWithResizeWidth:(unint64_t)width resizeHeight:(unint64_t)height;
+ (id)descriptorWithResizeWidth:(unint64_t)width resizeHeight:(unint64_t)height normalizeCoordinates:(BOOL)coordinates spatialScale:(float)scale resizeMode:(unint64_t)mode samplingMode:(unint64_t)samplingMode coordinateMode:(unint64_t)coordinateMode;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSGraphCropResizeOpDescriptor

+ (id)descriptorWithResizeWidth:(unint64_t)width resizeHeight:(unint64_t)height normalizeCoordinates:(BOOL)coordinates spatialScale:(float)scale resizeMode:(unint64_t)mode samplingMode:(unint64_t)samplingMode coordinateMode:(unint64_t)coordinateMode
{
  coordinatesCopy = coordinates;
  v16 = objc_alloc_init(MPSGraphCropResizeOpDescriptor);
  [(MPSGraphCropResizeOpDescriptor *)v16 setResizeWidth:width];
  [(MPSGraphCropResizeOpDescriptor *)v16 setResizeHeight:height];
  [(MPSGraphCropResizeOpDescriptor *)v16 setNormalizeCoordinates:coordinatesCopy];
  *&v17 = scale;
  [(MPSGraphCropResizeOpDescriptor *)v16 setSpatialScale:v17];
  [(MPSGraphCropResizeOpDescriptor *)v16 setResizeMode:mode];
  [(MPSGraphCropResizeOpDescriptor *)v16 setSamplingMode:samplingMode];
  [(MPSGraphCropResizeOpDescriptor *)v16 setCoordinateMode:coordinateMode];

  return v16;
}

+ (id)descriptorWithResizeWidth:(unint64_t)width resizeHeight:(unint64_t)height
{
  v6 = objc_alloc_init(MPSGraphCropResizeOpDescriptor);
  [(MPSGraphCropResizeOpDescriptor *)v6 setResizeWidth:width];
  [(MPSGraphCropResizeOpDescriptor *)v6 setResizeHeight:height];
  [(MPSGraphCropResizeOpDescriptor *)v6 setNormalizeCoordinates:1];
  LODWORD(v7) = 1.0;
  [(MPSGraphCropResizeOpDescriptor *)v6 setSpatialScale:v7];
  [(MPSGraphCropResizeOpDescriptor *)v6 setResizeMode:1];
  [(MPSGraphCropResizeOpDescriptor *)v6 setSamplingMode:1];
  [(MPSGraphCropResizeOpDescriptor *)v6 setCoordinateMode:0];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPSGraphCropResizeOpDescriptor alloc];
  [(MPSGraphCropResizeOpDescriptor *)v4 setResizeWidth:self->_resizeWidth];
  [(MPSGraphCropResizeOpDescriptor *)v4 setResizeHeight:self->_resizeHeight];
  [(MPSGraphCropResizeOpDescriptor *)v4 setNormalizeCoordinates:self->_normalizeCoordinates];
  *&v5 = self->_spatialScale;
  [(MPSGraphCropResizeOpDescriptor *)v4 setSpatialScale:v5];
  [(MPSGraphCropResizeOpDescriptor *)v4 setResizeMode:self->_resizeMode];
  [(MPSGraphCropResizeOpDescriptor *)v4 setSamplingMode:self->_samplingMode];
  [(MPSGraphCropResizeOpDescriptor *)v4 setCoordinateMode:self->_coordinateMode];
  [(MPSGraphCropResizeOpDescriptor *)v4 setResizeWidth:self->_resizeWidth];
  return v4;
}

@end