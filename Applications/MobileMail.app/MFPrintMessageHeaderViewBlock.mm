@interface MFPrintMessageHeaderViewBlock
- (MFPrintMessageHeaderViewBlock)initWithFrame:(CGRect)frame;
- (id)_attributedStringForAddress:(id)address appendComma:(BOOL)comma;
- (id)_attributedStringForAddressList:(id)list;
- (int64_t)_textAlignmentForLayoutDirection;
- (void)_createFormEntries;
- (void)_updateVisibility;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)model;
- (void)initializePrimaryLayoutConstraints;
- (void)updateConstraints;
@end

@implementation MFPrintMessageHeaderViewBlock

- (MFPrintMessageHeaderViewBlock)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MFPrintMessageHeaderViewBlock;
  v3 = [(MFPrintMessageHeaderViewBlock *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v3->_dateFormatter;
    v3->_dateFormatter = v4;

    [(NSDateFormatter *)v3->_dateFormatter setDateStyle:2];
    [(NSDateFormatter *)v3->_dateFormatter setTimeStyle:2];
  }

  return v3;
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = MFPrintMessageHeaderViewBlock;
  [(MFPrintMessageHeaderViewBlock *)&v4 updateConstraints];
  v3 = +[UIColor whiteColor];
  [(MFPrintMessageHeaderViewBlock *)self setBackgroundColor:v3];
}

- (void)createPrimaryViews
{
  v43.receiver = self;
  v43.super_class = MFPrintMessageHeaderViewBlock;
  [(MFPrintMessageHeaderViewBlock *)&v43 createPrimaryViews];
  [(MFPrintMessageHeaderViewBlock *)self _createFormEntries];
  v3 = objc_alloc_init(UILayoutGuide);
  firstColumn = self->_firstColumn;
  self->_firstColumn = v3;

  [(MFPrintMessageHeaderViewBlock *)self addLayoutGuide:self->_firstColumn];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"FROM" value:&stru_100662A88 table:@"Main"];
  titleLabel = [(_MFFormEntry *)self->_from titleLabel];
  [titleLabel setText:v6];

  titleLabel2 = [(_MFFormEntry *)self->_from titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:titleLabel2];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"SUBJECT" value:&stru_100662A88 table:@"Main"];
  titleLabel3 = [(_MFFormEntry *)self->_subject titleLabel];
  [titleLabel3 setText:v10];

  titleLabel4 = [(_MFFormEntry *)self->_subject titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:titleLabel4];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"DATE" value:&stru_100662A88 table:@"Main"];
  titleLabel5 = [(_MFFormEntry *)self->_date titleLabel];
  [titleLabel5 setText:v14];

  titleLabel6 = [(_MFFormEntry *)self->_date titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:titleLabel6];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"TO" value:&stru_100662A88 table:@"Main"];
  titleLabel7 = [(_MFFormEntry *)self->_to titleLabel];
  [titleLabel7 setText:v18];

  titleLabel8 = [(_MFFormEntry *)self->_to titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:titleLabel8];

  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"CC" value:&stru_100662A88 table:@"Main"];
  titleLabel9 = [(_MFFormEntry *)self->_cc titleLabel];
  [titleLabel9 setText:v22];

  titleLabel10 = [(_MFFormEntry *)self->_cc titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:titleLabel10];

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"BCC" value:&stru_100662A88 table:@"Main"];
  titleLabel11 = [(_MFFormEntry *)self->_bcc titleLabel];
  [titleLabel11 setText:v26];

  titleLabel12 = [(_MFFormEntry *)self->_bcc titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:titleLabel12];

  v29 = objc_alloc_init(UIStackView);
  secondColumn = self->_secondColumn;
  self->_secondColumn = v29;

  [(UIStackView *)self->_secondColumn setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_secondColumn setAxis:1];
  [(UIStackView *)self->_secondColumn setAlignment:1];
  [(UIStackView *)self->_secondColumn setDistribution:0];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:self->_secondColumn];
  v31 = self->_secondColumn;
  valueLabel = [(_MFFormEntry *)self->_from valueLabel];
  [(UIStackView *)v31 addArrangedSubview:valueLabel];

  v33 = self->_secondColumn;
  valueLabel2 = [(_MFFormEntry *)self->_subject valueLabel];
  [(UIStackView *)v33 addArrangedSubview:valueLabel2];

  v35 = self->_secondColumn;
  valueLabel3 = [(_MFFormEntry *)self->_date valueLabel];
  [(UIStackView *)v35 addArrangedSubview:valueLabel3];

  v37 = self->_secondColumn;
  valueLabel4 = [(_MFFormEntry *)self->_to valueLabel];
  [(UIStackView *)v37 addArrangedSubview:valueLabel4];

  v39 = self->_secondColumn;
  valueLabel5 = [(_MFFormEntry *)self->_cc valueLabel];
  [(UIStackView *)v39 addArrangedSubview:valueLabel5];

  v41 = self->_secondColumn;
  valueLabel6 = [(_MFFormEntry *)self->_bcc valueLabel];
  [(UIStackView *)v41 addArrangedSubview:valueLabel6];
}

- (void)_createFormEntries
{
  v3 = [[NSMutableArray alloc] initWithCapacity:6];
  entries = self->_entries;
  self->_entries = v3;

  _textAlignmentForLayoutDirection = [(MFPrintMessageHeaderViewBlock *)self _textAlignmentForLayoutDirection];
  v6 = [[_MFFormEntry alloc] initWithTextAlignment:_textAlignmentForLayoutDirection];
  from = self->_from;
  self->_from = v6;

  [(NSMutableArray *)self->_entries addObject:self->_from];
  v8 = [[_MFFormEntry alloc] initWithTextAlignment:_textAlignmentForLayoutDirection];
  subject = self->_subject;
  self->_subject = v8;

  [(NSMutableArray *)self->_entries addObject:self->_subject];
  v10 = [[_MFFormEntry alloc] initWithTextAlignment:_textAlignmentForLayoutDirection];
  date = self->_date;
  self->_date = v10;

  [(NSMutableArray *)self->_entries addObject:self->_date];
  v12 = [[_MFFormEntry alloc] initWithTextAlignment:_textAlignmentForLayoutDirection];
  to = self->_to;
  self->_to = v12;

  [(NSMutableArray *)self->_entries addObject:self->_to];
  v14 = [[_MFFormEntry alloc] initWithTextAlignment:_textAlignmentForLayoutDirection];
  cc = self->_cc;
  self->_cc = v14;

  [(NSMutableArray *)self->_entries addObject:self->_cc];
  v16 = [[_MFFormEntry alloc] initWithTextAlignment:_textAlignmentForLayoutDirection];
  bcc = self->_bcc;
  self->_bcc = v16;

  v18 = self->_entries;
  v19 = self->_bcc;

  [(NSMutableArray *)v18 addObject:v19];
}

- (void)initializePrimaryLayoutConstraints
{
  v105.receiver = self;
  v105.super_class = MFPrintMessageHeaderViewBlock;
  [(MFPrintMessageHeaderViewBlock *)&v105 initializePrimaryLayoutConstraints];
  topAnchor = [(UILayoutGuide *)self->_firstColumn topAnchor];
  layoutMarginsGuide = [(MFPrintMessageHeaderViewBlock *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v80 = [topAnchor constraintEqualToAnchor:?];
  v106[0] = v80;
  leadingAnchor = [(UILayoutGuide *)self->_firstColumn leadingAnchor];
  layoutMarginsGuide2 = [(MFPrintMessageHeaderViewBlock *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
  v77 = [leadingAnchor constraintEqualToAnchor:?];
  v106[1] = v77;
  widthAnchor = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  titleLabel = [(_MFFormEntry *)self->_from titleLabel];
  widthAnchor2 = [titleLabel widthAnchor];
  v74 = [widthAnchor constraintEqualToAnchor:?];
  v106[2] = v74;
  widthAnchor3 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  titleLabel2 = [(_MFFormEntry *)self->_subject titleLabel];
  widthAnchor4 = [titleLabel2 widthAnchor];
  v71 = [widthAnchor3 constraintEqualToAnchor:?];
  v106[3] = v71;
  widthAnchor5 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  titleLabel3 = [(_MFFormEntry *)self->_date titleLabel];
  widthAnchor6 = [titleLabel3 widthAnchor];
  v68 = [widthAnchor5 constraintEqualToAnchor:?];
  v106[4] = v68;
  widthAnchor7 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  titleLabel4 = [(_MFFormEntry *)self->_to titleLabel];
  widthAnchor8 = [titleLabel4 widthAnchor];
  v65 = [widthAnchor7 constraintEqualToAnchor:?];
  v106[5] = v65;
  widthAnchor9 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  titleLabel5 = [(_MFFormEntry *)self->_cc titleLabel];
  widthAnchor10 = [titleLabel5 widthAnchor];
  v62 = [widthAnchor9 constraintEqualToAnchor:?];
  v106[6] = v62;
  widthAnchor11 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  titleLabel6 = [(_MFFormEntry *)self->_bcc titleLabel];
  widthAnchor12 = [titleLabel6 widthAnchor];
  v59 = [widthAnchor11 constraintEqualToAnchor:?];
  v106[7] = v59;
  titleLabel7 = [(_MFFormEntry *)self->_from titleLabel];
  firstBaselineAnchor = [titleLabel7 firstBaselineAnchor];
  valueLabel = [(_MFFormEntry *)self->_from valueLabel];
  firstBaselineAnchor2 = [valueLabel firstBaselineAnchor];
  v55 = [firstBaselineAnchor constraintEqualToAnchor:?];
  v106[8] = v55;
  titleLabel8 = [(_MFFormEntry *)self->_from titleLabel];
  trailingAnchor = [titleLabel8 trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v52 = [trailingAnchor constraintEqualToAnchor:?];
  v106[9] = v52;
  titleLabel9 = [(_MFFormEntry *)self->_subject titleLabel];
  firstBaselineAnchor3 = [titleLabel9 firstBaselineAnchor];
  valueLabel2 = [(_MFFormEntry *)self->_subject valueLabel];
  firstBaselineAnchor4 = [valueLabel2 firstBaselineAnchor];
  v48 = [firstBaselineAnchor3 constraintEqualToAnchor:?];
  v106[10] = v48;
  titleLabel10 = [(_MFFormEntry *)self->_subject titleLabel];
  trailingAnchor3 = [titleLabel10 trailingAnchor];
  trailingAnchor4 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:?];
  v106[11] = v45;
  titleLabel11 = [(_MFFormEntry *)self->_date titleLabel];
  firstBaselineAnchor5 = [titleLabel11 firstBaselineAnchor];
  valueLabel3 = [(_MFFormEntry *)self->_date valueLabel];
  firstBaselineAnchor6 = [valueLabel3 firstBaselineAnchor];
  v41 = [firstBaselineAnchor5 constraintEqualToAnchor:?];
  v106[12] = v41;
  titleLabel12 = [(_MFFormEntry *)self->_date titleLabel];
  trailingAnchor5 = [titleLabel12 trailingAnchor];
  trailingAnchor6 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v38 = [trailingAnchor5 constraintEqualToAnchor:?];
  v106[13] = v38;
  titleLabel13 = [(_MFFormEntry *)self->_to titleLabel];
  firstBaselineAnchor7 = [titleLabel13 firstBaselineAnchor];
  valueLabel4 = [(_MFFormEntry *)self->_to valueLabel];
  firstBaselineAnchor8 = [valueLabel4 firstBaselineAnchor];
  v34 = [firstBaselineAnchor7 constraintEqualToAnchor:?];
  v106[14] = v34;
  titleLabel14 = [(_MFFormEntry *)self->_to titleLabel];
  trailingAnchor7 = [titleLabel14 trailingAnchor];
  trailingAnchor8 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v31 = [trailingAnchor7 constraintEqualToAnchor:?];
  v106[15] = v31;
  titleLabel15 = [(_MFFormEntry *)self->_cc titleLabel];
  firstBaselineAnchor9 = [titleLabel15 firstBaselineAnchor];
  valueLabel5 = [(_MFFormEntry *)self->_cc valueLabel];
  firstBaselineAnchor10 = [valueLabel5 firstBaselineAnchor];
  v27 = [firstBaselineAnchor9 constraintEqualToAnchor:?];
  v106[16] = v27;
  titleLabel16 = [(_MFFormEntry *)self->_cc titleLabel];
  trailingAnchor9 = [titleLabel16 trailingAnchor];
  trailingAnchor10 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v24 = [trailingAnchor9 constraintEqualToAnchor:?];
  v106[17] = v24;
  titleLabel17 = [(_MFFormEntry *)self->_bcc titleLabel];
  firstBaselineAnchor11 = [titleLabel17 firstBaselineAnchor];
  valueLabel6 = [(_MFFormEntry *)self->_bcc valueLabel];
  firstBaselineAnchor12 = [valueLabel6 firstBaselineAnchor];
  v20 = [firstBaselineAnchor11 constraintEqualToAnchor:?];
  v106[18] = v20;
  titleLabel18 = [(_MFFormEntry *)self->_bcc titleLabel];
  trailingAnchor11 = [titleLabel18 trailingAnchor];
  trailingAnchor12 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v17 = [trailingAnchor11 constraintEqualToAnchor:?];
  v106[19] = v17;
  topAnchor3 = [(UIStackView *)self->_secondColumn topAnchor];
  layoutMarginsGuide3 = [(MFPrintMessageHeaderViewBlock *)self layoutMarginsGuide];
  topAnchor4 = [layoutMarginsGuide3 topAnchor];
  v14 = [topAnchor3 constraintEqualToAnchor:?];
  v106[20] = v14;
  leadingAnchor3 = [(UIStackView *)self->_secondColumn leadingAnchor];
  trailingAnchor13 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v4 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor13 constant:5.0];
  v106[21] = v4;
  bottomAnchor = [(UIStackView *)self->_secondColumn bottomAnchor];
  layoutMarginsGuide4 = [(MFPrintMessageHeaderViewBlock *)self layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v106[22] = v8;
  trailingAnchor14 = [(UIStackView *)self->_secondColumn trailingAnchor];
  layoutMarginsGuide5 = [(MFPrintMessageHeaderViewBlock *)self layoutMarginsGuide];
  trailingAnchor15 = [layoutMarginsGuide5 trailingAnchor];
  v12 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
  v106[23] = v12;
  v13 = [NSArray arrayWithObjects:v106 count:24];

  [NSLayoutConstraint activateConstraints:v13];
}

- (void)displayMessageUsingViewModel:(id)model
{
  modelCopy = model;
  v24.receiver = self;
  v24.super_class = MFPrintMessageHeaderViewBlock;
  [(MFPrintMessageHeaderViewBlock *)&v24 displayMessageUsingViewModel:modelCopy];
  senderList = [modelCopy senderList];
  v6 = [(MFPrintMessageHeaderViewBlock *)self _attributedStringForAddressList:senderList];
  valueLabel = [(_MFFormEntry *)self->_from valueLabel];
  [valueLabel setAttributedText:v6];

  toList = [modelCopy toList];
  v9 = [(MFPrintMessageHeaderViewBlock *)self _attributedStringForAddressList:toList];
  valueLabel2 = [(_MFFormEntry *)self->_to valueLabel];
  [valueLabel2 setAttributedText:v9];

  ccList = [modelCopy ccList];
  v12 = [(MFPrintMessageHeaderViewBlock *)self _attributedStringForAddressList:ccList];
  valueLabel3 = [(_MFFormEntry *)self->_cc valueLabel];
  [valueLabel3 setAttributedText:v12];

  bccList = [modelCopy bccList];
  v15 = [(MFPrintMessageHeaderViewBlock *)self _attributedStringForAddressList:bccList];
  valueLabel4 = [(_MFFormEntry *)self->_bcc valueLabel];
  [valueLabel4 setAttributedText:v15];

  subject = [modelCopy subject];
  v18 = [ECSubjectFormatter subjectStringForDisplayForSubject:subject];
  valueLabel5 = [(_MFFormEntry *)self->_subject valueLabel];
  [valueLabel5 setText:v18];

  dateFormatter = self->_dateFormatter;
  date = [modelCopy date];
  v22 = [(NSDateFormatter *)dateFormatter stringFromDate:date];
  valueLabel6 = [(_MFFormEntry *)self->_date valueLabel];
  [valueLabel6 setText:v22];

  [(MFPrintMessageHeaderViewBlock *)self _updateVisibility];
}

- (void)_updateVisibility
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_entries;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        valueLabel = [v6 valueLabel];
        text = [valueLabel text];
        v9 = [text length];
        valueLabel2 = [v6 valueLabel];
        [valueLabel2 setHidden:v9 == 0];

        valueLabel3 = [v6 valueLabel];
        isHidden = [valueLabel3 isHidden];
        titleLabel = [v6 titleLabel];
        [titleLabel setHidden:isHidden];
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }
}

- (id)_attributedStringForAddressList:(id)list
{
  listCopy = list;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100206784;
  v10[3] = &unk_1006553A0;
  v5 = objc_alloc_init(NSMutableAttributedString);
  v11 = v5;
  selfCopy = self;
  v6 = listCopy;
  v13 = v6;
  [v6 enumerateObjectsUsingBlock:v10];
  v7 = v13;
  v8 = v5;

  return v5;
}

- (id)_attributedStringForAddress:(id)address appendComma:(BOOL)comma
{
  commaCopy = comma;
  addressCopy = address;
  emailAddressValue = [addressCopy emailAddressValue];
  displayName = [emailAddressValue displayName];

  v8 = addressCopy;
  emailAddressValue2 = [v8 emailAddressValue];
  simpleAddress = [emailAddressValue2 simpleAddress];
  v11 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [v8 stringValue];
  }

  v13 = stringValue;

  if (displayName && ([displayName isEqualToString:v13] & 1) == 0)
  {
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"NAME_AND_EMAIL_ADDRESS_FORMAT %@ %@" value:@"%@ %@" table:@"Main"];
    v15 = [NSMutableString stringWithFormat:v17, displayName, v13];

    v14 = 1;
    if (!commaCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [NSMutableString stringWithString:v13];
  v15 = v14 = 0;
  if (commaCopy)
  {
LABEL_9:
    v18 = MFLocalizedAddressSeparator();
    [v15 appendString:v18];
  }

LABEL_10:
  v19 = [[NSMutableAttributedString alloc] initWithString:v15];
  if (v14)
  {
    v24 = NSForegroundColorAttributeName;
    v20 = +[UIColor mailSubtitleGrayColor];
    v25 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v19 setAttributes:v21 range:{objc_msgSend(displayName, "length") + 1, objc_msgSend(v15, "length") + ~objc_msgSend(displayName, "length")}];
  }

  v22 = +[_MFFormEntry labelFont];
  [v19 addAttribute:NSFontAttributeName value:v22 range:{0, objc_msgSend(v19, "length")}];

  return v19;
}

- (int64_t)_textAlignmentForLayoutDirection
{
  if ([(MFPrintMessageHeaderViewBlock *)self mf_prefersRightToLeftInterfaceLayout])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

@end