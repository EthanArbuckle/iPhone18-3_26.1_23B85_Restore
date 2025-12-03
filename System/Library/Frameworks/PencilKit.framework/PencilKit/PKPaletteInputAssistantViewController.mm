@interface PKPaletteInputAssistantViewController
- (CGSize)_preferredContentSize;
- (void)_updateUI;
- (void)setInputAssistantView:(id)view;
- (void)viewDidLoad;
@end

@implementation PKPaletteInputAssistantViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKPaletteInputAssistantViewController;
  [(PKPaletteInputAssistantViewController *)&v3 viewDidLoad];
  [(PKPaletteInputAssistantViewController *)self _updateUI];
}

- (void)setInputAssistantView:(id)view
{
  viewCopy = view;
  inputAssistantView = self->_inputAssistantView;
  if (inputAssistantView != viewCopy)
  {
    v7 = viewCopy;
    [(PKDrawingPaletteInputAssistantView *)inputAssistantView removeViewStateObserver:self];
    objc_storeStrong(&self->_inputAssistantView, view);
    [(PKDrawingPaletteInputAssistantView *)self->_inputAssistantView addViewStateObserver:self];
    [(PKPaletteInputAssistantViewController *)self _updateUI];
    viewCopy = v7;
  }
}

- (void)_updateUI
{
  v36[4] = *MEMORY[0x1E69E9840];
  inputAssistantView = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
  superview = [inputAssistantView superview];
  view = [(PKPaletteInputAssistantViewController *)self view];

  if (superview != view)
  {
    inputAssistantView2 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    [inputAssistantView2 removeFromSuperview];

    inputAssistantView3 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    [inputAssistantView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(PKPaletteInputAssistantViewController *)self view];
    inputAssistantView4 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    [view2 addSubview:inputAssistantView4];

    view3 = [(PKPaletteInputAssistantViewController *)self view];
    inputAssistantView5 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    topAnchor = [inputAssistantView5 topAnchor];
    view4 = [(PKPaletteInputAssistantViewController *)self view];
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    v36[0] = v29;
    inputAssistantView6 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    bottomAnchor = [inputAssistantView6 bottomAnchor];
    view5 = [(PKPaletteInputAssistantViewController *)self view];
    safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
    v36[1] = v23;
    inputAssistantView7 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    leadingAnchor = [inputAssistantView7 leadingAnchor];
    view6 = [(PKPaletteInputAssistantViewController *)self view];
    safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v36[2] = v11;
    inputAssistantView8 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    trailingAnchor = [inputAssistantView8 trailingAnchor];
    view7 = [(PKPaletteInputAssistantViewController *)self view];
    safeAreaLayoutGuide4 = [view7 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v36[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [view3 addConstraints:v18];
  }

  [(PKPaletteInputAssistantViewController *)self _preferredContentSize];
  [(PKPaletteInputAssistantViewController *)self setPreferredContentSize:?];
}

- (CGSize)_preferredContentSize
{
  inputAssistantView = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
  hasInputAssistantItems = [inputAssistantView hasInputAssistantItems];

  if (hasInputAssistantItems)
  {
    inputAssistantView2 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    [inputAssistantView2 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
    v7 = v6;
    v9 = v8;

    v10 = fmin(v7 + 24.0, 320.0);
    v11 = fmin(v9 + 24.0, 60.0);
  }

  else
  {
    v10 = 60.0;
    v11 = 60.0;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

@end