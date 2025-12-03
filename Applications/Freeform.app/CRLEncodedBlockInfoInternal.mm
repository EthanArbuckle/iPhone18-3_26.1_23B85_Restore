@interface CRLEncodedBlockInfoInternal
- (BOOL)isEqual:(id)equal;
- (CRLEncodedBlockInfoInternal)initWithEncodedLength:(unint64_t)length;
@end

@implementation CRLEncodedBlockInfoInternal

- (CRLEncodedBlockInfoInternal)initWithEncodedLength:(unint64_t)length
{
  v5.receiver = self;
  v5.super_class = CRLEncodedBlockInfoInternal;
  result = [(CRLEncodedBlockInfoInternal *)&v5 init];
  if (result)
  {
    result->_encodedLength = length;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v9 = sub_1003035DC(equal, 1, equal, v3, v4, v5, v6, v7, &OBJC_PROTOCOL___CRLEncodedBlockInfo);
  if (v9)
  {
    v10 = sub_1002D2F68(self, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end