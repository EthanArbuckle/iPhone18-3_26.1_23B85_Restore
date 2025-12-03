@interface NBFooterHyperlinkView
- (NBFooterHyperlinkView)initWithReuseIdentifier:(id)identifier;
@end

@implementation NBFooterHyperlinkView

- (NBFooterHyperlinkView)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = NBFooterHyperlinkView;
  v3 = [(NBFooterHyperlinkView *)&v6 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = +[UIColor secondarySystemGroupedBackgroundColor];
    [(NBFooterHyperlinkView *)v3 setTintColor:v4];
  }

  return v3;
}

@end