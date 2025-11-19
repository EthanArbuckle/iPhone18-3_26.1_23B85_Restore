@interface ATXChinSuggestionRequest
- (ATXChinSuggestionRequest)initWithAcceptedBlock:(id)a3 rejectedBlock:(id)a4;
@end

@implementation ATXChinSuggestionRequest

- (ATXChinSuggestionRequest)initWithAcceptedBlock:(id)a3 rejectedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ATXChinSuggestionRequest;
  v8 = [(ATXChinSuggestionRequest *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_debugIdentifier = 0;
    v10 = _Block_copy(v6);
    acceptedBlock = v9->_acceptedBlock;
    v9->_acceptedBlock = v10;

    v12 = _Block_copy(v7);
    rejectedBlock = v9->_rejectedBlock;
    v9->_rejectedBlock = v12;
  }

  return v9;
}

@end