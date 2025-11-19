@interface ZWSenderIDGenerationCountPair
- (BOOL)isEqual:(id)a3;
- (ZWSenderIDGenerationCountPair)initWithSenderID:(unint64_t)a3 generationCount:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ZWSenderIDGenerationCountPair

- (ZWSenderIDGenerationCountPair)initWithSenderID:(unint64_t)a3 generationCount:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = ZWSenderIDGenerationCountPair;
  result = [(ZWSenderIDGenerationCountPair *)&v7 init];
  if (result)
  {
    result->_senderID = a3;
    result->_generationCount = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ZWSenderIDGenerationCountPair alloc];
  senderID = self->_senderID;
  generationCount = self->_generationCount;

  return [(ZWSenderIDGenerationCountPair *)v4 initWithSenderID:senderID generationCount:generationCount];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 senderID];
    if (v6 == [(ZWSenderIDGenerationCountPair *)self senderID])
    {
      v7 = [v5 generationCount];
      v8 = v7 == [(ZWSenderIDGenerationCountPair *)self generationCount];
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