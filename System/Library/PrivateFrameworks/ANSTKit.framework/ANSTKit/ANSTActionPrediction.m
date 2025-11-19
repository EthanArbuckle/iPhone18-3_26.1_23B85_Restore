@interface ANSTActionPrediction
- (ANSTActionPrediction)initWithAction:(unint64_t)a3;
- (id)description;
@end

@implementation ANSTActionPrediction

- (ANSTActionPrediction)initWithAction:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ANSTActionPrediction;
  result = [(ANSTActionPrediction *)&v5 init];
  if (result)
  {
    result->_action = a3;
    result->_confidence = 0.0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = ANSTActionToNSString(self->_action);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"(%@, %f)", v4, self->_confidence);

  return v6;
}

@end