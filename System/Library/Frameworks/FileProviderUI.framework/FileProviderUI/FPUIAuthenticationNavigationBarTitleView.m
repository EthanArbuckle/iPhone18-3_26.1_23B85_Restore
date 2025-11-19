@interface FPUIAuthenticationNavigationBarTitleView
- (FPUIAuthenticationNavigationBarTitleView)init;
- (NSString)title;
- (UIActivityIndicatorView)activityIndicator;
- (UILabel)label;
- (void)setTitle:(id)a3;
- (void)updateForChangedTraitsAffectingFonts;
@end

@implementation FPUIAuthenticationNavigationBarTitleView

- (FPUIAuthenticationNavigationBarTitleView)init
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = FPUIAuthenticationNavigationBarTitleView;
  v2 = [(FPUIAuthenticationNavigationBarTitleView *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(FPUIAuthenticationNavigationBarTitleView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    objc_storeWeak(&v3->_activityIndicator, v4);
    v5 = objc_opt_new();
    v6 = objc_opt_self();
    v13[0] = v6;
    v7 = objc_opt_self();
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v9 = [(FPUIAuthenticationNavigationBarTitleView *)v3 registerForTraitChanges:v8 withHandler:&__block_literal_global_7];

    objc_storeWeak(&v3->_label, v5);
    [(FPUIAuthenticationNavigationBarTitleView *)v3 updateForChangedTraitsAffectingFonts];
    [(FPUIAuthenticationNavigationBarTitleView *)v3 setAxis:0];
    [(FPUIAuthenticationNavigationBarTitleView *)v3 setSpacing:5.0];
    [(FPUIAuthenticationNavigationBarTitleView *)v3 addArrangedSubview:v4];
    [(FPUIAuthenticationNavigationBarTitleView *)v3 addArrangedSubview:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)updateForChangedTraitsAffectingFonts
{
  v9 = [(FPUIAuthenticationNavigationBarTitleView *)self label];
  [v9 setAdjustsFontForContentSizeCategory:1];
  v3 = objc_opt_new();
  v4 = [(FPUIAuthenticationNavigationBarTitleView *)self traitCollection];
  v5 = [v4 verticalSizeClass];

  if (v5 != 1 || ([v3 compactAppearance], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [v3 standardAppearance];
  }

  v7 = [v6 titleTextAttributes];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  [v9 setFont:v8];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_label);
  [WeakRetained setText:v4];
}

- (NSString)title
{
  WeakRetained = objc_loadWeakRetained(&self->_label);
  v3 = [WeakRetained text];

  return v3;
}

- (UIActivityIndicatorView)activityIndicator
{
  WeakRetained = objc_loadWeakRetained(&self->_activityIndicator);

  return WeakRetained;
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end