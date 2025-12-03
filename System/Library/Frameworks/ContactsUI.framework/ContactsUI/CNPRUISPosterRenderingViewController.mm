@interface CNPRUISPosterRenderingViewController
- (CNPRUISPosterRenderingViewController)initWithConfiguration:(id)configuration context:(id)context;
- (CNPRUISPosterRenderingViewController)initWithConfiguration:(id)configuration context:(id)context boundingShape:(int64_t)shape;
- (void)registerLabel:(id)label;
- (void)snapshotWithCompletionBlock:(id)block;
@end

@implementation CNPRUISPosterRenderingViewController

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

- (CNPRUISPosterRenderingViewController)initWithConfiguration:(id)configuration context:(id)context boundingShape:(int64_t)shape
{
  v37[4] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  contextCopy = context;
  v36.receiver = self;
  v36.super_class = CNPRUISPosterRenderingViewController;
  v10 = [(CNPRUISPosterRenderingViewController *)&v36 init];
  if (v10)
  {
    wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];
    v11 = objc_alloc(getPRUISPosterRenderingViewControllerClass());
    [contextCopy wrappedIncomingCallPosterContext];
    v12 = v35 = configurationCopy;
    v13 = [v11 initWithConfiguration:wrappedPosterConfiguration context:v12 boundingShape:shape];
    wrappedPosterRenderingViewController = v10->_wrappedPosterRenderingViewController;
    v10->_wrappedPosterRenderingViewController = v13;

    [(CNPRUISPosterRenderingViewController *)v10 view];
    v15 = v34 = contextCopy;
    view = [(PRUISPosterRenderingViewController *)v10->_wrappedPosterRenderingViewController view];
    [v15 addSubview:view];
    v27 = MEMORY[0x1E696ACD8];
    topAnchor = [view topAnchor];
    topAnchor2 = [v15 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[0] = v30;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [v15 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[1] = v26;
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [v15 leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[2] = v19;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [v15 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v27 activateConstraints:v23];

    configurationCopy = v35;
    v24 = v10;

    contextCopy = v34;
  }

  return v10;
}

- (CNPRUISPosterRenderingViewController)initWithConfiguration:(id)configuration context:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = CNPRUISPosterRenderingViewController;
  v8 = [(CNPRUISPosterRenderingViewController *)&v16 init];
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