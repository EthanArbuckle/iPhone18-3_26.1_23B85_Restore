@interface SRCardStackNavigationTransitionContext
- (CGRect)backgroundPlatteredCardViewOriginalFrame;
- (CGRect)fromPlatteredCardViewOriginalFrame;
- (SRCardStackNavigationTransitionContext)initWithCompletion:(id)completion;
- (int64_t)semanticContentAttribute;
- (void)completeTransition:(BOOL)transition;
@end

@implementation SRCardStackNavigationTransitionContext

- (SRCardStackNavigationTransitionContext)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v9.receiver = self;
  v9.super_class = SRCardStackNavigationTransitionContext;
  v5 = [(SRCardStackNavigationTransitionContext *)&v9 init];
  if (v5)
  {
    v6 = [completionCopy copy];
    completion = v5->_completion;
    v5->_completion = v6;
  }

  return v5;
}

- (int64_t)semanticContentAttribute
{
  toPlatteredCardView = [(SRCardStackNavigationTransitionContext *)self toPlatteredCardView];
  if (toPlatteredCardView)
  {
    toPlatteredCardView2 = [(SRCardStackNavigationTransitionContext *)self toPlatteredCardView];
    semanticContentAttribute = [toPlatteredCardView2 semanticContentAttribute];
  }

  else
  {
    semanticContentAttribute = 0;
  }

  return semanticContentAttribute;
}

- (void)completeTransition:(BOOL)transition
{
  transitionCopy = transition;
  if ([(SRCardStackNavigationTransitionContext *)self _isCompleted])
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
    {
      sub_1000CED48(v5);
    }
  }

  else
  {
    _completion = [(SRCardStackNavigationTransitionContext *)self _completion];
    v7 = _completion;
    if (_completion)
    {
      (*(_completion + 16))(_completion, transitionCopy);
    }

    else
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[SRCardStackNavigationTransitionContext completeTransition:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s No completion block was provided for execution, so just marking the transaction as complete and returning", &v9, 0xCu);
      }
    }

    [(SRCardStackNavigationTransitionContext *)self _setCompleted:1];
    [(SRCardStackNavigationTransitionContext *)self _setCompletion:0];
  }
}

- (CGRect)backgroundPlatteredCardViewOriginalFrame
{
  x = self->_backgroundPlatteredCardViewOriginalFrame.origin.x;
  y = self->_backgroundPlatteredCardViewOriginalFrame.origin.y;
  width = self->_backgroundPlatteredCardViewOriginalFrame.size.width;
  height = self->_backgroundPlatteredCardViewOriginalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)fromPlatteredCardViewOriginalFrame
{
  x = self->_fromPlatteredCardViewOriginalFrame.origin.x;
  y = self->_fromPlatteredCardViewOriginalFrame.origin.y;
  width = self->_fromPlatteredCardViewOriginalFrame.size.width;
  height = self->_fromPlatteredCardViewOriginalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end