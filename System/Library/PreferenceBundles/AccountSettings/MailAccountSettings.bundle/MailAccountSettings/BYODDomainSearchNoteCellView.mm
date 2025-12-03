@interface BYODDomainSearchNoteCellView
+ (id)log;
- (BYODDomainSearchNoteCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setNote:(id)note;
- (void)setNoteWithDomain:(id)domain;
@end

@implementation BYODDomainSearchNoteCellView

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_420E4;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6530 != -1)
  {
    dispatch_once(&qword_D6530, block);
  }

  v2 = qword_D6528;

  return v2;
}

- (BYODDomainSearchNoteCellView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v34.receiver = self;
  v34.super_class = BYODDomainSearchNoteCellView;
  v7 = [(BYODDomainSearchNoteCellView *)&v34 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v37 = NSFontAttributeName;
    +[UIFont systemMinimumFontSize];
    v8 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    v38 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    boldAttr = v7->_boldAttr;
    v7->_boldAttr = v9;

    v35 = NSFontAttributeName;
    +[UIFont systemMinimumFontSize];
    v11 = [UIFont systemFontOfSize:?];
    v36 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    normalAttr = v7->_normalAttr;
    v7->_normalAttr = v12;

    v14 = +[UIColor systemBackgroundColor];
    [(BYODDomainSearchNoteCellView *)v7 setBackgroundColor:v14];

    [(BYODDomainSearchNoteCellView *)v7 setSelectionStyle:0];
    textLabel = [(BYODDomainSearchNoteCellView *)v7 textLabel];
    noteLabel = v7->_noteLabel;
    v7->_noteLabel = textLabel;

    v17 = v7->_noteLabel;
    v18 = +[UIColor systemGrayColor];
    [(UILabel *)v17 setTextColor:v18];

    [(UILabel *)v7->_noteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_noteLabel setLineBreakMode:0];
    [(UILabel *)v7->_noteLabel setNumberOfLines:0];
    topAnchor = [(UILabel *)v7->_noteLabel topAnchor];
    contentView = [(BYODDomainSearchNoteCellView *)v7 contentView];
    topAnchor2 = [contentView topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    [v22 setActive:1];

    v23 = MUISolariumFeatureEnabled();
    v24 = v7->_noteLabel;
    if (v23)
    {
      leadingAnchor = [(UILabel *)v24 leadingAnchor];
      contentView2 = [(BYODDomainSearchNoteCellView *)v7 contentView];
      leadingAnchor2 = [contentView2 leadingAnchor];
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-22.0];
    }

    else
    {
      leadingAnchor = [(UILabel *)v24 leadingAnchor];
      contentView2 = [(BYODDomainSearchNoteCellView *)v7 contentView];
      leadingAnchor2 = [contentView2 leadingAnchor];
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-10.0];
    }
    v28 = ;
    [v28 setActive:1];

    trailingAnchor = [(UILabel *)v7->_noteLabel trailingAnchor];
    contentView3 = [(BYODDomainSearchNoteCellView *)v7 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
    [v32 setActive:1];
  }

  return v7;
}

- (void)setNoteWithDomain:(id)domain
{
  domainCopy = domain;
  if (domainCopy)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_NAME_UNAVAILABLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    domainCopy = [NSString stringWithFormat:v6, domainCopy];

    v8 = [[NSMutableAttributedString alloc] initWithString:domainCopy attributes:self->_normalAttr];
    mutableString = [v8 mutableString];
    v10 = [mutableString rangeOfString:domainCopy];
    v12 = v11;

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v8 addAttributes:self->_boldAttr range:{v10, v12}];
    }

    [(UILabel *)self->_noteLabel setAttributedText:v8];
  }

  else
  {
    v13 = +[BYODDomainSearchNoteCellView log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Cannot set domainName null", buf, 2u);
    }
  }
}

- (void)setNote:(id)note
{
  noteCopy = note;
  v4 = [[NSMutableAttributedString alloc] initWithString:noteCopy attributes:self->_normalAttr];
  [(UILabel *)self->_noteLabel setAttributedText:v4];
}

@end