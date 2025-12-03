@interface ASCAppOfferSavedState
- (ASCAppOfferSavedState)initWithState:(id)state metadata:(id)metadata flags:(int64_t)flags;
@end

@implementation ASCAppOfferSavedState

- (ASCAppOfferSavedState)initWithState:(id)state metadata:(id)metadata flags:(int64_t)flags
{
  stateCopy = state;
  metadataCopy = metadata;
  v16.receiver = self;
  v16.super_class = ASCAppOfferSavedState;
  v10 = [(ASCAppOfferSavedState *)&v16 init];
  if (v10)
  {
    v11 = [stateCopy copy];
    state = v10->_state;
    v10->_state = v11;

    v13 = [metadataCopy copy];
    metadata = v10->_metadata;
    v10->_metadata = v13;

    v10->_flags = flags;
  }

  return v10;
}

@end