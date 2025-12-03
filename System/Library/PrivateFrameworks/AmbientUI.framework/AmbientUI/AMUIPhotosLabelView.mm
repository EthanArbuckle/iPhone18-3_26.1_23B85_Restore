@interface AMUIPhotosLabelView
- (AMUIPhotosLabelView)initWithSymbolName:(id)name title:(id)title;
- (id)_symbolImageConfiguration;
- (void)_noteWindowWillRotate:(id)rotate;
- (void)_updateForInterfaceOrientation:(int64_t)orientation;
- (void)_updateForWindow:(id)window;
- (void)didMoveToWindow;
- (void)setSymbolName:(id)name;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)willMoveToWindow:(id)window;
@end

@implementation AMUIPhotosLabelView

- (AMUIPhotosLabelView)initWithSymbolName:(id)name title:(id)title
{
  v61[10] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  titleCopy = title;
  v59.receiver = self;
  v59.super_class = AMUIPhotosLabelView;
  v8 = [(AMUIPhotosLabelView *)&v59 init];
  if (v8)
  {
    v9 = +[AMUIPosterSwitcherDomain rootSettings];
    settings = v8->_settings;
    v8->_settings = v9;

    [(PTSettings *)v8->_settings addKeyObserver:v8];
    v56 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277D74368] weight:42.0 design:*MEMORY[0x277D743F8]];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setFont:v56];
    v55 = v11;
    [v11 setText:titleCopy];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v11 setTextColor:whiteColor];

    [(AMUIPhotosLabelView *)v8 addSubview:v11];
    v57 = titleCopy;
    objc_storeStrong(&v8->_titleLabel, v11);
    v13 = objc_alloc(MEMORY[0x277D75D68]);
    v14 = [MEMORY[0x277D75210] effectWithStyle:6];
    v15 = [v13 initWithEffect:v14];

    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 _setCornerRadius:37.0];
    [v15 setOverrideUserInterfaceStyle:1];
    [(AMUIPhotosLabelView *)v8 addSubview:v15];
    v54 = objc_alloc_init(MEMORY[0x277D755E8]);
    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [v15 contentView];
    [contentView addSubview:v54];

    objc_storeStrong(&v8->_symbolImageView, v54);
    [(AMUIPhotosLabelView *)v8 setSymbolName:nameCopy];
    v41 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(AMUIPhotosLabelView *)v8 leadingAnchor];
    leadingAnchor2 = [v15 leadingAnchor];
    v51 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v61[0] = v51;
    trailingAnchor = [(AMUIPhotosLabelView *)v8 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v8->_titleLabel trailingAnchor];
    v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v61[1] = v48;
    topAnchor = [(AMUIPhotosLabelView *)v8 topAnchor];
    topAnchor2 = [v15 topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v61[2] = v45;
    bottomAnchor = [(AMUIPhotosLabelView *)v8 bottomAnchor];
    bottomAnchor2 = [v15 bottomAnchor];
    v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v61[3] = v42;
    widthAnchor = [v15 widthAnchor];
    v39 = [widthAnchor constraintEqualToConstant:74.0];
    v61[4] = v39;
    heightAnchor = [v15 heightAnchor];
    widthAnchor2 = [v15 widthAnchor];
    v36 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v61[5] = v36;
    centerXAnchor = [(UIImageView *)v8->_symbolImageView centerXAnchor];
    centerXAnchor2 = [v15 centerXAnchor];
    v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v61[6] = v33;
    centerYAnchor = [(UIImageView *)v8->_symbolImageView centerYAnchor];
    centerYAnchor2 = [v15 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v61[7] = v17;
    firstBaselineAnchor = [(UIImageView *)v8->_symbolImageView firstBaselineAnchor];
    [(UILabel *)v8->_titleLabel firstBaselineAnchor];
    v19 = v58 = nameCopy;
    v20 = [firstBaselineAnchor constraintEqualToAnchor:v19];
    v61[8] = v20;
    leadingAnchor3 = [(UILabel *)v8->_titleLabel leadingAnchor];
    trailingAnchor3 = [v15 trailingAnchor];
    v23 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:12.0];
    v61[9] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:10];
    [v41 activateConstraints:v24];

    titleCopy = v57;
    nameCopy = v58;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__noteWindowWillRotate_ name:*MEMORY[0x277D772D8] object:0];

    v26 = objc_opt_self();
    v60 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    v28 = [(AMUIPhotosLabelView *)v8 registerForTraitChanges:v27 withAction:sel__updateForAmbientDisplayStyle];

    [(AMUIPhotosLabelView *)v8 _updateForAmbientDisplayStyleAnimated:0];
  }

  v29 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)setSymbolName:(id)name
{
  nameCopy = name;
  symbolName = self->_symbolName;
  v11 = nameCopy;
  if ((BSEqualStrings() & 1) == 0)
  {
    v6 = [v11 copy];
    v7 = self->_symbolName;
    self->_symbolName = v6;

    v8 = MEMORY[0x277D755B8];
    _symbolImageConfiguration = [(AMUIPhotosLabelView *)self _symbolImageConfiguration];
    v10 = [v8 systemImageNamed:v11 withConfiguration:_symbolImageConfiguration];

    [(UIImageView *)self->_symbolImageView setImage:v10];
  }
}

- (void)willMoveToWindow:(id)window
{
  if (window)
  {
    [(AMUIPhotosLabelView *)self _updateForWindow:?];
  }
}

- (void)didMoveToWindow
{
  window = [(AMUIPhotosLabelView *)self window];
  v4 = window;
  if (window)
  {
    v5 = window;
    window = [(AMUIPhotosLabelView *)self _updateForWindow:window];
    v4 = v5;
  }

  MEMORY[0x2821F96F8](window, v4);
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if ([key isEqualToString:@"photoSymbolHugsEdge"])
  {
    window = [(AMUIPhotosLabelView *)self window];
    [(AMUIPhotosLabelView *)self _updateForWindow:window];
  }
}

- (id)_symbolImageConfiguration
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:1 scale:42.0];
  v3 = MEMORY[0x277D755D0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v5 = [v3 configurationWithHierarchicalColor:whiteColor];
  v6 = [v2 configurationByApplyingConfiguration:v5];

  return v6;
}

- (void)_noteWindowWillRotate:(id)rotate
{
  rotateCopy = rotate;
  object = [rotateCopy object];
  window = [(AMUIPhotosLabelView *)self window];

  if (object == window)
  {
    userInfo = [rotateCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D772C0]];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    integerValue = [v11 integerValue];
    [(AMUIPhotosLabelView *)self _updateForInterfaceOrientation:integerValue];
  }
}

- (void)_updateForWindow:(id)window
{
  _windowInterfaceOrientation = [window _windowInterfaceOrientation];

  [(AMUIPhotosLabelView *)self _updateForInterfaceOrientation:_windowInterfaceOrientation];
}

- (void)_updateForInterfaceOrientation:(int64_t)orientation
{
  photoSymbolHugsEdge = [(AMUIPosterSwitcherSettings *)self->_settings photoSymbolHugsEdge];
  v6 = 3;
  if (orientation != 4)
  {
    v6 = 0;
  }

  if (orientation == 3)
  {
    v6 = 4;
  }

  if (photoSymbolHugsEdge)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(AMUIPhotosLabelView *)self setSemanticContentAttribute:v7];
}

@end