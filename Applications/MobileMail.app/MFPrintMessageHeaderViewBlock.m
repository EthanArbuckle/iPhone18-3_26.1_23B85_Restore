@interface MFPrintMessageHeaderViewBlock
- (MFPrintMessageHeaderViewBlock)initWithFrame:(CGRect)a3;
- (id)_attributedStringForAddress:(id)a3 appendComma:(BOOL)a4;
- (id)_attributedStringForAddressList:(id)a3;
- (int64_t)_textAlignmentForLayoutDirection;
- (void)_createFormEntries;
- (void)_updateVisibility;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)a3;
- (void)initializePrimaryLayoutConstraints;
- (void)updateConstraints;
@end

@implementation MFPrintMessageHeaderViewBlock

- (MFPrintMessageHeaderViewBlock)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MFPrintMessageHeaderViewBlock;
  v3 = [(MFPrintMessageHeaderViewBlock *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v7 = [(_MFFormEntry *)self->_from titleLabel];
  [v7 setText:v6];

  v8 = [(_MFFormEntry *)self->_from titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"SUBJECT" value:&stru_100662A88 table:@"Main"];
  v11 = [(_MFFormEntry *)self->_subject titleLabel];
  [v11 setText:v10];

  v12 = [(_MFFormEntry *)self->_subject titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"DATE" value:&stru_100662A88 table:@"Main"];
  v15 = [(_MFFormEntry *)self->_date titleLabel];
  [v15 setText:v14];

  v16 = [(_MFFormEntry *)self->_date titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:v16];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"TO" value:&stru_100662A88 table:@"Main"];
  v19 = [(_MFFormEntry *)self->_to titleLabel];
  [v19 setText:v18];

  v20 = [(_MFFormEntry *)self->_to titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:v20];

  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"CC" value:&stru_100662A88 table:@"Main"];
  v23 = [(_MFFormEntry *)self->_cc titleLabel];
  [v23 setText:v22];

  v24 = [(_MFFormEntry *)self->_cc titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:v24];

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"BCC" value:&stru_100662A88 table:@"Main"];
  v27 = [(_MFFormEntry *)self->_bcc titleLabel];
  [v27 setText:v26];

  v28 = [(_MFFormEntry *)self->_bcc titleLabel];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:v28];

  v29 = objc_alloc_init(UIStackView);
  secondColumn = self->_secondColumn;
  self->_secondColumn = v29;

  [(UIStackView *)self->_secondColumn setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_secondColumn setAxis:1];
  [(UIStackView *)self->_secondColumn setAlignment:1];
  [(UIStackView *)self->_secondColumn setDistribution:0];
  [(MFPrintMessageHeaderViewBlock *)self addSubview:self->_secondColumn];
  v31 = self->_secondColumn;
  v32 = [(_MFFormEntry *)self->_from valueLabel];
  [(UIStackView *)v31 addArrangedSubview:v32];

  v33 = self->_secondColumn;
  v34 = [(_MFFormEntry *)self->_subject valueLabel];
  [(UIStackView *)v33 addArrangedSubview:v34];

  v35 = self->_secondColumn;
  v36 = [(_MFFormEntry *)self->_date valueLabel];
  [(UIStackView *)v35 addArrangedSubview:v36];

  v37 = self->_secondColumn;
  v38 = [(_MFFormEntry *)self->_to valueLabel];
  [(UIStackView *)v37 addArrangedSubview:v38];

  v39 = self->_secondColumn;
  v40 = [(_MFFormEntry *)self->_cc valueLabel];
  [(UIStackView *)v39 addArrangedSubview:v40];

  v41 = self->_secondColumn;
  v42 = [(_MFFormEntry *)self->_bcc valueLabel];
  [(UIStackView *)v41 addArrangedSubview:v42];
}

- (void)_createFormEntries
{
  v3 = [[NSMutableArray alloc] initWithCapacity:6];
  entries = self->_entries;
  self->_entries = v3;

  v5 = [(MFPrintMessageHeaderViewBlock *)self _textAlignmentForLayoutDirection];
  v6 = [[_MFFormEntry alloc] initWithTextAlignment:v5];
  from = self->_from;
  self->_from = v6;

  [(NSMutableArray *)self->_entries addObject:self->_from];
  v8 = [[_MFFormEntry alloc] initWithTextAlignment:v5];
  subject = self->_subject;
  self->_subject = v8;

  [(NSMutableArray *)self->_entries addObject:self->_subject];
  v10 = [[_MFFormEntry alloc] initWithTextAlignment:v5];
  date = self->_date;
  self->_date = v10;

  [(NSMutableArray *)self->_entries addObject:self->_date];
  v12 = [[_MFFormEntry alloc] initWithTextAlignment:v5];
  to = self->_to;
  self->_to = v12;

  [(NSMutableArray *)self->_entries addObject:self->_to];
  v14 = [[_MFFormEntry alloc] initWithTextAlignment:v5];
  cc = self->_cc;
  self->_cc = v14;

  [(NSMutableArray *)self->_entries addObject:self->_cc];
  v16 = [[_MFFormEntry alloc] initWithTextAlignment:v5];
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
  v104 = [(UILayoutGuide *)self->_firstColumn topAnchor];
  v82 = [(MFPrintMessageHeaderViewBlock *)self layoutMarginsGuide];
  v81 = [v82 topAnchor];
  v80 = [v104 constraintEqualToAnchor:?];
  v106[0] = v80;
  v103 = [(UILayoutGuide *)self->_firstColumn leadingAnchor];
  v79 = [(MFPrintMessageHeaderViewBlock *)self layoutMarginsGuide];
  v78 = [v79 leadingAnchor];
  v77 = [v103 constraintEqualToAnchor:?];
  v106[1] = v77;
  v102 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  v76 = [(_MFFormEntry *)self->_from titleLabel];
  v75 = [v76 widthAnchor];
  v74 = [v102 constraintEqualToAnchor:?];
  v106[2] = v74;
  v101 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  v73 = [(_MFFormEntry *)self->_subject titleLabel];
  v72 = [v73 widthAnchor];
  v71 = [v101 constraintEqualToAnchor:?];
  v106[3] = v71;
  v100 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  v70 = [(_MFFormEntry *)self->_date titleLabel];
  v69 = [v70 widthAnchor];
  v68 = [v100 constraintEqualToAnchor:?];
  v106[4] = v68;
  v99 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  v67 = [(_MFFormEntry *)self->_to titleLabel];
  v66 = [v67 widthAnchor];
  v65 = [v99 constraintEqualToAnchor:?];
  v106[5] = v65;
  v98 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  v64 = [(_MFFormEntry *)self->_cc titleLabel];
  v63 = [v64 widthAnchor];
  v62 = [v98 constraintEqualToAnchor:?];
  v106[6] = v62;
  v97 = [(UILayoutGuide *)self->_firstColumn widthAnchor];
  v61 = [(_MFFormEntry *)self->_bcc titleLabel];
  v60 = [v61 widthAnchor];
  v59 = [v97 constraintEqualToAnchor:?];
  v106[7] = v59;
  v58 = [(_MFFormEntry *)self->_from titleLabel];
  v96 = [v58 firstBaselineAnchor];
  v57 = [(_MFFormEntry *)self->_from valueLabel];
  v56 = [v57 firstBaselineAnchor];
  v55 = [v96 constraintEqualToAnchor:?];
  v106[8] = v55;
  v54 = [(_MFFormEntry *)self->_from titleLabel];
  v95 = [v54 trailingAnchor];
  v53 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v52 = [v95 constraintEqualToAnchor:?];
  v106[9] = v52;
  v51 = [(_MFFormEntry *)self->_subject titleLabel];
  v94 = [v51 firstBaselineAnchor];
  v50 = [(_MFFormEntry *)self->_subject valueLabel];
  v49 = [v50 firstBaselineAnchor];
  v48 = [v94 constraintEqualToAnchor:?];
  v106[10] = v48;
  v47 = [(_MFFormEntry *)self->_subject titleLabel];
  v93 = [v47 trailingAnchor];
  v46 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v45 = [v93 constraintEqualToAnchor:?];
  v106[11] = v45;
  v44 = [(_MFFormEntry *)self->_date titleLabel];
  v92 = [v44 firstBaselineAnchor];
  v43 = [(_MFFormEntry *)self->_date valueLabel];
  v42 = [v43 firstBaselineAnchor];
  v41 = [v92 constraintEqualToAnchor:?];
  v106[12] = v41;
  v40 = [(_MFFormEntry *)self->_date titleLabel];
  v91 = [v40 trailingAnchor];
  v39 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v38 = [v91 constraintEqualToAnchor:?];
  v106[13] = v38;
  v37 = [(_MFFormEntry *)self->_to titleLabel];
  v90 = [v37 firstBaselineAnchor];
  v36 = [(_MFFormEntry *)self->_to valueLabel];
  v35 = [v36 firstBaselineAnchor];
  v34 = [v90 constraintEqualToAnchor:?];
  v106[14] = v34;
  v33 = [(_MFFormEntry *)self->_to titleLabel];
  v89 = [v33 trailingAnchor];
  v32 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v31 = [v89 constraintEqualToAnchor:?];
  v106[15] = v31;
  v30 = [(_MFFormEntry *)self->_cc titleLabel];
  v88 = [v30 firstBaselineAnchor];
  v29 = [(_MFFormEntry *)self->_cc valueLabel];
  v28 = [v29 firstBaselineAnchor];
  v27 = [v88 constraintEqualToAnchor:?];
  v106[16] = v27;
  v26 = [(_MFFormEntry *)self->_cc titleLabel];
  v87 = [v26 trailingAnchor];
  v25 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v24 = [v87 constraintEqualToAnchor:?];
  v106[17] = v24;
  v23 = [(_MFFormEntry *)self->_bcc titleLabel];
  v86 = [v23 firstBaselineAnchor];
  v22 = [(_MFFormEntry *)self->_bcc valueLabel];
  v21 = [v22 firstBaselineAnchor];
  v20 = [v86 constraintEqualToAnchor:?];
  v106[18] = v20;
  v19 = [(_MFFormEntry *)self->_bcc titleLabel];
  v85 = [v19 trailingAnchor];
  v18 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v17 = [v85 constraintEqualToAnchor:?];
  v106[19] = v17;
  v84 = [(UIStackView *)self->_secondColumn topAnchor];
  v16 = [(MFPrintMessageHeaderViewBlock *)self layoutMarginsGuide];
  v15 = [v16 topAnchor];
  v14 = [v84 constraintEqualToAnchor:?];
  v106[20] = v14;
  v83 = [(UIStackView *)self->_secondColumn leadingAnchor];
  v3 = [(UILayoutGuide *)self->_firstColumn trailingAnchor];
  v4 = [v83 constraintEqualToAnchor:v3 constant:5.0];
  v106[21] = v4;
  v5 = [(UIStackView *)self->_secondColumn bottomAnchor];
  v6 = [(MFPrintMessageHeaderViewBlock *)self layoutMarginsGuide];
  v7 = [v6 bottomAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v106[22] = v8;
  v9 = [(UIStackView *)self->_secondColumn trailingAnchor];
  v10 = [(MFPrintMessageHeaderViewBlock *)self layoutMarginsGuide];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v106[23] = v12;
  v13 = [NSArray arrayWithObjects:v106 count:24];

  [NSLayoutConstraint activateConstraints:v13];
}

- (void)displayMessageUsingViewModel:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = MFPrintMessageHeaderViewBlock;
  [(MFPrintMessageHeaderViewBlock *)&v24 displayMessageUsingViewModel:v4];
  v5 = [v4 senderList];
  v6 = [(MFPrintMessageHeaderViewBlock *)self _attributedStringForAddressList:v5];
  v7 = [(_MFFormEntry *)self->_from valueLabel];
  [v7 setAttributedText:v6];

  v8 = [v4 toList];
  v9 = [(MFPrintMessageHeaderViewBlock *)self _attributedStringForAddressList:v8];
  v10 = [(_MFFormEntry *)self->_to valueLabel];
  [v10 setAttributedText:v9];

  v11 = [v4 ccList];
  v12 = [(MFPrintMessageHeaderViewBlock *)self _attributedStringForAddressList:v11];
  v13 = [(_MFFormEntry *)self->_cc valueLabel];
  [v13 setAttributedText:v12];

  v14 = [v4 bccList];
  v15 = [(MFPrintMessageHeaderViewBlock *)self _attributedStringForAddressList:v14];
  v16 = [(_MFFormEntry *)self->_bcc valueLabel];
  [v16 setAttributedText:v15];

  v17 = [v4 subject];
  v18 = [ECSubjectFormatter subjectStringForDisplayForSubject:v17];
  v19 = [(_MFFormEntry *)self->_subject valueLabel];
  [v19 setText:v18];

  dateFormatter = self->_dateFormatter;
  v21 = [v4 date];
  v22 = [(NSDateFormatter *)dateFormatter stringFromDate:v21];
  v23 = [(_MFFormEntry *)self->_date valueLabel];
  [v23 setText:v22];

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
        v7 = [v6 valueLabel];
        v8 = [v7 text];
        v9 = [v8 length];
        v10 = [v6 valueLabel];
        [v10 setHidden:v9 == 0];

        v11 = [v6 valueLabel];
        v12 = [v11 isHidden];
        v13 = [v6 titleLabel];
        [v13 setHidden:v12];
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }
}

- (id)_attributedStringForAddressList:(id)a3
{
  v4 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100206784;
  v10[3] = &unk_1006553A0;
  v5 = objc_alloc_init(NSMutableAttributedString);
  v11 = v5;
  v12 = self;
  v6 = v4;
  v13 = v6;
  [v6 enumerateObjectsUsingBlock:v10];
  v7 = v13;
  v8 = v5;

  return v5;
}

- (id)_attributedStringForAddress:(id)a3 appendComma:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 emailAddressValue];
  v7 = [v6 displayName];

  v8 = v5;
  v9 = [v8 emailAddressValue];
  v10 = [v9 simpleAddress];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v8 stringValue];
  }

  v13 = v12;

  if (v7 && ([v7 isEqualToString:v13] & 1) == 0)
  {
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"NAME_AND_EMAIL_ADDRESS_FORMAT %@ %@" value:@"%@ %@" table:@"Main"];
    v15 = [NSMutableString stringWithFormat:v17, v7, v13];

    v14 = 1;
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [NSMutableString stringWithString:v13];
  v15 = v14 = 0;
  if (v4)
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
    [v19 setAttributes:v21 range:{objc_msgSend(v7, "length") + 1, objc_msgSend(v15, "length") + ~objc_msgSend(v7, "length")}];
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