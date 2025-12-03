@interface SRServerUtteranceController
- (double)_extendedTopPadding;
- (double)_scaledTopPadding;
- (double)desiredHeightForWidth:(double)width;
- (id)description;
- (void)_loadFromObject:(id)object;
- (void)loadView;
- (void)setAceObject:(id)object;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SRServerUtteranceController

- (void)setAceObject:(id)object
{
  v6.receiver = self;
  v6.super_class = SRServerUtteranceController;
  objectCopy = object;
  [(SRServerUtteranceController *)&v6 setAceObject:objectCopy];
  [(SRServerUtteranceController *)self _loadFromObject:objectCopy, v6.receiver, v6.super_class];

  utteranceView = self->_utteranceView;
  if (utteranceView)
  {
    [(SRServerUtteranceView *)utteranceView setText:self->_utterance];
  }
}

- (void)_loadFromObject:(id)object
{
  objectCopy = object;
  text = [objectCopy text];
  context = [objectCopy context];
  v7 = [AFUIUtilities parsedUtteranceFromText:text context:context];

  v8 = [v7 copy];
  utterance = self->_utterance;
  self->_utterance = v8;

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  self->_isTip = isKindOfClass & 1;
  if (isKindOfClass)
  {
    tipPrefix = [objectCopy tipPrefix];
    utterancePrefix = self->_utterancePrefix;
    self->_utterancePrefix = tipPrefix;
  }

  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    dialogIdentifier = [objectCopy dialogIdentifier];
    text2 = [objectCopy text];
    v17 = 136315650;
    v18 = "[SRServerUtteranceController _loadFromObject:]";
    v19 = 2112;
    v20 = dialogIdentifier;
    v21 = 2112;
    v22 = text2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s dialogIdentifier:%@ utterance:%@", &v17, 0x20u);
  }
}

- (void)loadView
{
  if (self->_utteranceView)
  {
    return;
  }

  isTip = self->_isTip;
  v4 = [[SRServerUtteranceView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  utteranceView = self->_utteranceView;
  self->_utteranceView = v4;

  v6 = self->_utteranceView;
  if (!isTip)
  {
    v12 = +[UIFont siriui_serverUtteranceFont];
    [(SRServerUtteranceView *)v6 setFont:v12];

    [(SRServerUtteranceView *)self->_utteranceView setBlendEffectEnabled:0];
LABEL_7:
    [(SRServerUtteranceView *)self->_utteranceView setText:self->_utterance];
    goto LABEL_8;
  }

  [(SRServerUtteranceView *)self->_utteranceView setBlendEffectEnabled:1];
  if (![(NSString *)self->_utterancePrefix length])
  {
    v13 = self->_utteranceView;
    v14 = +[UIFont siriui_serverTipFont];
    [(SRServerUtteranceView *)v13 setFont:v14];

    goto LABEL_7;
  }

  v7 = [NSMutableAttributedString alloc];
  v8 = [(NSString *)self->_utterancePrefix stringByAppendingString:self->_utterance];
  v9 = [v7 initWithString:v8];

  v10 = +[UIFont siriui_serverTipPrefixFont];
  [v9 addAttribute:NSFontAttributeName value:v10 range:{0, -[NSString length](self->_utterancePrefix, "length")}];

  v11 = +[UIFont siriui_serverTipFont];
  [v9 addAttribute:NSFontAttributeName value:v11 range:{-[NSString length](self->_utterancePrefix, "length"), -[NSString length](self->_utterance, "length")}];

  [(SRServerUtteranceView *)self->_utteranceView setAttributedText:v9];
LABEL_8:
  v15 = self->_utteranceView;

  [(SRServerUtteranceController *)self setView:v15];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = SRServerUtteranceController;
  [(SRServerUtteranceController *)&v8 viewDidAppear:appear];
  if (![(SRServerUtteranceView *)self->_utteranceView chevronHasBeenShown])
  {
    delegate = [(SRServerUtteranceController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(SRServerUtteranceController *)self delegate];
      v7 = [delegate2 shouldEnableInteractionForSiriViewController:self];

      if (v7)
      {
        [(SRServerUtteranceController *)self setUtteranceUserInteractionEnabled:1];
      }
    }
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = SRServerUtteranceController;
  v3 = [(SRServerUtteranceController *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@", %@", self->_utterance];

  return v4;
}

- (double)desiredHeightForWidth:(double)width
{
  view = [(SRServerUtteranceController *)self view];
  [view sizeThatFits:{width, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (double)_extendedTopPadding
{
  if (self->_isTip)
  {
    *&v2 = 56.0;
LABEL_5:
    v3 = *&v2;
    goto LABEL_9;
  }

  if (SiriUIIsCompactWidth())
  {
    *&v2 = 62.0;
    goto LABEL_5;
  }

  if (SiriUIIsCompactHeight())
  {
    v3 = 62.0;
  }

  else
  {
    v3 = 94.0;
  }

LABEL_9:
  v4 = +[UIFont siriui_serverUtteranceFont];
  [v4 _scaledValueForValue:v3];
  v6 = v5;

  return v6;
}

- (double)_scaledTopPadding
{
  v2 = +[UIFont siriui_serverUtteranceFont];
  [v2 _scaledValueForValue:42.0];
  v4 = v3;

  return v4;
}

@end