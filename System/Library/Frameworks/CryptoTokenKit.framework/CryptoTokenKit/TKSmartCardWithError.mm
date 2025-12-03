@interface TKSmartCardWithError
- (TKSmartCardWithError)initWithCard:(id)card error:(id)error;
@end

@implementation TKSmartCardWithError

- (TKSmartCardWithError)initWithCard:(id)card error:(id)error
{
  cardCopy = card;
  errorCopy = error;
  slot = [cardCopy slot];
  v12.receiver = self;
  v12.super_class = TKSmartCardWithError;
  v10 = [(TKSmartCard *)&v12 initWithSlot:slot];

  if (v10)
  {
    objc_storeStrong(&v10->_parentCard, card);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

@end