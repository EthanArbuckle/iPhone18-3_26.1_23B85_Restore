@interface THTOCGlossaryMenuPopoverViewController
- (THTOCGlossaryMenuPopoverViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)showTOC:(id)c;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation THTOCGlossaryMenuPopoverViewController

- (THTOCGlossaryMenuPopoverViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = THTOCGlossaryMenuPopoverViewController;
  v4 = [(THTOCGlossaryMenuPopoverViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [(THTOCGlossaryMenuPopoverViewController *)v4 setTheme:[IMTheme themeWithIdentifier:kIMThemeIdentifierBlissClassicTheme]];
  }

  return v4;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = THTOCGlossaryMenuPopoverViewController;
  [(THTOCGlossaryMenuPopoverViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = THTOCGlossaryMenuPopoverViewController;
  [(THTOCGlossaryMenuPopoverViewController *)&v8 viewDidLoad];
  view = [(THTOCGlossaryMenuPopoverViewController *)self view];
  [view setBackgroundColor:{+[UIColor systemBackgroundColor](UIColor, "systemBackgroundColor")}];
  v4 = [UIFont systemFontOfSize:17.0];
  v5 = [UIButton buttonWithType:1];
  self->mTOCButton = v5;
  [(UILabel *)[(UIButton *)v5 titleLabel] setFont:v4];
  [(UIButton *)self->mTOCButton setTitleColor:+[UIColor forState:"bc_booksLabelColor"], 0];
  -[UIButton setTitle:forState:](self->mTOCButton, "setTitle:forState:", [THBundle() localizedStringForKey:@"Table of Contents" value:&stru_471858 table:0], 0);
  [(UIButton *)self->mTOCButton addTarget:self action:"showTOC:" forControlEvents:64];
  [view addSubview:self->mTOCButton];
  v6 = [[BEHairlineDividerView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  self->mDividerView = v6;
  [(BEHairlineDividerView *)v6 setHorizontal:1];
  -[BEHairlineDividerView setDividerColor:](self->mDividerView, "setDividerColor:", [-[THTOCGlossaryMenuPopoverViewController theme](self "theme")]);
  [view addSubview:self->mDividerView];
  v7 = [UIButton buttonWithType:1];
  self->mGlossaryButton = v7;
  [(UILabel *)[(UIButton *)v7 titleLabel] setFont:v4];
  [(UIButton *)self->mGlossaryButton setTitleColor:+[UIColor forState:"bc_booksLabelColor"], 0];
  -[UIButton setTitle:forState:](self->mGlossaryButton, "setTitle:forState:", [THBundle() localizedStringForKey:@"Glossary" value:&stru_471858 table:0], 0);
  [(UIButton *)self->mGlossaryButton addTarget:self action:"showGlossary:" forControlEvents:64];
  [view addSubview:self->mGlossaryButton];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->mTOCButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->mGlossaryButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BEHairlineDividerView *)self->mDividerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v9[0] = [-[UIButton topAnchor](self->mTOCButton "topAnchor")];
  v9[1] = [-[BEHairlineDividerView topAnchor](self->mDividerView "topAnchor")];
  v9[2] = [-[UIButton topAnchor](self->mGlossaryButton "topAnchor")];
  v9[3] = [-[UIButton bottomAnchor](self->mGlossaryButton "bottomAnchor")];
  v9[4] = [-[UIButton widthAnchor](self->mTOCButton "widthAnchor")];
  v9[5] = [-[UIButton heightAnchor](self->mTOCButton "heightAnchor")];
  v9[6] = [-[UIButton widthAnchor](self->mGlossaryButton "widthAnchor")];
  v9[7] = [-[UIButton heightAnchor](self->mGlossaryButton "heightAnchor")];
  v9[8] = [-[UIButton leadingAnchor](self->mTOCButton "leadingAnchor")];
  v9[9] = [-[UIButton trailingAnchor](self->mTOCButton "trailingAnchor")];
  v9[10] = [-[BEHairlineDividerView leadingAnchor](self->mDividerView "leadingAnchor")];
  v9[11] = [-[BEHairlineDividerView trailingAnchor](self->mDividerView "trailingAnchor")];
  [view addConstraints:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v9, 12)}];
  [-[THTOCGlossaryMenuPopoverViewController view](self "view")];
  [(THTOCGlossaryMenuPopoverViewController *)self setPreferredContentSize:?];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THTOCGlossaryMenuPopoverViewController;
  [(THTOCGlossaryMenuPopoverViewController *)&v4 viewWillAppear:appear];
  [(UIButton *)[(THTOCGlossaryMenuPopoverViewController *)self TOCButton] setEnabled:[(THTOCGlossaryMenuPopoverViewControllerDelegate *)[(THTOCGlossaryMenuPopoverViewController *)self delegate] isTOCButtonApplicable]];
}

- (void)showTOC:(id)c
{
  [(THTOCGlossaryMenuPopoverViewControllerDelegate *)self->mDelegate willJumpToTOC];
  mDelegate = self->mDelegate;

  [(THTOCGlossaryMenuPopoverViewControllerDelegate *)mDelegate showTOC];
}

- (void)dealloc
{
  self->mTOCButton = 0;

  self->mGlossaryButton = 0;
  self->mDividerView = 0;
  v3.receiver = self;
  v3.super_class = THTOCGlossaryMenuPopoverViewController;
  [(THTOCGlossaryMenuPopoverViewController *)&v3 dealloc];
}

@end