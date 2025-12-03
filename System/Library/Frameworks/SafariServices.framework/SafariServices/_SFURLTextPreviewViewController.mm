@interface _SFURLTextPreviewViewController
- (_SFURLTextPreviewViewController)initWithURL:(id)l;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation _SFURLTextPreviewViewController

- (_SFURLTextPreviewViewController)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = _SFURLTextPreviewViewController;
  v6 = [(_SFURLTextPreviewViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
    v8 = v7;
  }

  return v7;
}

- (void)loadView
{
  v41[7] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = _SFURLTextPreviewViewController;
  [(_SFURLTextPreviewViewController *)&v40 loadView];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  view = [(_SFURLTextPreviewViewController *)self view];
  [view setBackgroundColor:secondarySystemBackgroundColor];

  v5 = [[_SFURLTextPreviewView alloc] initWithURL:self->_URL];
  previewView = self->_previewView;
  self->_previewView = v5;

  view2 = [(_SFURLTextPreviewViewController *)self view];
  [view2 addSubview:self->_previewView];

  v8 = [[_SFLinkPreviewHeader alloc] initWithMinimumPreviewUI:0];
  previewHeader = self->_previewHeader;
  self->_previewHeader = v8;

  [(_SFLinkPreviewHeader *)self->_previewHeader setLinkPreviewEnabled:0];
  view3 = [(_SFURLTextPreviewViewController *)self view];
  [view3 addSubview:self->_previewHeader];

  [(_SFLinkPreviewHeader *)self->_previewHeader setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_SFURLTextPreviewView *)self->_previewView setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(_SFLinkPreviewHeader *)self->_previewHeader leadingAnchor];
  view4 = [(_SFURLTextPreviewViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v36;
  trailingAnchor = [(_SFLinkPreviewHeader *)self->_previewHeader trailingAnchor];
  view5 = [(_SFURLTextPreviewViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v32;
  topAnchor = [(_SFLinkPreviewHeader *)self->_previewHeader topAnchor];
  view6 = [(_SFURLTextPreviewViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[2] = v28;
  leadingAnchor3 = [(_SFURLTextPreviewView *)self->_previewView leadingAnchor];
  view7 = [(_SFURLTextPreviewViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v41[3] = v23;
  trailingAnchor3 = [(_SFURLTextPreviewView *)self->_previewView trailingAnchor];
  view8 = [(_SFURLTextPreviewViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v41[4] = v12;
  topAnchor3 = [(_SFURLTextPreviewView *)self->_previewView topAnchor];
  bottomAnchor = [(_SFLinkPreviewHeader *)self->_previewHeader bottomAnchor];
  v15 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  v41[5] = v15;
  view9 = [(_SFURLTextPreviewViewController *)self view];
  bottomAnchor2 = [view9 bottomAnchor];
  bottomAnchor3 = [(_SFURLTextPreviewView *)self->_previewView bottomAnchor];
  v19 = [bottomAnchor2 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:1.0];
  v41[6] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:7];
  [v27 activateConstraints:v20];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = _SFURLTextPreviewViewController;
  [(_SFURLTextPreviewViewController *)&v9 viewWillLayoutSubviews];
  view = [(_SFURLTextPreviewViewController *)self view];
  [view frame];
  if (v4 == 0.0)
  {
    v5 = 375.0;
  }

  else
  {
    v5 = v4;
  }

  view2 = [(_SFURLTextPreviewViewController *)self view];
  [view2 systemLayoutSizeFittingSize:{v5, 0.0}];
  v8 = v7;

  [(_SFURLTextPreviewViewController *)self setPreferredContentSize:v5, v8];
}

@end