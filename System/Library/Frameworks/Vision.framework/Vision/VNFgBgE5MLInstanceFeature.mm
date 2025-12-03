@interface VNFgBgE5MLInstanceFeature
- (CGRect)bbox;
- (CGSize)mapSize;
- (VNFgBgE5MLInstanceFeature)initWithQueryID:(int)d miyoshiConfidence:(float)confidence cocoConfidence:(float)cocoConfidence IoU:(float)u stabilityScore:(float)score miyoshiCategory:(int)category cocoCategory:(int)cocoCategory miyoshiCategoryName:(id)self0 cocoCategoryName:(id)self1 bbox:(CGRect)self2 mapSize:(CGSize)self3 segmentation:()vector<CGPoint;
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

- (VNFgBgE5MLInstanceFeature)initWithQueryID:(int)d miyoshiConfidence:(float)confidence cocoConfidence:(float)cocoConfidence IoU:(float)u stabilityScore:(float)score miyoshiCategory:(int)category cocoCategory:(int)cocoCategory miyoshiCategoryName:(id)self0 cocoCategoryName:(id)self1 bbox:(CGRect)self2 mapSize:(CGSize)self3 segmentation:()vector<CGPoint
{
  v15 = v14;
  height = bbox.size.height;
  width = bbox.size.width;
  y = bbox.origin.y;
  x = bbox.origin.x;
  nameCopy = name;
  categoryNameCopy = categoryName;
  v35.receiver = self;
  v35.super_class = VNFgBgE5MLInstanceFeature;
  v32 = [(VNFgBgE5MLInstanceFeature *)&v35 init];
  v33 = v32;
  if (v32)
  {
    v32->_queryID = d;
    v32->_miyoshiConfidence = confidence;
    v32->_cocoConfidence = cocoConfidence;
    v32->_IoU = u;
    v32->_stabilityScore = score;
    v32->_miyoshiCategory = category;
    v32->_cocoCategory = cocoCategory;
    objc_storeStrong(&v32->_miyoshiCategoryName, name);
    objc_storeStrong(&v33->_cocoCategoryName, categoryName);
    v33->_bbox.origin.x = x;
    v33->_bbox.origin.y = y;
    v33->_bbox.size.width = width;
    v33->_bbox.size.height = height;
    v33->_mapSize = size;
    if (&v33->_segmentation != v15)
    {
      std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&v33->_segmentation.__begin_, *v15, v15[1], (v15[1] - *v15) >> 4);
    }
  }

  return v33;
}

@end