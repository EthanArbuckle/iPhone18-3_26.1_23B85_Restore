@interface AMUIPhotosLabelView
- (AMUIPhotosLabelView)initWithSymbolName:(id)a3 title:(id)a4;
- (id)_symbolImageConfiguration;
- (void)_noteWindowWillRotate:(id)a3;
- (void)_updateForInterfaceOrientation:(int64_t)a3;
- (void)_updateForWindow:(id)a3;
- (void)didMoveToWindow;
- (void)setSymbolName:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)willMoveToWindow:(id)a3;
@end

@implementation AMUIPhotosLabelView

- (AMUIPhotosLabelView)initWithSymbolName:(id)a3 title:(id)a4
{
  v61[10] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    [v11 setText:v7];
    v12 = [MEMORY[0x277D75348] whiteColor];
    [v11 setTextColor:v12];

    [(AMUIPhotosLabelView *)v8 addSubview:v11];
    v57 = v7;
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
    v16 = [v15 contentView];
    [v16 addSubview:v54];

    objc_storeStrong(&v8->_symbolImageView, v54);
    [(AMUIPhotosLabelView *)v8 setSymbolName:v6];
    v41 = MEMORY[0x277CCAAD0];
    v53 = [(AMUIPhotosLabelView *)v8 leadingAnchor];
    v52 = [v15 leadingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v61[0] = v51;
    v50 = [(AMUIPhotosLabelView *)v8 trailingAnchor];
    v49 = [(UILabel *)v8->_titleLabel trailingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v61[1] = v48;
    v47 = [(AMUIPhotosLabelView *)v8 topAnchor];
    v46 = [v15 topAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v61[2] = v45;
    v44 = [(AMUIPhotosLabelView *)v8 bottomAnchor];
    v43 = [v15 bottomAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v61[3] = v42;
    v40 = [v15 widthAnchor];
    v39 = [v40 constraintEqualToConstant:74.0];
    v61[4] = v39;
    v38 = [v15 heightAnchor];
    v37 = [v15 widthAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v61[5] = v36;
    v35 = [(UIImageView *)v8->_symbolImageView centerXAnchor];
    v34 = [v15 centerXAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v61[6] = v33;
    v32 = [(UIImageView *)v8->_symbolImageView centerYAnchor];
    v31 = [v15 centerYAnchor];
    v17 = [v32 constraintEqualToAnchor:v31];
    v61[7] = v17;
    v18 = [(UIImageView *)v8->_symbolImageView firstBaselineAnchor];
    [(UILabel *)v8->_titleLabel firstBaselineAnchor];
    v19 = v58 = v6;
    v20 = [v18 constraintEqualToAnchor:v19];
    v61[8] = v20;
    v21 = [(UILabel *)v8->_titleLabel leadingAnchor];
    v22 = [v15 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:12.0];
    v61[9] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:10];
    [v41 activateConstraints:v24];

    v7 = v57;
    v6 = v58;

    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 addObserver:v8 selector:sel__noteWindowWillRotate_ name:*MEMORY[0x277D772D8] object:0];

    v26 = objc_opt_self();
    v60 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    v28 = [(AMUIPhotosLabelView *)v8 registerForTraitChanges:v27 withAction:sel__updateForAmbientDisplayStyle];

    [(AMUIPhotosLabelView *)v8 _updateForAmbientDisplayStyleAnimated:0];
  }

  v29 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)setSymbolName:(id)a3
{
  v4 = a3;
  symbolName = self->_symbolName;
  v11 = v4;
  if ((BSEqualStrings() & 1) == 0)
  {
    v6 = [v11 copy];
    v7 = self->_symbolName;
    self->_symbolName = v6;

    v8 = MEMORY[0x277D755B8];
    v9 = [(AMUIPhotosLabelView *)self _symbolImageConfiguration];
    v10 = [v8 systemImageNamed:v11 withConfiguration:v9];

    [(UIImageView *)self->_symbolImageView setImage:v10];
  }
}

- (void)willMoveToWindow:(id)a3
{
  if (a3)
  {
    [(AMUIPhotosLabelView *)self _updateForWindow:?];
  }
}

- (void)didMoveToWindow
{
  v3 = [(AMUIPhotosLabelView *)self window];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v3 = [(AMUIPhotosLabelView *)self _updateForWindow:v3];
    v4 = v5;
  }

  MEMORY[0x2821F96F8](v3, v4);
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if ([a4 isEqualToString:@"photoSymbolHugsEdge"])
  {
    v5 = [(AMUIPhotosLabelView *)self window];
    [(AMUIPhotosLabelView *)self _updateForWindow:v5];
  }
}

- (id)_symbolImageConfiguration
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:1 scale:42.0];
  v3 = MEMORY[0x277D755D0];
  v4 = [MEMORY[0x277D75348] whiteColor];
  v5 = [v3 configurationWithHierarchicalColor:v4];
  v6 = [v2 configurationByApplyingConfiguration:v5];

  return v6;
}

- (void)_noteWindowWillRotate:(id)a3
{
  v13 = a3;
  v4 = [v13 object];
  v5 = [(AMUIPhotosLabelView *)self window];

  if (v4 == v5)
  {
    v6 = [v13 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D772C0]];
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

    v12 = [v11 integerValue];
    [(AMUIPhotosLabelView *)self _updateForInterfaceOrientation:v12];
  }
}

- (void)_updateForWindow:(id)a3
{
  v4 = [a3 _windowInterfaceOrientation];

  [(AMUIPhotosLabelView *)self _updateForInterfaceOrientation:v4];
}

- (void)_updateForInterfaceOrientation:(int64_t)a3
{
  v5 = [(AMUIPosterSwitcherSettings *)self->_settings photoSymbolHugsEdge];
  v6 = 3;
  if (a3 != 4)
  {
    v6 = 0;
  }

  if (a3 == 3)
  {
    v6 = 4;
  }

  if (v5)
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