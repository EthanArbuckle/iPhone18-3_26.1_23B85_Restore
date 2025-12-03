@interface QLDebugItemViewController
- (id)_attributesForLogLevel:(unint64_t)level;
- (void)_addLog:(id)log logLevel:(unint64_t)level;
- (void)_encounterMethodCall:(SEL)call animatedValue:(unint64_t)value;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)previewIsAppearingWithProgress:(double)progress;
- (void)previewWillFinishAppearing;
@end

@implementation QLDebugItemViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  contextCopy = context;
  handlerCopy = handler;
  v11 = MEMORY[0x277D43EF8];
  v12 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v12 = *v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_23A714000, v12, OS_LOG_TYPE_DEFAULT, "A Debug Item View Controller was instantiated: %p #DebugItemViewController", buf, 0xCu);
  }

  v13 = [MEMORY[0x277CBEC10] mutableCopy];
  selectorToCount = self->_selectorToCount;
  self->_selectorToCount = v13;

  v15 = objc_opt_new();
  logTextView = self->_logTextView;
  self->_logTextView = v15;

  [(UITextView *)self->_logTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_logTextView setEditable:0];
  [(UITextView *)self->_logTextView setSelectable:1];
  [(UITextView *)self->_logTextView setScrollEnabled:1];
  view = [(QLDebugItemViewController *)self view];
  [view addSubview:self->_logTextView];

  topAnchor = [(UITextView *)self->_logTextView topAnchor];
  view2 = [(QLDebugItemViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  appearance = [(QLItemViewController *)self appearance];
  [appearance topInset];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  ql_activatedConstraint = [v22 ql_activatedConstraint];
  topConstraint = self->_topConstraint;
  self->_topConstraint = ql_activatedConstraint;

  view3 = [(QLDebugItemViewController *)self view];
  bottomAnchor = [view3 bottomAnchor];
  bottomAnchor2 = [(UITextView *)self->_logTextView bottomAnchor];
  appearance2 = [(QLItemViewController *)self appearance];
  [appearance2 bottomInset];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
  ql_activatedConstraint2 = [v29 ql_activatedConstraint];
  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = ql_activatedConstraint2;

  view4 = [(QLDebugItemViewController *)self view];
  v33 = MEMORY[0x277CCAAD0];
  v34 = self->_logTextView;
  v42 = @"textView";
  v43 = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v36 = [v33 constraintsWithVisualFormat:@"H:|[textView]|" options:0 metrics:0 views:v35];
  [view4 addConstraints:v36];

  v37 = MEMORY[0x277CCACA8];
  IsExtension = _UIApplicationIsExtension();
  v39 = @"NO";
  if (IsExtension)
  {
    v39 = @"YES";
  }

  v40 = [v37 stringWithFormat:@"Running remote: %@", v39];
  [(QLDebugItemViewController *)self _addLog:v40 logLevel:3];

  handlerCopy[2](handlerCopy, 0);
  v41 = *MEMORY[0x277D85DE8];
}

void __52__QLDebugItemViewController_setAppearance_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appearance];
  [v2 topInset];
  [*(*(a1 + 32) + 1152) setConstant:?];

  v3 = [*(a1 + 32) appearance];
  [v3 bottomInset];
  [*(*(a1 + 32) + 1160) setConstant:?];

  v4 = [*(a1 + 32) view];
  [v4 setNeedsLayout];
}

- (void)previewIsAppearingWithProgress:(double)progress
{
  v5.receiver = self;
  v5.super_class = QLDebugItemViewController;
  [(QLItemViewController *)&v5 previewIsAppearingWithProgress:progress];
  [(QLDebugItemViewController *)self _encounterMethodCall:a2];
}

- (void)previewWillFinishAppearing
{
  v4.receiver = self;
  v4.super_class = QLDebugItemViewController;
  [(QLItemViewController *)&v4 previewWillFinishAppearing];
  [(QLDebugItemViewController *)self _encounterMethodCall:a2];
}

- (void)_encounterMethodCall:(SEL)call animatedValue:(unint64_t)value
{
  v11 = NSStringFromSelector(call);
  v5 = [(NSMutableDictionary *)self->_selectorToCount objectForKeyedSubscript:v11];
  v6 = v5;
  if (!v5)
  {
    v5 = &unk_284D72F10;
  }

  v7 = [v5 integerValue] + 1;
  v8 = v7 > 1;

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [(NSMutableDictionary *)self->_selectorToCount setObject:v9 forKeyedSubscript:v11];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ #(%ld)", v11, v7];
  [(QLDebugItemViewController *)self _addLog:v10 logLevel:2 * v8];
}

- (void)_addLog:(id)log logLevel:(unint64_t)level
{
  logTextView = self->_logTextView;
  logCopy = log;
  attributedText = [(UITextView *)logTextView attributedText];
  v13 = [attributedText mutableCopy];

  logCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", logCopy];

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = [(QLDebugItemViewController *)self _attributesForLogLevel:level];
  v12 = [v10 initWithString:logCopy attributes:v11];

  [v13 appendAttributedString:v12];
  [(UITextView *)self->_logTextView setAttributedText:v13];
  -[UITextView scrollRangeToVisible:](self->_logTextView, "scrollRangeToVisible:", [v13 length] - 1, 1);
}

- (id)_attributesForLogLevel:(unint64_t)level
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D740C0];
  switch(level)
  {
    case 2uLL:
      redColor = [MEMORY[0x277D75348] redColor];
      v5 = 0;
      v6 = 0;
      v7 = 0;
      break;
    case 3uLL:
      redColor = [MEMORY[0x277D75348] greenColor];
      v5 = 0;
      v7 = 0;
      v6 = 1;
      break;
    case 1uLL:
      redColor = [MEMORY[0x277D75348] yellowColor];
      v6 = 0;
      v7 = 0;
      v5 = 1;
      break;
    default:
      redColor = [MEMORY[0x277D75348] labelColor];
      v5 = 0;
      v6 = 0;
      v7 = 1;
      break;
  }

  v13[0] = redColor;
  v12[1] = *MEMORY[0x277D740A8];
  v8 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  if (v7)
  {

    if (!v6)
    {
LABEL_10:
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (!v6)
  {
    goto LABEL_10;
  }

  if (v5)
  {
LABEL_11:
  }

LABEL_12:
  if (level == 2)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end