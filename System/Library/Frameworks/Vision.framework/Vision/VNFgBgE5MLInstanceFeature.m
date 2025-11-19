@interface VNFgBgE5MLInstanceFeature
- (CGRect)bbox;
- (CGSize)mapSize;
- (VNFgBgE5MLInstanceFeature)initWithQueryID:(int)a3 miyoshiConfidence:(float)a4 cocoConfidence:(float)a5 IoU:(float)a6 stabilityScore:(float)a7 miyoshiCategory:(int)a8 cocoCategory:(int)a9 miyoshiCategoryName:(id)a10 cocoCategoryName:(id)a11 bbox:(CGRect)a12 mapSize:(CGSize)a13 segmentation:()vector<CGPoint;
- (id).cxx_construct;
@end

@implementation VNFgBgE5MLInstanceFeature

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

- (CGSize)mapSize
{
  objc_copyStruct(v4, &self->_mapSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)bbox
{
  x = self->_bbox.origin.x;
  y = self->_bbox.origin.y;
  width = self->_bbox.size.width;
  height = self->_bbox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (VNFgBgE5MLInstanceFeature)initWithQueryID:(int)a3 miyoshiConfidence:(float)a4 cocoConfidence:(float)a5 IoU:(float)a6 stabilityScore:(float)a7 miyoshiCategory:(int)a8 cocoCategory:(int)a9 miyoshiCategoryName:(id)a10 cocoCategoryName:(id)a11 bbox:(CGRect)a12 mapSize:(CGSize)a13 segmentation:()vector<CGPoint
{
  v15 = v14;
  height = a12.size.height;
  width = a12.size.width;
  y = a12.origin.y;
  x = a12.origin.x;
  v30 = a10;
  v31 = a11;
  v35.receiver = self;
  v35.super_class = VNFgBgE5MLInstanceFeature;
  v32 = [(VNFgBgE5MLInstanceFeature *)&v35 init];
  v33 = v32;
  if (v32)
  {
    v32->_queryID = a3;
    v32->_miyoshiConfidence = a4;
    v32->_cocoConfidence = a5;
    v32->_IoU = a6;
    v32->_stabilityScore = a7;
    v32->_miyoshiCategory = a8;
    v32->_cocoCategory = a9;
    objc_storeStrong(&v32->_miyoshiCategoryName, a10);
    objc_storeStrong(&v33->_cocoCategoryName, a11);
    v33->_bbox.origin.x = x;
    v33->_bbox.origin.y = y;
    v33->_bbox.size.width = width;
    v33->_bbox.size.height = height;
    v33->_mapSize = a13;
    if (&v33->_segmentation != v15)
    {
      std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&v33->_segmentation.__begin_, *v15, v15[1], (v15[1] - *v15) >> 4);
    }
  }

  return v33;
}

@end