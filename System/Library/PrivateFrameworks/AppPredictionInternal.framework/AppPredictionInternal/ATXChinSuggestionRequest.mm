@interface ATXChinSuggestionRequest
- (ATXChinSuggestionRequest)initWithAcceptedBlock:(id)block rejectedBlock:(id)rejectedBlock;
@end

@implementation ATXChinSuggestionRequest

- (ATXChinSuggestionRequest)initWithAcceptedBlock:(id)block rejectedBlock:(id)rejectedBlock
{
  blockCopy = block;
  rejectedBlockCopy = rejectedBlock;
  v15.receiver = self;
  v15.super_class = ATXChinSuggestionRequest;
  v8 = [(ATXChinSuggestionRequest *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_debugIdentifier = 0;
    v10 = _Block_copy(blockCopy);
    acceptedBlock = v9->_acceptedBlock;
    v9->_acceptedBlock = v10;

    v12 = _Block_copy(rejectedBlockCopy);
    rejectedBlock = v9->_rejectedBlock;
    v9->_rejectedBlock = v12;
  }

  return v9;
}

@end