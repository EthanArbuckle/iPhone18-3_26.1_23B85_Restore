@interface SRCardStackNavigationTransitionContext
- (CGRect)backgroundPlatteredCardViewOriginalFrame;
- (CGRect)fromPlatteredCardViewOriginalFrame;
- (SRCardStackNavigationTransitionContext)initWithCompletion:(id)a3;
- (int64_t)semanticContentAttribute;
- (void)completeTransition:(BOOL)a3;
@end

@implementation SRCardStackNavigationTransitionContext

- (SRCardStackNavigationTransitionContext)initWithCompletion:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SRCardStackNavigationTransitionContext;
  v5 = [(SRCardStackNavigationTransitionContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    completion = v5->_completion;
    v5->_completion = v6;
  }

  return v5;
}

- (int64_t)semanticContentAttribute
{
  v3 = [(SRCardStackNavigationTransitionContext *)self toPlatteredCardView];
  if (v3)
  {
    v4 = [(SRCardStackNavigationTransitionContext *)self toPlatteredCardView];
    v5 = [v4 semanticContentAttribute];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)completeTransition:(BOOL)a3
{
  v3 = a3;
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
    v6 = [(SRCardStackNavigationTransitionContext *)self _completion];
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
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