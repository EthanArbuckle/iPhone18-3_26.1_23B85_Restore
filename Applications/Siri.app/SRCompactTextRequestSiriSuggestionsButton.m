@interface SRCompactTextRequestSiriSuggestionsButton
- (SRCompactTextRequestSiriSuggestionsButton)initWithFrame:(CGRect)a3;
- (SRCompactTextRequestSiriSuggestionsButtonDelegate)delegate;
- (void)_buttonTapped:(id)a3;
- (void)_setUpIcons;
- (void)layoutSubviews;
@end

@implementation SRCompactTextRequestSiriSuggestionsButton

- (SRCompactTextRequestSiriSuggestionsButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SRCompactTextRequestSiriSuggestionsButton;
  v3 = [(SRCompactTextRequestSiriSuggestionsButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SRCompactTextRequestSiriSuggestionsButton *)v3 _setUpIcons];
    [(SRCompactTextRequestSiriSuggestionsButton *)v4 setSelected:1];
    v4->_suggestionsEnabled = 1;
    [(SRCompactTextRequestSiriSuggestionsButton *)v4 addTarget:v4 action:"_buttonTapped:" forControlEvents:64];
  }

  return v4;
}

- (void)_setUpIcons
{
  v3 = [BSUICAPackageView alloc];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v3 initWithPackageName:@"SuggestionsGlyph" inBundle:v4];
  iconsView = self->_iconsView;
  self->_iconsView = v5;

  v7 = self->_iconsView;
  v8 = +[UIColor clearColor];
  [(BSUICAPackageView *)v7 setBackgroundColor:v8];

  [(BSUICAPackageView *)self->_iconsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUICAPackageView *)self->_iconsView setHidden:0];
  [(BSUICAPackageView *)self->_iconsView setUserInteractionEnabled:0];
  [(BSUICAPackageView *)self->_iconsView setExclusiveTouch:0];
  v9 = self->_iconsView;

  [(SRCompactTextRequestSiriSuggestionsButton *)self addSubview:v9];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SRCompactTextRequestSiriSuggestionsButton;
  [(SRCompactTextRequestSiriSuggestionsButton *)&v6 layoutSubviews];
  iconsView = self->_iconsView;
  [(SRCompactTextRequestSiriSuggestionsButton *)self bounds];
  v5 = v4;
  [(SRCompactTextRequestSiriSuggestionsButton *)self bounds];
  [(BSUICAPackageView *)iconsView setFrame:0.0, 0.0, v5];
}

- (void)_buttonTapped:(id)a3
{
  suggestionsEnabled = self->_suggestionsEnabled;
  self->_suggestionsEnabled = !suggestionsEnabled;
  if (suggestionsEnabled)
  {
    v5 = @"State 1";
  }

  else
  {
    v5 = @"State 2";
  }

  [(BSUICAPackageView *)self->_iconsView setState:v5 animated:1 transitionSpeed:0 completion:1.0];
  [(SRCompactTextRequestSiriSuggestionsButton *)self setSelected:self->_suggestionsEnabled];
  v6 = [(SRCompactTextRequestSiriSuggestionsButton *)self delegate];
  [v6 textRequestSuggestionsButton:self didEnableSuggestions:self->_suggestionsEnabled];
}

- (SRCompactTextRequestSiriSuggestionsButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end