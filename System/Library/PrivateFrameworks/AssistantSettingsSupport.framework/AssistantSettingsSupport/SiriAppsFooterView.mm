@interface SiriAppsFooterView
- (SiriAppsFooterView)initWithSpecifier:(id)a3;
- (SiriAppsFooterViewDelegate)delegate;
- (void)didTapLearnMore:(id)a3;
@end

@implementation SiriAppsFooterView

- (SiriAppsFooterView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SiriAppsFooterView;
  v5 = [(PSFooterHyperlinkView *)&v16 initWithSpecifier:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"INTENTS_LEARN_LINK" value:&stru_285317CF0 table:@"Assistant_Intents"];

    v8 = [v4 propertyForKey:*MEMORY[0x277D3FF88]];
    [(PSFooterHyperlinkView *)v5 setText:v8];

    v9 = [(PSFooterHyperlinkView *)v5 text];
    v10 = [v9 rangeOfString:v7];
    [(PSFooterHyperlinkView *)v5 setLinkRange:v10, v11];

    v12 = [v4 target];
    v13 = [v12 conformsToProtocol:&unk_28533AE28];

    if (v13)
    {
      v14 = [v4 target];
      [(SiriAppsFooterView *)v5 setDelegate:v14];
    }

    [(PSFooterHyperlinkView *)v5 setTarget:v5];
    [(PSFooterHyperlinkView *)v5 setAction:sel_didTapLearnMore_];
  }

  return v5;
}

- (void)didTapLearnMore:(id)a3
{
  v4 = [(SiriAppsFooterView *)self delegate];
  [v4 viewDidTapLearnMore:self];
}

- (SiriAppsFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end