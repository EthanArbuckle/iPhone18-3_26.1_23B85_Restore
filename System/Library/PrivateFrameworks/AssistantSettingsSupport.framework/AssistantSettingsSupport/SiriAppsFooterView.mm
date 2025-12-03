@interface SiriAppsFooterView
- (SiriAppsFooterView)initWithSpecifier:(id)specifier;
- (SiriAppsFooterViewDelegate)delegate;
- (void)didTapLearnMore:(id)more;
@end

@implementation SiriAppsFooterView

- (SiriAppsFooterView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v16.receiver = self;
  v16.super_class = SiriAppsFooterView;
  v5 = [(PSFooterHyperlinkView *)&v16 initWithSpecifier:specifierCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"INTENTS_LEARN_LINK" value:&stru_285317CF0 table:@"Assistant_Intents"];

    v8 = [specifierCopy propertyForKey:*MEMORY[0x277D3FF88]];
    [(PSFooterHyperlinkView *)v5 setText:v8];

    text = [(PSFooterHyperlinkView *)v5 text];
    v10 = [text rangeOfString:v7];
    [(PSFooterHyperlinkView *)v5 setLinkRange:v10, v11];

    target = [specifierCopy target];
    v13 = [target conformsToProtocol:&unk_28533AE28];

    if (v13)
    {
      target2 = [specifierCopy target];
      [(SiriAppsFooterView *)v5 setDelegate:target2];
    }

    [(PSFooterHyperlinkView *)v5 setTarget:v5];
    [(PSFooterHyperlinkView *)v5 setAction:sel_didTapLearnMore_];
  }

  return v5;
}

- (void)didTapLearnMore:(id)more
{
  delegate = [(SiriAppsFooterView *)self delegate];
  [delegate viewDidTapLearnMore:self];
}

- (SiriAppsFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end