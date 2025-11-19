@interface ACAssistantConfirmationViewController
- (BOOL)_sendCommands:(id)a3;
- (BOOL)triggerConfirmation;
- (BOOL)triggerDenial;
- (UIEdgeInsets)defaultViewInsets;
- (double)desiredHeightForWidth:(double)a3;
- (void)_emitButtonInteraction;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation ACAssistantConfirmationViewController

- (void)loadView
{
  v3 = [[ACAssistantConfirmView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ACAssistantConfirmationViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = ACAssistantConfirmationViewController;
  [(ACAssistantConfirmationViewController *)&v12 viewDidLoad];
  v3 = [(ACAssistantConfirmationViewController *)self view];
  v4 = [v3 cancelButton];
  [v4 addTarget:self action:"_cancelButtonHit:" forControlEvents:64];

  v5 = [v3 confirmButton];
  [v5 addTarget:self action:"_confirmButtonHit:" forControlEvents:64];

  v6 = [(ACAssistantConfirmationViewController *)self aceObject];
  v7 = [v6 denyText];
  [v3 setCancelText:v7];

  v8 = [v6 confirmText];
  [v3 setConfirmText:v8];

  v9 = [v3 confirmButton];
  v10 = [(ACAssistantConfirmationViewController *)self aceObject];
  v11 = [v10 allConfirmationOptions];
  [v9 configureRoleForConfirmationOptions:v11];
}

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(ACAssistantConfirmationViewController *)self view];
  [v4 sizeThatFits:{a3, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (BOOL)_sendCommands:(id)a3
{
  hasSentCommands = self->_hasSentCommands;
  if (!hasSentCommands)
  {
    self->_hasSentCommands = 1;
    v5 = a3;
    v6 = [(ACAssistantConfirmationViewController *)self delegate];
    [v6 siriViewController:self performAceCommands:v5];
  }

  return !hasSentCommands;
}

- (BOOL)triggerDenial
{
  v2 = self;
  [(ACAssistantConfirmationViewController *)self _emitButtonInteraction];
  v3 = [(ACAssistantConfirmationViewController *)v2 aceObject];
  v4 = [v3 denyCommands];
  LOBYTE(v2) = [(ACAssistantConfirmationViewController *)v2 _sendCommands:v4];

  return v2;
}

- (BOOL)triggerConfirmation
{
  v2 = self;
  [(ACAssistantConfirmationViewController *)self _emitButtonInteraction];
  v3 = [(ACAssistantConfirmationViewController *)v2 aceObject];
  v4 = [v3 confirmCommands];
  LOBYTE(v2) = [(ACAssistantConfirmationViewController *)v2 _sendCommands:v4];

  return v2;
}

- (void)_emitButtonInteraction
{
  v3 = +[SRUIFInstrumentationManager sharedManager];
  v4 = [(ACAssistantConfirmationViewController *)self instrumentationTurnIdentifier];
  v5 = [AFAnalyticsTurnBasedInstrumentationContext newTurnBasedContextWithPreviousTurnID:v4];
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 turnIdentifier];
    v10 = 136315650;
    v11 = "[ACAssistantConfirmationViewController _emitButtonInteraction]";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v10, 0x20u);
  }

  [v3 storeCurrentInstrumentationTurnContext:v5];
  v9 = objc_alloc_init(SISchemaInvocation);
  [v9 setInvocationSource:11];
  [v3 emitInstrumentation:v9];
}

- (UIEdgeInsets)defaultViewInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end