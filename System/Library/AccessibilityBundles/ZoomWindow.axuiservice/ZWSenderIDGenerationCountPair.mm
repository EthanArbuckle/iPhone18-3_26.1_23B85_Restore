@interface ZWSenderIDGenerationCountPair
- (BOOL)isEqual:(id)equal;
- (ZWSenderIDGenerationCountPair)initWithSenderID:(unint64_t)d generationCount:(int64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ZWSenderIDGenerationCountPair

- (ZWSenderIDGenerationCountPair)initWithSenderID:(unint64_t)d generationCount:(int64_t)count
{
  v7.receiver = self;
  v7.super_class = ZWSenderIDGenerationCountPair;
  result = [(ZWSenderIDGenerationCountPair *)&v7 init];
  if (result)
  {
    result->_senderID = d;
    result->_generationCount = count;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ZWSenderIDGenerationCountPair alloc];
  senderID = self->_senderID;
  generationCount = self->_generationCount;

  return [(ZWSenderIDGenerationCountPair *)v4 initWithSenderID:senderID generationCount:generationCount];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    senderID = [v5 senderID];
    if (senderID == [(ZWSenderIDGenerationCountPair *)self senderID])
    {
      generationCount = [v5 generationCount];
      v8 = generationCount == [(ZWSenderIDGenerationCountPair *)self generationCount];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end