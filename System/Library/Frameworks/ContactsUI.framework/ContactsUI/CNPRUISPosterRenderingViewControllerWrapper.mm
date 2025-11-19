@interface CNPRUISPosterRenderingViewControllerWrapper
- (CNPRUISPosterRenderingViewControllerWrapper)initWithConfiguration:(id)a3 context:(id)a4;
- (CNPRUISPosterRenderingViewControllerWrapper)initWithConfiguration:(id)a3 context:(id)a4 boundingShape:(int64_t)a5;
- (void)registerLabel:(id)a3;
- (void)snapshotWithCompletionBlock:(id)a3;
@end

@implementation CNPRUISPosterRenderingViewControllerWrapper

- (void)snapshotWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController snapshotWithOptions:2 forScreen:0 completionBlock:v4];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)registerLabel:(id)a3
{
  v4 = a3;
  v5 = [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController obscurableContentView];
  [v5 addSubview:v4];

  v8 = v4;
  if ([v8 conformsToProtocol:&unk_1F0E08250])
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController registerPosterAppearanceObserver:v7];
}

- (CNPRUISPosterRenderingViewControllerWrapper)initWithConfiguration:(id)a3 context:(id)a4 boundingShape:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = CNPRUISPosterRenderingViewControllerWrapper;
  v10 = [(CNPRUISPosterRenderingViewControllerWrapper *)&v18 init];
  if (v10)
  {
    v11 = [v8 wrappedPosterConfiguration];
    v12 = objc_alloc(getPRUISPosterRenderingViewControllerClass());
    v13 = [v9 wrappedIncomingCallPosterContext];
    v14 = [v12 initWithConfiguration:v11 context:v13 boundingShape:a5];
    wrappedPosterRenderingViewController = v10->_wrappedPosterRenderingViewController;
    v10->_wrappedPosterRenderingViewController = v14;

    v16 = v10;
  }

  return v10;
}

- (CNPRUISPosterRenderingViewControllerWrapper)initWithConfiguration:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CNPRUISPosterRenderingViewControllerWrapper;
  v8 = [(CNPRUISPosterRenderingViewControllerWrapper *)&v16 init];
  if (v8)
  {
    v9 = [v6 wrappedPosterConfiguration];
    v10 = objc_alloc(getPRUISPosterRenderingViewControllerClass());
    v11 = [v7 wrappedIncomingCallPosterContext];
    v12 = [v10 initWithConfiguration:v9 context:v11];
    wrappedPosterRenderingViewController = v8->_wrappedPosterRenderingViewController;
    v8->_wrappedPosterRenderingViewController = v12;

    v14 = v8;
  }

  return v8;
}

@end