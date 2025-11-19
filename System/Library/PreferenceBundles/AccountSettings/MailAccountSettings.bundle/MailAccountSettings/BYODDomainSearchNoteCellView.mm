@interface BYODDomainSearchNoteCellView
+ (id)log;
- (BYODDomainSearchNoteCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setNote:(id)a3;
- (void)setNoteWithDomain:(id)a3;
@end

@implementation BYODDomainSearchNoteCellView

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_420E4;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6530 != -1)
  {
    dispatch_once(&qword_D6530, block);
  }

  v2 = qword_D6528;

  return v2;
}

- (BYODDomainSearchNoteCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v34.receiver = self;
  v34.super_class = BYODDomainSearchNoteCellView;
  v7 = [(BYODDomainSearchNoteCellView *)&v34 initWithStyle:a3 reuseIdentifier:v6];
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
    v15 = [(BYODDomainSearchNoteCellView *)v7 textLabel];
    noteLabel = v7->_noteLabel;
    v7->_noteLabel = v15;

    v17 = v7->_noteLabel;
    v18 = +[UIColor systemGrayColor];
    [(UILabel *)v17 setTextColor:v18];

    [(UILabel *)v7->_noteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_noteLabel setLineBreakMode:0];
    [(UILabel *)v7->_noteLabel setNumberOfLines:0];
    v19 = [(UILabel *)v7->_noteLabel topAnchor];
    v20 = [(BYODDomainSearchNoteCellView *)v7 contentView];
    v21 = [v20 topAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:4.0];
    [v22 setActive:1];

    v23 = MUISolariumFeatureEnabled();
    v24 = v7->_noteLabel;
    if (v23)
    {
      v25 = [(UILabel *)v24 leadingAnchor];
      v26 = [(BYODDomainSearchNoteCellView *)v7 contentView];
      v27 = [v26 leadingAnchor];
      [v25 constraintEqualToAnchor:v27 constant:-22.0];
    }

    else
    {
      v25 = [(UILabel *)v24 leadingAnchor];
      v26 = [(BYODDomainSearchNoteCellView *)v7 contentView];
      v27 = [v26 leadingAnchor];
      [v25 constraintEqualToAnchor:v27 constant:-10.0];
    }
    v28 = ;
    [v28 setActive:1];

    v29 = [(UILabel *)v7->_noteLabel trailingAnchor];
    v30 = [(BYODDomainSearchNoteCellView *)v7 contentView];
    v31 = [v30 trailingAnchor];
    v32 = [v29 constraintEqualToAnchor:v31 constant:-30.0];
    [v32 setActive:1];
  }

  return v7;
}

- (void)setNoteWithDomain:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"BYOD_PURCHASE_SEARCH_NAME_UNAVAILABLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v7 = [NSString stringWithFormat:v6, v4];

    v8 = [[NSMutableAttributedString alloc] initWithString:v7 attributes:self->_normalAttr];
    v9 = [v8 mutableString];
    v10 = [v9 rangeOfString:v4];
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

- (void)setNote:(id)a3
{
  v5 = a3;
  v4 = [[NSMutableAttributedString alloc] initWithString:v5 attributes:self->_normalAttr];
  [(UILabel *)self->_noteLabel setAttributedText:v4];
}

@end