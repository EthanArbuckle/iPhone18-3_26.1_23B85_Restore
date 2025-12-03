@interface CNSyncImageResult
- (CGRect)cropRect;
- (CNSyncImageResult)initWithType:(unint64_t)type imageData:(id)data cropRect:(CGRect)rect imageHash:(id)hash;
@end

@implementation CNSyncImageResult

- (CNSyncImageResult)initWithType:(unint64_t)type imageData:(id)data cropRect:(CGRect)rect imageHash:(id)hash
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  hashCopy = hash;
  v20.receiver = self;
  v20.super_class = CNSyncImageResult;
  v16 = [(CNSyncImageResult *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    objc_storeStrong(&v16->_imageData, data);
    v17->_cropRect.origin.x = x;
    v17->_cropRect.origin.y = y;
    v17->_cropRect.size.width = width;
    v17->_cropRect.size.height = height;
    objc_storeStrong(&v17->_imageHash, hash);
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