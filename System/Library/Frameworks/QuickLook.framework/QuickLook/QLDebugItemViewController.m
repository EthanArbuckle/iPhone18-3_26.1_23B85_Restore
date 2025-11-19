@interface QLDebugItemViewController
- (id)_attributesForLogLevel:(unint64_t)a3;
- (void)_addLog:(id)a3 logLevel:(unint64_t)a4;
- (void)_encounterMethodCall:(SEL)a3 animatedValue:(unint64_t)a4;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)previewIsAppearingWithProgress:(double)a3;
- (void)previewWillFinishAppearing;
@end

@implementation QLDebugItemViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v45 = self;
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
  v17 = [(QLDebugItemViewController *)self view];
  [v17 addSubview:self->_logTextView];

  v18 = [(UITextView *)self->_logTextView topAnchor];
  v19 = [(QLDebugItemViewController *)self view];
  v20 = [v19 topAnchor];
  v21 = [(QLItemViewController *)self appearance];
  [v21 topInset];
  v22 = [v18 constraintEqualToAnchor:v20 constant:?];
  v23 = [v22 ql_activatedConstraint];
  topConstraint = self->_topConstraint;
  self->_topConstraint = v23;

  v25 = [(QLDebugItemViewController *)self view];
  v26 = [v25 bottomAnchor];
  v27 = [(UITextView *)self->_logTextView bottomAnchor];
  v28 = [(QLItemViewController *)self appearance];
  [v28 bottomInset];
  v29 = [v26 constraintEqualToAnchor:v27 constant:?];
  v30 = [v29 ql_activatedConstraint];
  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = v30;

  v32 = [(QLDebugItemViewController *)self view];
  v33 = MEMORY[0x277CCAAD0];
  v34 = self->_logTextView;
  v42 = @"textView";
  v43 = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v36 = [v33 constraintsWithVisualFormat:@"H:|[textView]|" options:0 metrics:0 views:v35];
  [v32 addConstraints:v36];

  v37 = MEMORY[0x277CCACA8];
  IsExtension = _UIApplicationIsExtension();
  v39 = @"NO";
  if (IsExtension)
  {
    v39 = @"YES";
  }

  v40 = [v37 stringWithFormat:@"Running remote: %@", v39];
  [(QLDebugItemViewController *)self _addLog:v40 logLevel:3];

  v10[2](v10, 0);
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

- (void)previewIsAppearingWithProgress:(double)a3
{
  v5.receiver = self;
  v5.super_class = QLDebugItemViewController;
  [(QLItemViewController *)&v5 previewIsAppearingWithProgress:a3];
  [(QLDebugItemViewController *)self _encounterMethodCall:a2];
}

- (void)previewWillFinishAppearing
{
  v4.receiver = self;
  v4.super_class = QLDebugItemViewController;
  [(QLItemViewController *)&v4 previewWillFinishAppearing];
  [(QLDebugItemViewController *)self _encounterMethodCall:a2];
}

- (void)_encounterMethodCall:(SEL)a3 animatedValue:(unint64_t)a4
{
  v11 = NSStringFromSelector(a3);
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

- (void)_addLog:(id)a3 logLevel:(unint64_t)a4
{
  logTextView = self->_logTextView;
  v7 = a3;
  v8 = [(UITextView *)logTextView attributedText];
  v13 = [v8 mutableCopy];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v7];

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = [(QLDebugItemViewController *)self _attributesForLogLevel:a4];
  v12 = [v10 initWithString:v9 attributes:v11];

  [v13 appendAttributedString:v12];
  [(UITextView *)self->_logTextView setAttributedText:v13];
  -[UITextView scrollRangeToVisible:](self->_logTextView, "scrollRangeToVisible:", [v13 length] - 1, 1);
}

- (id)_attributesForLogLevel:(unint64_t)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D740C0];
  switch(a3)
  {
    case 2uLL:
      v4 = [MEMORY[0x277D75348] redColor];
      v5 = 0;
      v6 = 0;
      v7 = 0;
      break;
    case 3uLL:
      v4 = [MEMORY[0x277D75348] greenColor];
      v5 = 0;
      v7 = 0;
      v6 = 1;
      break;
    case 1uLL:
      v4 = [MEMORY[0x277D75348] yellowColor];
      v6 = 0;
      v7 = 0;
      v5 = 1;
      break;
    default:
      v4 = [MEMORY[0x277D75348] labelColor];
      v5 = 0;
      v6 = 0;
      v7 = 1;
      break;
  }

  v13[0] = v4;
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
  if (a3 == 2)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end