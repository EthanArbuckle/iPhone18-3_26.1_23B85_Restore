@interface PKPaletteInputAssistantViewController
- (CGSize)_preferredContentSize;
- (void)_updateUI;
- (void)setInputAssistantView:(id)a3;
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

- (void)setInputAssistantView:(id)a3
{
  v5 = a3;
  inputAssistantView = self->_inputAssistantView;
  if (inputAssistantView != v5)
  {
    v7 = v5;
    [(PKDrawingPaletteInputAssistantView *)inputAssistantView removeViewStateObserver:self];
    objc_storeStrong(&self->_inputAssistantView, a3);
    [(PKDrawingPaletteInputAssistantView *)self->_inputAssistantView addViewStateObserver:self];
    [(PKPaletteInputAssistantViewController *)self _updateUI];
    v5 = v7;
  }
}

- (void)_updateUI
{
  v36[4] = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
  v4 = [v3 superview];
  v5 = [(PKPaletteInputAssistantViewController *)self view];

  if (v4 != v5)
  {
    v6 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    [v6 removeFromSuperview];

    v7 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(PKPaletteInputAssistantViewController *)self view];
    v9 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    [v8 addSubview:v9];

    v35 = [(PKPaletteInputAssistantViewController *)self view];
    v34 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    v32 = [v34 topAnchor];
    v33 = [(PKPaletteInputAssistantViewController *)self view];
    v31 = [v33 safeAreaLayoutGuide];
    v30 = [v31 topAnchor];
    v29 = [v32 constraintEqualToAnchor:v30 constant:12.0];
    v36[0] = v29;
    v28 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    v26 = [v28 bottomAnchor];
    v27 = [(PKPaletteInputAssistantViewController *)self view];
    v25 = [v27 safeAreaLayoutGuide];
    v24 = [v25 bottomAnchor];
    v23 = [v26 constraintEqualToAnchor:v24 constant:-12.0];
    v36[1] = v23;
    v22 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    v20 = [v22 leadingAnchor];
    v21 = [(PKPaletteInputAssistantViewController *)self view];
    v19 = [v21 safeAreaLayoutGuide];
    v10 = [v19 leadingAnchor];
    v11 = [v20 constraintEqualToAnchor:v10 constant:12.0];
    v36[2] = v11;
    v12 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    v13 = [v12 trailingAnchor];
    v14 = [(PKPaletteInputAssistantViewController *)self view];
    v15 = [v14 safeAreaLayoutGuide];
    v16 = [v15 trailingAnchor];
    v17 = [v13 constraintEqualToAnchor:v16 constant:-12.0];
    v36[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v35 addConstraints:v18];
  }

  [(PKPaletteInputAssistantViewController *)self _preferredContentSize];
  [(PKPaletteInputAssistantViewController *)self setPreferredContentSize:?];
}

- (CGSize)_preferredContentSize
{
  v3 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
  v4 = [v3 hasInputAssistantItems];

  if (v4)
  {
    v5 = [(PKPaletteInputAssistantViewController *)self inputAssistantView];
    [v5 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
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