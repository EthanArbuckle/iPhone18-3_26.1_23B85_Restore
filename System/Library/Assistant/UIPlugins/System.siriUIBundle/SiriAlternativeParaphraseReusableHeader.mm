@interface SiriAlternativeParaphraseReusableHeader
+ (id)reuseIdentifier;
- (SiriAlternativeParaphraseReusableHeader)initWithFrame:(CGRect)a3;
- (void)configureWithText:(id)a3 locale:(id)a4;
- (void)layoutSubviews;
@end

@implementation SiriAlternativeParaphraseReusableHeader

- (SiriAlternativeParaphraseReusableHeader)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SiriAlternativeParaphraseReusableHeader;
  v3 = [(SiriAlternativeParaphraseReusableHeader *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)configureWithText:(id)a3 locale:(id)a4
{
  sashView = self->_sashView;
  v6 = a4;
  v7 = a3;
  v8 = [[SiriUISashItem alloc] initWithTitle:v7 image:0];

  [(SiriUISashView *)sashView setSashItem:v8 locale:v6];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

@end