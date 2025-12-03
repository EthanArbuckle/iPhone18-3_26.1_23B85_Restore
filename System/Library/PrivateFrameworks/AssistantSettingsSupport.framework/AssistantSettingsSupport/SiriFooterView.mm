@interface SiriFooterView
- (SiriFooterView)initWithSpecifier:(id)specifier;
@end

@implementation SiriFooterView

- (SiriFooterView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = SiriFooterView;
  v5 = [(PSFooterHyperlinkView *)&v14 initWithSpecifier:specifierCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ASSISTANT_ABOUT" value:&stru_285317CF0 table:@"AssistantShared"];

    v8 = [specifierCopy propertyForKey:*MEMORY[0x277D3FF88]];
    [(PSFooterHyperlinkView *)v5 setText:v8];

    text = [(PSFooterHyperlinkView *)v5 text];
    v10 = [text rangeOfString:v7];
    [(PSFooterHyperlinkView *)v5 setLinkRange:v10, v11];

    target = [specifierCopy target];
    [(PSFooterHyperlinkView *)v5 setTarget:target];

    [(PSFooterHyperlinkView *)v5 setAction:sel_showAboutAssistantSheet_];
  }

  return v5;
}

@end