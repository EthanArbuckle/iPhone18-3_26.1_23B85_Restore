@interface CRLEncodedBlockInfoWithDecodedLengthInternal
- (CRLEncodedBlockInfoWithDecodedLengthInternal)initWithEncodedLength:(unint64_t)length decodedLength:(unint64_t)decodedLength;
@end

@implementation CRLEncodedBlockInfoWithDecodedLengthInternal

- (CRLEncodedBlockInfoWithDecodedLengthInternal)initWithEncodedLength:(unint64_t)length decodedLength:(unint64_t)decodedLength
{
  v6.receiver = self;
  v6.super_class = CRLEncodedBlockInfoWithDecodedLengthInternal;
  result = [(CRLEncodedBlockInfoInternal *)&v6 initWithEncodedLength:length];
  if (result)
  {
    result->_decodedLength = decodedLength;
  }

  return result;
}

@end