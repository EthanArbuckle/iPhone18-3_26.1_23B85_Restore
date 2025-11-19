@interface ASCAppOfferSavedState
- (ASCAppOfferSavedState)initWithState:(id)a3 metadata:(id)a4 flags:(int64_t)a5;
@end

@implementation ASCAppOfferSavedState

- (ASCAppOfferSavedState)initWithState:(id)a3 metadata:(id)a4 flags:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = ASCAppOfferSavedState;
  v10 = [(ASCAppOfferSavedState *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    state = v10->_state;
    v10->_state = v11;

    v13 = [v9 copy];
    metadata = v10->_metadata;
    v10->_metadata = v13;

    v10->_flags = a5;
  }

  return v10;
}

@end