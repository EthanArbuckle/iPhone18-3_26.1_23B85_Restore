@interface ASCAdTransparencyContainerView
+ (id)developerNameFontCompatibleWithTraitCollection:(id)a3;
- (ASCAdTransparencyContainerView)initWithCoder:(id)a3;
- (ASCAdTransparencyContainerView)initWithFrame:(CGRect)a3;
- (BOOL)isBackgroundHidden;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)addAdTransparencyTarget:(id)a3 action:(SEL)a4;
- (void)layoutSubviews;
- (void)setBackgroundHidden:(BOOL)a3;
- (void)setDeveloperName:(id)a3;
- (void)updateFont;
@end

@implementation ASCAdTransparencyContainerView

+ (id)developerNameFontCompatibleWithTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  [__ASCLayoutProxy adTransparencyDeveloperNamePointSizeProvider:v3];
  v5 = v4;

  if (!developerNameFontCompatibleWithTraitCollection__textFont || ([developerNameFontCompatibleWithTraitCollection__textFont pointSize], v6 != v5))
  {
    v7 = [MEMORY[0x277D74300] systemFontOfSize:v5 weight:*MEMORY[0x277D74418]];
    v8 = developerNameFontCompatibleWithTraitCollection__textFont;
    developerNameFontCompatibleWithTraitCollection__textFont = v7;
  }

  v9 = developerNameFontCompatibleWithTraitCollection__textFont;

  return v9;
}

- (ASCAdTransparencyContainerView)initWithFrame:(CGRect)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = ASCAdTransparencyContainerView;
  v3 = [(ASCAdTransparencyContainerView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ASCAdTransparencyContainerView *)v3 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(ASCAdTransparencyContainerView *)v4 setBackgroundColor:v5];

    v6 = [ASCAdTransparencyButtonView alloc];
    v7 = [(ASCAdTransparencyButtonView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    adTransparencyButton = v4->_adTransparencyButton;
    v4->_adTransparencyButton = v7;

    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    v11 = v4->_titleLabel;
    v12 = [MEMORY[0x277D75348] grayColor];
    [(UILabel *)v11 setTextColor:v12];

    [(ASCAdTransparencyContainerView *)v4 addSubview:v4->_adTransparencyButton];
    [(ASCAdTransparencyContainerView *)v4 addSubview:v4->_titleLabel];
    [(ASCAdTransparencyContainerView *)v4 updateFont];
    v13 = objc_opt_self();
    v18[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v15 = [(ASCAdTransparencyContainerView *)v4 registerForTraitChanges:v14 withAction:sel_updateFont];
  }

  return v4;
}

- (ASCAdTransparencyContainerView)initWithCoder:(id)a3
{
  [(ASCAdTransparencyContainerView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)isBackgroundHidden
{
  v3 = [(ASCAdTransparencyContainerView *)self backgroundView];

  if (!v3)
  {
    return 1;
  }

  v4 = [(ASCAdTransparencyContainerView *)self backgroundView];
  v5 = [v4 isHidden];

  return v5;
}

- (void)setBackgroundHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(ASCAdTransparencyContainerView *)self backgroundView];
  v6 = v5;
  if (v3)
  {
    [v5 setHidden:1];

    v7 = [MEMORY[0x277D75348] grayColor];
  }

  else
  {

    if (!v6)
    {
      v8 = [MEMORY[0x277D75210] effectWithStyle:18];
      v9 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v8];
      backgroundView = self->_backgroundView;
      self->_backgroundView = v9;

      v11 = [(UIVisualEffectView *)self->_backgroundView layer];
      [v11 setCornerRadius:5.0];

      v12 = [(UIVisualEffectView *)self->_backgroundView layer];
      [v12 setMasksToBounds:1];

      [(ASCAdTransparencyContainerView *)self insertSubview:self->_backgroundView atIndex:0];
    }

    v13 = [(ASCAdTransparencyContainerView *)self backgroundView];
    [v13 setHidden:0];

    v7 = [MEMORY[0x277D75348] whiteColor];
  }

  v14 = v7;
  v15 = [(ASCAdTransparencyContainerView *)self titleLabel];
  [v15 setTextColor:v14];

  [(ASCAdTransparencyContainerView *)self setNeedsLayout];
}

- (void)setDeveloperName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = ASCLocalizedFormatString(@"DEVELOPER_NAME_TEXT");
    v7 = [v5 localizedStringWithFormat:v6, v4];
    v8 = [(ASCAdTransparencyContainerView *)self titleLabel];
    [v8 setText:v7];
  }

  else
  {
    v6 = [(ASCAdTransparencyContainerView *)self titleLabel];
    [v6 setText:0];
  }

  developerName = self->_developerName;
  self->_developerName = v4;

  [(ASCAdTransparencyContainerView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = 0.0;
  if (![(ASCAdTransparencyContainerView *)self isBackgroundHidden])
  {
    +[ASCAdTransparencyContainerView edgePadding];
    v6 = v7;
  }

  +[ASCAdTransparencyContainerView buttonTextPadding];
  v9 = v8;
  v10 = [(ASCAdTransparencyContainerView *)self adTransparencyButton];
  [v10 sizeThatFits:{width, height}];
  v12 = v11;
  v14 = v13;

  v15 = [(ASCAdTransparencyContainerView *)self titleLabel];
  [v15 intrinsicContentSize];
  v17 = v16;

  v18 = v6 + v9 + v6 + v12 + v17;
  v19 = v6 + v6 + v14;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)layoutSubviews
{
  v68.receiver = self;
  v68.super_class = ASCAdTransparencyContainerView;
  [(ASCAdTransparencyContainerView *)&v68 layoutSubviews];
  [(ASCAdTransparencyContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = 0.0;
  if (![(ASCAdTransparencyContainerView *)self isBackgroundHidden])
  {
    +[ASCAdTransparencyContainerView edgePadding];
    v11 = v12;
  }

  +[ASCAdTransparencyContainerView buttonTextPadding];
  v63 = v13;
  v14 = [(ASCAdTransparencyContainerView *)self adTransparencyButton];
  [v14 sizeThatFits:{v8, v10}];
  v16 = v15;
  v18 = v17;

  v19 = [(UIView *)self asc_layoutTraitEnvironment];
  [__ASCLayoutProxy rectWithLayoutDirectionForRect:v19 inTraitEnvironment:v11 relativeTo:v11, v16, v18, v4, v6, v8, v10];
  v66 = v6;
  v67 = v4;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v65 = v10;
  v27 = v26;
  v28 = [(ASCAdTransparencyContainerView *)self adTransparencyButton];
  [v28 setFrame:{v21, v23, v25, v27}];

  v69.origin.x = v11;
  v69.origin.y = v11;
  v69.size.width = v16;
  v69.size.height = v18;
  v29 = v8 - CGRectGetMaxX(v69) - v63 - v11;
  v30 = [(ASCAdTransparencyContainerView *)self titleLabel];
  [(ASCAdTransparencyContainerView *)self bounds];
  [v30 sizeThatFits:{v29, v31}];
  v33 = v32;
  v35 = v34;

  v70.origin.x = v11;
  v70.origin.y = v11;
  v70.size.width = v16;
  v70.size.height = v18;
  v36 = v63 + CGRectGetMaxX(v70);
  v64 = v36;
  [(ASCAdTransparencyContainerView *)self bounds];
  v38 = v37 * 0.5 - v35 * 0.5;
  v62 = v38;
  if (v33 < v29)
  {
    v29 = v33;
  }

  v39 = [(UIView *)self asc_layoutTraitEnvironment];
  [__ASCLayoutProxy rectWithLayoutDirectionForRect:v39 inTraitEnvironment:v36 relativeTo:v38, v29, v35, v67, v66, v8, v65];
  v41 = v40;
  v43 = v42;
  v44 = v8;
  v46 = v45;
  v48 = v47;
  v49 = [(ASCAdTransparencyContainerView *)self titleLabel];
  [v49 setFrame:{v41, v43, v46, v48}];

  v71.origin.y = v62;
  v71.origin.x = v64;
  v71.size.width = v29;
  v71.size.height = v35;
  v50 = v11 + CGRectGetMaxX(v71);
  if (v44 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v44;
  }

  v52 = [(UIView *)self asc_layoutTraitEnvironment];
  [__ASCLayoutProxy rectWithLayoutDirectionForRect:v52 inTraitEnvironment:0.0 relativeTo:0.0, v51, v65, v67, v66, v44, v65];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = [(ASCAdTransparencyContainerView *)self backgroundView];
  [v61 setFrame:{v54, v56, v58, v60}];
}

- (void)addAdTransparencyTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = [(ASCAdTransparencyContainerView *)self adTransparencyButton];
  [v7 addTarget:v6 action:a4 forControlEvents:64];
}

- (void)updateFont
{
  v5 = [(ASCAdTransparencyContainerView *)self titleLabel];
  v3 = [(ASCAdTransparencyContainerView *)self traitCollection];
  v4 = [ASCAdTransparencyContainerView developerNameFontCompatibleWithTraitCollection:v3];
  [v5 setFont:v4];
}

@end