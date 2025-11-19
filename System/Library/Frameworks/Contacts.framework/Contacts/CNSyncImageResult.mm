@interface CNSyncImageResult
- (CGRect)cropRect;
- (CNSyncImageResult)initWithType:(unint64_t)a3 imageData:(id)a4 cropRect:(CGRect)a5 imageHash:(id)a6;
@end

@implementation CNSyncImageResult

- (CNSyncImageResult)initWithType:(unint64_t)a3 imageData:(id)a4 cropRect:(CGRect)a5 imageHash:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4;
  v15 = a6;
  v20.receiver = self;
  v20.super_class = CNSyncImageResult;
  v16 = [(CNSyncImageResult *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = a3;
    objc_storeStrong(&v16->_imageData, a4);
    v17->_cropRect.origin.x = x;
    v17->_cropRect.origin.y = y;
    v17->_cropRect.size.width = width;
    v17->_cropRect.size.height = height;
    objc_storeStrong(&v17->_imageHash, a6);
    v18 = v17;
  }

  return v17;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end