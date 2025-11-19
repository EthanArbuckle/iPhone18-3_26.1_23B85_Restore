@interface MPSGraphCropResizeOpDescriptor
+ (id)descriptorWithResizeWidth:(unint64_t)a3 resizeHeight:(unint64_t)a4;
+ (id)descriptorWithResizeWidth:(unint64_t)a3 resizeHeight:(unint64_t)a4 normalizeCoordinates:(BOOL)a5 spatialScale:(float)a6 resizeMode:(unint64_t)a7 samplingMode:(unint64_t)a8 coordinateMode:(unint64_t)a9;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSGraphCropResizeOpDescriptor

+ (id)descriptorWithResizeWidth:(unint64_t)a3 resizeHeight:(unint64_t)a4 normalizeCoordinates:(BOOL)a5 spatialScale:(float)a6 resizeMode:(unint64_t)a7 samplingMode:(unint64_t)a8 coordinateMode:(unint64_t)a9
{
  v13 = a5;
  v16 = objc_alloc_init(MPSGraphCropResizeOpDescriptor);
  [(MPSGraphCropResizeOpDescriptor *)v16 setResizeWidth:a3];
  [(MPSGraphCropResizeOpDescriptor *)v16 setResizeHeight:a4];
  [(MPSGraphCropResizeOpDescriptor *)v16 setNormalizeCoordinates:v13];
  *&v17 = a6;
  [(MPSGraphCropResizeOpDescriptor *)v16 setSpatialScale:v17];
  [(MPSGraphCropResizeOpDescriptor *)v16 setResizeMode:a7];
  [(MPSGraphCropResizeOpDescriptor *)v16 setSamplingMode:a8];
  [(MPSGraphCropResizeOpDescriptor *)v16 setCoordinateMode:a9];

  return v16;
}

+ (id)descriptorWithResizeWidth:(unint64_t)a3 resizeHeight:(unint64_t)a4
{
  v6 = objc_alloc_init(MPSGraphCropResizeOpDescriptor);
  [(MPSGraphCropResizeOpDescriptor *)v6 setResizeWidth:a3];
  [(MPSGraphCropResizeOpDescriptor *)v6 setResizeHeight:a4];
  [(MPSGraphCropResizeOpDescriptor *)v6 setNormalizeCoordinates:1];
  LODWORD(v7) = 1.0;
  [(MPSGraphCropResizeOpDescriptor *)v6 setSpatialScale:v7];
  [(MPSGraphCropResizeOpDescriptor *)v6 setResizeMode:1];
  [(MPSGraphCropResizeOpDescriptor *)v6 setSamplingMode:1];
  [(MPSGraphCropResizeOpDescriptor *)v6 setCoordinateMode:0];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
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