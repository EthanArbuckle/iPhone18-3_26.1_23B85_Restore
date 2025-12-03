@interface ShowKeyboardAction
- (ShowKeyboardAction)initWithInteractionModel:(unint64_t)model;
@end

@implementation ShowKeyboardAction

- (ShowKeyboardAction)initWithInteractionModel:(unint64_t)model
{
  v5.receiver = self;
  v5.super_class = ShowKeyboardAction;
  result = [(ShowKeyboardAction *)&v5 init];
  if (result)
  {
    result->_interactionModel = model;
  }

  return result;
}

@end