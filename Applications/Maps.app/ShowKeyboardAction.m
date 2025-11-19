@interface ShowKeyboardAction
- (ShowKeyboardAction)initWithInteractionModel:(unint64_t)a3;
@end

@implementation ShowKeyboardAction

- (ShowKeyboardAction)initWithInteractionModel:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ShowKeyboardAction;
  result = [(ShowKeyboardAction *)&v5 init];
  if (result)
  {
    result->_interactionModel = a3;
  }

  return result;
}

@end