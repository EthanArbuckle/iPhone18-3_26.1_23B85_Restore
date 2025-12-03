@interface SiriAlternativeParaphraseReusableHeader
+ (id)reuseIdentifier;
- (SiriAlternativeParaphraseReusableHeader)initWithFrame:(CGRect)frame;
- (void)configureWithText:(id)text locale:(id)locale;
- (void)layoutSubviews;
@end

@implementation SiriAlternativeParaphraseReusableHeader

- (SiriAlternativeParaphraseReusableHeader)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SiriAlternativeParaphraseReusableHeader;
  v3 = [(SiriAlternativeParaphraseReusableHeader *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[SiriUISashView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    sashView = v3->_sashView;
    v3->_sashView = v4;

    [(SiriAlternativeParaphraseReusableHeader *)v3 addSubview:v3->_sashView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriAlternativeParaphraseReusableHeader;
  [(SiriAlternativeParaphraseReusableHeader *)&v4 layoutSubviews];
  sashView = self->_sashView;
  [(SiriAlternativeParaphraseReusableHeader *)self bounds];
  [(SiriUISashView *)sashView setFrame:?];
}

- (void)configureWithText:(id)text locale:(id)locale
{
  sashView = self->_sashView;
  localeCopy = locale;
  textCopy = text;
  v8 = [[SiriUISashItem alloc] initWithTitle:textCopy image:0];

  [(SiriUISashView *)sashView setSashItem:v8 locale:localeCopy];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

@end