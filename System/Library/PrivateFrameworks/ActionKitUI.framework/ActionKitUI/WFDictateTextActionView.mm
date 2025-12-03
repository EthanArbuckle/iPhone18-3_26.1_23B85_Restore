@interface WFDictateTextActionView
- (UITextView)textView;
- (WFDictateTextActionStopButton)stopButton;
- (WFDictateTextActionView)initWithFrame:(CGRect)frame padded:(BOOL)padded;
- (WFDictateTextActionViewDelegate)delegate;
- (void)dealloc;
- (void)stopButtonTapped;
- (void)updateWithTranscription:(id)transcription;
@end

@implementation WFDictateTextActionView

- (WFDictateTextActionStopButton)stopButton
{
  WeakRetained = objc_loadWeakRetained(&self->_stopButton);

  return WeakRetained;
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (WFDictateTextActionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateWithTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  textView = [(WFDictateTextActionView *)self textView];
  [textView setText:transcriptionCopy];

  textView2 = [(WFDictateTextActionView *)self textView];
  v6 = [transcriptionCopy length];

  [textView2 scrollRangeToVisible:{v6, 0}];
}

- (void)stopButtonTapped
{
  stopButton = [(WFDictateTextActionView *)self stopButton];
  [stopButton setEnabled:0];

  delegate = [(WFDictateTextActionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFDictateTextActionView *)self delegate];
    [delegate2 dictateTextActionViewDidTapStopButton:self];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CB8210] object:0];

  v4.receiver = self;
  v4.super_class = WFDictateTextActionView;
  [(WFDictateTextActionView *)&v4 dealloc];
}

- (WFDictateTextActionView)initWithFrame:(CGRect)frame padded:(BOOL)padded
{
  paddedCopy = padded;
  v31[1] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = WFDictateTextActionView;
  v5 = [(WFDictateTextActionView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D75C40]);
    [v6 setEditable:0];
    v7 = objc_alloc(MEMORY[0x277CCA898]);
    v8 = WFLocalizedString(@"Now listening…");
    v30 = *MEMORY[0x277D740C0];
    placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
    v31[0] = placeholderTextColor;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v11 = [v7 initWithString:v8 attributes:v10];
    [v6 setAttributedPlaceholder:v11];

    v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [v6 setFont:v12];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [v6 setTextColor:labelColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v6 setBackgroundColor:clearColor];

    [v6 setTextContainerInset:{8.0, 8.0, 8.0, 8.0}];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFDictateTextActionView *)v5 addSubview:v6];
    [(WFDictateTextActionView *)v5 setTextView:v6];
    v15 = objc_opt_new();
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 addTarget:v5 action:sel_stopButtonTapped forControlEvents:64];
    [v15 setRecording:1 animated:0];
    [(WFDictateTextActionView *)v5 addSubview:v15];
    [(WFDictateTextActionView *)v5 setStopButton:v15];
    v16 = !paddedCopy;
    if (paddedCopy)
    {
      v17 = @"H:|-8-[textView]-8-|";
    }

    else
    {
      v17 = @"H:|[textView]|";
    }

    v18 = @"V:|[textView]-10-[stopButton(50)]-|";
    if (!v16)
    {
      v18 = @"V:|-8-[textView]-10-[stopButton(50)]-16-|";
    }

    v19 = v18;
    v20 = v17;
    v21 = _NSDictionaryOfVariableBindings(&cfstr_TextviewStopbu.isa, v6, v15, 0);
    v22 = objc_opt_new();
    v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v19 options:512 metrics:0 views:v21];

    [v22 addObjectsFromArray:v23];
    v24 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v20 options:0 metrics:0 views:v21];

    [v22 addObjectsFromArray:v24];
    v25 = [MEMORY[0x277CCAAD0] constraintWithItem:v15 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:50.0];
    [v22 addObject:v25];

    [MEMORY[0x277CCAAD0] activateConstraints:v22];
    v26 = v5;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

@end