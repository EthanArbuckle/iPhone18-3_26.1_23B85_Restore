@interface CNPRUISPosterRenderingViewControllerWrapper
- (CNPRUISPosterRenderingViewControllerWrapper)initWithConfiguration:(id)configuration context:(id)context;
- (CNPRUISPosterRenderingViewControllerWrapper)initWithConfiguration:(id)configuration context:(id)context boundingShape:(int64_t)shape;
- (void)registerLabel:(id)label;
- (void)snapshotWithCompletionBlock:(id)block;
@end

@implementation CNPRUISPosterRenderingViewControllerWrapper

- (void)snapshotWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (objc_opt_respondsToSelector())
  {
    [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController snapshotWithOptions:2 forScreen:0 completionBlock:blockCopy];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }
}

- (void)registerLabel:(id)label
{
  labelCopy = label;
  obscurableContentView = [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController obscurableContentView];
  [obscurableContentView addSubview:labelCopy];

  v8 = labelCopy;
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

- (CNPRUISPosterRenderingViewControllerWrapper)initWithConfiguration:(id)configuration context:(id)context boundingShape:(int64_t)shape
{
  configurationCopy = configuration;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = CNPRUISPosterRenderingViewControllerWrapper;
  v10 = [(CNPRUISPosterRenderingViewControllerWrapper *)&v18 init];
  if (v10)
  {
    wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];
    v12 = objc_alloc(getPRUISPosterRenderingViewControllerClass());
    wrappedIncomingCallPosterContext = [contextCopy wrappedIncomingCallPosterContext];
    v14 = [v12 initWithConfiguration:wrappedPosterConfiguration context:wrappedIncomingCallPosterContext boundingShape:shape];
    wrappedPosterRenderingViewController = v10->_wrappedPosterRenderingViewController;
    v10->_wrappedPosterRenderingViewController = v14;

    v16 = v10;
  }

  return v10;
}

- (CNPRUISPosterRenderingViewControllerWrapper)initWithConfiguration:(id)configuration context:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = CNPRUISPosterRenderingViewControllerWrapper;
  v8 = [(CNPRUISPosterRenderingViewControllerWrapper *)&v16 init];
  if (v8)
  {
    wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];
    v10 = objc_alloc(getPRUISPosterRenderingViewControllerClass());
    wrappedIncomingCallPosterContext = [contextCopy wrappedIncomingCallPosterContext];
    v12 = [v10 initWithConfiguration:wrappedPosterConfiguration context:wrappedIncomingCallPosterContext];
    wrappedPosterRenderingViewController = v8->_wrappedPosterRenderingViewController;
    v8->_wrappedPosterRenderingViewController = v12;

    v14 = v8;
  }

  return v8;
}

@end