@interface ACAssistantConfirmationViewController
- (BOOL)_sendCommands:(id)commands;
- (BOOL)triggerConfirmation;
- (BOOL)triggerDenial;
- (UIEdgeInsets)defaultViewInsets;
- (double)desiredHeightForWidth:(double)width;
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
  view = [(ACAssistantConfirmationViewController *)self view];
  cancelButton = [view cancelButton];
  [cancelButton addTarget:self action:"_cancelButtonHit:" forControlEvents:64];

  confirmButton = [view confirmButton];
  [confirmButton addTarget:self action:"_confirmButtonHit:" forControlEvents:64];

  aceObject = [(ACAssistantConfirmationViewController *)self aceObject];
  denyText = [aceObject denyText];
  [view setCancelText:denyText];

  confirmText = [aceObject confirmText];
  [view setConfirmText:confirmText];

  confirmButton2 = [view confirmButton];
  aceObject2 = [(ACAssistantConfirmationViewController *)self aceObject];
  allConfirmationOptions = [aceObject2 allConfirmationOptions];
  [confirmButton2 configureRoleForConfirmationOptions:allConfirmationOptions];
}

- (double)desiredHeightForWidth:(double)width
{
  view = [(ACAssistantConfirmationViewController *)self view];
  [view sizeThatFits:{width, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (BOOL)_sendCommands:(id)commands
{
  hasSentCommands = self->_hasSentCommands;
  if (!hasSentCommands)
  {
    self->_hasSentCommands = 1;
    commandsCopy = commands;
    delegate = [(ACAssistantConfirmationViewController *)self delegate];
    [delegate siriViewController:self performAceCommands:commandsCopy];
  }

  return !hasSentCommands;
}

- (BOOL)triggerDenial
{
  selfCopy = self;
  [(ACAssistantConfirmationViewController *)self _emitButtonInteraction];
  aceObject = [(ACAssistantConfirmationViewController *)selfCopy aceObject];
  denyCommands = [aceObject denyCommands];
  LOBYTE(selfCopy) = [(ACAssistantConfirmationViewController *)selfCopy _sendCommands:denyCommands];

  return selfCopy;
}

- (BOOL)triggerConfirmation
{
  selfCopy = self;
  [(ACAssistantConfirmationViewController *)self _emitButtonInteraction];
  aceObject = [(ACAssistantConfirmationViewController *)selfCopy aceObject];
  confirmCommands = [aceObject confirmCommands];
  LOBYTE(selfCopy) = [(ACAssistantConfirmationViewController *)selfCopy _sendCommands:confirmCommands];

  return selfCopy;
}

- (void)_emitButtonInteraction
{
  v3 = +[SRUIFInstrumentationManager sharedManager];
  instrumentationTurnIdentifier = [(ACAssistantConfirmationViewController *)self instrumentationTurnIdentifier];
  v5 = [AFAnalyticsTurnBasedInstrumentationContext newTurnBasedContextWithPreviousTurnID:instrumentationTurnIdentifier];
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    turnIdentifier = [v5 turnIdentifier];
    v10 = 136315650;
    v11 = "[ACAssistantConfirmationViewController _emitButtonInteraction]";
    v12 = 2112;
    v13 = turnIdentifier;
    v14 = 2112;
    v15 = instrumentationTurnIdentifier;
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