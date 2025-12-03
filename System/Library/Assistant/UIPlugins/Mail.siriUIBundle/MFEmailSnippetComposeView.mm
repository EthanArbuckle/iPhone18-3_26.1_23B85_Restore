@interface MFEmailSnippetComposeView
+ (id)reuseIdentifier;
- (BOOL)_loadSubjectForReference:(id)reference;
- (BOOL)_shouldDisplayField:(id)field;
- (BOOL)_shouldDisplayField:(id)field withHeader:(id)header removeIfNotDisplayed:(BOOL)displayed;
- (BOOL)search:(id)search didFindResults:(id)results;
- (CGRect)_frameForBodyTextWithSize:(CGSize)size startingAt:(double)at;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MFEmailSnippetComposeView)initWithFrame:(CGRect)frame;
- (MFEmailSnippetComposeViewDelegate)composeViewDelegate;
- (double)_roundToPixel:(double)pixel;
- (id)_recipientsFromArray:(id)array;
- (id)draftURL;
- (void)_repopulateFields;
- (void)_setupAndAddLabel:(id)label isHeader:(BOOL)header;
- (void)setEmail:(id)email;
- (void)updateConstraints;
@end

@implementation MFEmailSnippetComposeView

- (void)_setupAndAddLabel:(id)label isHeader:(BOOL)header
{
  headerCopy = header;
  labelCopy = label;
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [labelCopy setFont:v6];

  v7 = +[UIColor siriui_textColor];
  [labelCopy setColor:v7];

  v8 = +[UIColor clearColor];
  [labelCopy setBackgroundColor:v8];

  if (headerCopy)
  {
    [labelCopy sizeToFit];
  }

  contentView = [(MFEmailSnippetComposeView *)self contentView];
  [contentView addSubview:labelCopy];
}

- (MFEmailSnippetComposeView)initWithFrame:(CGRect)frame
{
  v46.receiver = self;
  v46.super_class = MFEmailSnippetComposeView;
  v3 = [(MFEmailSnippetComposeView *)&v46 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    toHeader = v3->_toHeader;
    v3->_toHeader = v8;

    v10 = v3->_toHeader;
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 siriUILocalizedStringForKey:@"TO_HEADER" table:@"Assistant"];
    [(UILabel *)v10 setText:v12];

    [(UILabel *)v3->_toHeader setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1148846080;
    [(UILabel *)v3->_toHeader setContentCompressionResistancePriority:0 forAxis:v13];
    [(MFEmailSnippetComposeView *)v3 _setupAndAddLabel:v3->_toHeader isHeader:1];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    ccHeader = v3->_ccHeader;
    v3->_ccHeader = v14;

    v16 = v3->_ccHeader;
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 siriUILocalizedStringForKey:@"CC_HEADER" table:@"Assistant"];
    [(UILabel *)v16 setText:v18];

    [(UILabel *)v3->_ccHeader setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(UILabel *)v3->_ccHeader setContentCompressionResistancePriority:0 forAxis:v19];
    [(MFEmailSnippetComposeView *)v3 _setupAndAddLabel:v3->_ccHeader isHeader:1];
    v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    bccHeader = v3->_bccHeader;
    v3->_bccHeader = v20;

    v22 = v3->_bccHeader;
    v23 = [NSBundle bundleForClass:objc_opt_class()];
    v24 = [v23 siriUILocalizedStringForKey:@"BCC_HEADER" table:@"Assistant"];
    [(UILabel *)v22 setText:v24];

    [(UILabel *)v3->_bccHeader setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v25) = 1148846080;
    [(UILabel *)v3->_bccField setContentCompressionResistancePriority:0 forAxis:v25];
    [(MFEmailSnippetComposeView *)v3 _setupAndAddLabel:v3->_bccHeader isHeader:1];
    v26 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subjectHeader = v3->_subjectHeader;
    v3->_subjectHeader = v26;

    v28 = v3->_subjectHeader;
    v29 = [NSBundle bundleForClass:objc_opt_class()];
    v30 = [v29 siriUILocalizedStringForKey:@"SUBJECT_HEADER" table:@"Assistant"];
    [(UILabel *)v28 setText:v30];

    [(UILabel *)v3->_subjectHeader setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v31) = 1148846080;
    [(UILabel *)v3->_subjectHeader setContentCompressionResistancePriority:0 forAxis:v31];
    [(MFEmailSnippetComposeView *)v3 _setupAndAddLabel:v3->_subjectHeader isHeader:1];
    v32 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    toField = v3->_toField;
    v3->_toField = v32;

    [(UILabel *)v3->_toField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFEmailSnippetComposeView *)v3 _setupAndAddLabel:v3->_toField isHeader:0];
    v34 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    ccField = v3->_ccField;
    v3->_ccField = v34;

    [(UILabel *)v3->_ccField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFEmailSnippetComposeView *)v3 _setupAndAddLabel:v3->_ccField isHeader:0];
    v36 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    bccField = v3->_bccField;
    v3->_bccField = v36;

    [(UILabel *)v3->_bccField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFEmailSnippetComposeView *)v3 _setupAndAddLabel:v3->_bccField isHeader:0];
    v38 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subjectField = v3->_subjectField;
    v3->_subjectField = v38;

    [(UILabel *)v3->_subjectField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFEmailSnippetComposeView *)v3 _setupAndAddLabel:v3->_subjectField isHeader:0];
    v40 = [SiriUIKeyline keylineWithKeylineType:1];
    subjectDivider = v3->_subjectDivider;
    v3->_subjectDivider = v40;

    [(SiriUIKeyline *)v3->_subjectDivider setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(MFEmailSnippetComposeView *)v3 contentView];
    [contentView addSubview:v3->_subjectDivider];

    v43 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    bodyText = v3->_bodyText;
    v3->_bodyText = v43;

    [(UILabel *)v3->_bodyText setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFEmailSnippetComposeView *)v3 _setupAndAddLabel:v3->_bodyText isHeader:0];
    [(UILabel *)v3->_bodyText setNumberOfLines:0];
  }

  return v3;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

- (double)_roundToPixel:(double)pixel
{
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;

  if (v6 > 0.0)
  {
    v7 = v6 * pixel;
    return roundf(v7) / v6;
  }

  return pixel;
}

- (CGRect)_frameForBodyTextWithSize:(CGSize)size startingAt:(double)at
{
  height = size.height;
  width = size.width;
  [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
  v9 = width - v8;
  [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
  [(UILabel *)self->_bodyText sizeThatFits:v9 - v10, height];
  v12 = v11;
  v14 = v13;
  [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
  v16 = v15;
  [(MFEmailSnippetComposeView *)self _roundToPixel:-1.5];
  v18 = sub_5B1C(v17) + at;
  v19 = v16;
  v20 = v12;
  v21 = v14;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = v19;
  return result;
}

- (BOOL)_shouldDisplayField:(id)field
{
  fieldCopy = field;
  text = [(UILabel *)fieldCopy text];
  if ([text length] || self->_subjectField == fieldCopy)
  {
    v6 = 1;
  }

  else if (self->_toField == fieldCopy)
  {
    text2 = [(UILabel *)self->_ccField text];
    v6 = [text2 length] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldDisplayField:(id)field withHeader:(id)header removeIfNotDisplayed:(BOOL)displayed
{
  displayedCopy = displayed;
  fieldCopy = field;
  headerCopy = header;
  v10 = [(MFEmailSnippetComposeView *)self _shouldDisplayField:fieldCopy];
  if (!v10 && displayedCopy)
  {
    [fieldCopy removeFromSuperview];
    [headerCopy removeFromSuperview];
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = 0.0;
  if ([(MFEmailSnippetComposeView *)self _shouldDisplayField:self->_toField])
  {
    [(MFEmailSnippetComposeView *)self _roundToPixel:25.0];
    v6 = v7 + 0.0;
  }

  if ([(MFEmailSnippetComposeView *)self _shouldDisplayField:self->_ccField])
  {
    [(MFEmailSnippetComposeView *)self _roundToPixel:25.0];
    v6 = v6 + v8;
  }

  if ([(MFEmailSnippetComposeView *)self _shouldDisplayField:self->_bccField])
  {
    [(MFEmailSnippetComposeView *)self _roundToPixel:25.0];
    v6 = v6 + v9;
  }

  if ([(MFEmailSnippetComposeView *)self _shouldDisplayField:self->_subjectField])
  {
    [(MFEmailSnippetComposeView *)self _roundToPixel:25.0];
    v6 = v6 + v10;
  }

  v11 = sub_5B1C(v6 + 22.0);
  if ([(MFEmailSnippetComposeView *)self _shouldDisplayField:self->_bodyText])
  {
    [(MFEmailSnippetComposeView *)self _frameForBodyTextWithSize:width startingAt:height, 0.0];
    v13 = v11 + v12;
    [(MFEmailSnippetComposeView *)self _roundToPixel:25.0];
    v11 = v13 + v14 + sub_5B1C(5.0);
  }

  v15 = width;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)updateConstraints
{
  v106.receiver = self;
  v106.super_class = MFEmailSnippetComposeView;
  [(MFEmailSnippetComposeView *)&v106 updateConstraints];
  contentView = [(MFEmailSnippetComposeView *)self contentView];
  contentView2 = [(MFEmailSnippetComposeView *)self contentView];
  constraints = [contentView2 constraints];
  [contentView removeConstraints:constraints];

  v105 = +[NSMutableArray array];
  if ([(MFEmailSnippetComposeView *)self _shouldDisplayField:self->_toField withHeader:self->_toHeader removeIfNotDisplayed:1])
  {
    v5 = [NSMutableArray arrayWithCapacity:5];
    [(UILabel *)self->_toHeader sizeToFit];
    [(UILabel *)self->_toField sizeToFit];
    toHeader = self->_toHeader;
    contentView3 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:25.0];
    v9 = [NSLayoutConstraint constraintWithItem:toHeader attribute:11 relatedBy:0 toItem:contentView3 attribute:3 multiplier:1.0 constant:sub_5B1C(v8)];
    [v5 addObject:v9];

    v10 = self->_toHeader;
    contentView4 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
    v13 = [NSLayoutConstraint constraintWithItem:v10 attribute:5 relatedBy:0 toItem:contentView4 attribute:5 multiplier:1.0 constant:v12];
    [v5 addObject:v13];

    v14 = [NSLayoutConstraint constraintWithItem:self->_toField attribute:10 relatedBy:0 toItem:self->_toHeader attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v14];

    toField = self->_toField;
    v16 = self->_toHeader;
    [(MFEmailSnippetComposeView *)self _roundToPixel:8.0];
    v18 = [NSLayoutConstraint constraintWithItem:toField attribute:5 relatedBy:0 toItem:v16 attribute:6 multiplier:1.0 constant:v17];
    [v5 addObject:v18];

    v19 = self->_toField;
    contentView5 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
    v22 = [NSLayoutConstraint constraintWithItem:v19 attribute:6 relatedBy:-1 toItem:contentView5 attribute:6 multiplier:1.0 constant:-v21];
    [v5 addObject:v22];

    [v105 addObjectsFromArray:v5];
    v23 = self->_toHeader;
  }

  else
  {
    v23 = 0;
  }

  if ([(MFEmailSnippetComposeView *)self _shouldDisplayField:self->_ccField withHeader:self->_ccHeader removeIfNotDisplayed:1])
  {
    [(UILabel *)self->_ccHeader sizeToFit];
    [(UILabel *)self->_ccField sizeToFit];
    v24 = [NSMutableArray arrayWithCapacity:5];
    ccHeader = self->_ccHeader;
    if (v23)
    {
      [(MFEmailSnippetComposeView *)self _roundToPixel:23.0];
      v27 = 4;
      contentView6 = v23;
    }

    else
    {
      contentView6 = [(MFEmailSnippetComposeView *)self contentView];
      [(MFEmailSnippetComposeView *)self _roundToPixel:25.0];
      v27 = 3;
    }

    v29 = [NSLayoutConstraint constraintWithItem:ccHeader attribute:11 relatedBy:0 toItem:contentView6 attribute:v27 multiplier:1.0 constant:sub_5B1C(v26)];
    [v24 addObject:v29];

    if (!v23)
    {
    }

    v30 = self->_ccHeader;
    contentView7 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
    v33 = [NSLayoutConstraint constraintWithItem:v30 attribute:5 relatedBy:0 toItem:contentView7 attribute:5 multiplier:1.0 constant:v32];
    [v24 addObject:v33];

    v34 = [NSLayoutConstraint constraintWithItem:self->_ccField attribute:10 relatedBy:0 toItem:self->_ccHeader attribute:10 multiplier:1.0 constant:0.0];
    [v24 addObject:v34];

    ccField = self->_ccField;
    v36 = self->_ccHeader;
    [(MFEmailSnippetComposeView *)self _roundToPixel:8.0];
    v38 = [NSLayoutConstraint constraintWithItem:ccField attribute:5 relatedBy:0 toItem:v36 attribute:6 multiplier:1.0 constant:v37];
    [v24 addObject:v38];

    v39 = self->_ccField;
    contentView8 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
    v42 = [NSLayoutConstraint constraintWithItem:v39 attribute:6 relatedBy:-1 toItem:contentView8 attribute:6 multiplier:1.0 constant:-v41];
    [v24 addObject:v42];

    [v105 addObjectsFromArray:v24];
    v43 = self->_ccHeader;

    v23 = v43;
  }

  if ([(MFEmailSnippetComposeView *)self _shouldDisplayField:self->_bccField withHeader:self->_bccHeader removeIfNotDisplayed:1])
  {
    [(UILabel *)self->_bccHeader sizeToFit];
    [(UILabel *)self->_bccField sizeToFit];
    v44 = [NSMutableArray arrayWithCapacity:5];
    bccHeader = self->_bccHeader;
    [(MFEmailSnippetComposeView *)self _roundToPixel:23.0];
    v47 = [NSLayoutConstraint constraintWithItem:bccHeader attribute:11 relatedBy:0 toItem:v23 attribute:4 multiplier:1.0 constant:sub_5B1C(v46)];
    [v44 addObject:v47];

    v48 = self->_bccHeader;
    contentView9 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
    v51 = [NSLayoutConstraint constraintWithItem:v48 attribute:5 relatedBy:0 toItem:contentView9 attribute:5 multiplier:1.0 constant:v50];
    [v44 addObject:v51];

    v52 = [NSLayoutConstraint constraintWithItem:self->_bccField attribute:10 relatedBy:0 toItem:self->_bccHeader attribute:10 multiplier:1.0 constant:0.0];
    [v44 addObject:v52];

    bccField = self->_bccField;
    v54 = self->_bccHeader;
    [(MFEmailSnippetComposeView *)self _roundToPixel:8.0];
    v56 = [NSLayoutConstraint constraintWithItem:bccField attribute:5 relatedBy:0 toItem:v54 attribute:6 multiplier:1.0 constant:v55];
    [v44 addObject:v56];

    v57 = self->_bccField;
    contentView10 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
    v60 = [NSLayoutConstraint constraintWithItem:v57 attribute:6 relatedBy:-1 toItem:contentView10 attribute:6 multiplier:1.0 constant:-v59];
    [v44 addObject:v60];

    [v105 addObjectsFromArray:v44];
    v61 = self->_bccHeader;

    v23 = v61;
  }

  if ([(MFEmailSnippetComposeView *)self _shouldDisplayField:self->_subjectField withHeader:self->_subjectHeader removeIfNotDisplayed:1])
  {
    [(UILabel *)self->_subjectHeader sizeToFit];
    [(UILabel *)self->_subjectField sizeToFit];
    v62 = [NSMutableArray arrayWithCapacity:9];
    subjectHeader = self->_subjectHeader;
    [(MFEmailSnippetComposeView *)self _roundToPixel:23.0];
    v65 = [NSLayoutConstraint constraintWithItem:subjectHeader attribute:11 relatedBy:0 toItem:v23 attribute:4 multiplier:1.0 constant:sub_5B1C(v64)];
    [v62 addObject:v65];

    v66 = self->_subjectHeader;
    contentView11 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
    v69 = [NSLayoutConstraint constraintWithItem:v66 attribute:5 relatedBy:0 toItem:contentView11 attribute:5 multiplier:1.0 constant:v68];
    [v62 addObject:v69];

    v70 = [NSLayoutConstraint constraintWithItem:self->_subjectField attribute:10 relatedBy:0 toItem:self->_subjectHeader attribute:10 multiplier:1.0 constant:0.0];
    [v62 addObject:v70];

    subjectField = self->_subjectField;
    v72 = self->_subjectHeader;
    [(MFEmailSnippetComposeView *)self _roundToPixel:8.0];
    v74 = [NSLayoutConstraint constraintWithItem:subjectField attribute:5 relatedBy:0 toItem:v72 attribute:6 multiplier:1.0 constant:v73];
    [v62 addObject:v74];

    v75 = self->_subjectField;
    contentView12 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
    v78 = [NSLayoutConstraint constraintWithItem:v75 attribute:6 relatedBy:-1 toItem:contentView12 attribute:6 multiplier:1.0 constant:-v77];
    [v62 addObject:v78];

    subjectDivider = self->_subjectDivider;
    contentView13 = [(MFEmailSnippetComposeView *)self contentView];
    v81 = [NSLayoutConstraint constraintWithItem:subjectDivider attribute:5 relatedBy:0 toItem:contentView13 attribute:5 multiplier:1.0 constant:0.0];
    [v62 addObject:v81];

    v82 = self->_subjectDivider;
    contentView14 = [(MFEmailSnippetComposeView *)self contentView];
    v84 = [NSLayoutConstraint constraintWithItem:v82 attribute:6 relatedBy:0 toItem:contentView14 attribute:6 multiplier:1.0 constant:0.0];
    [v62 addObject:v84];

    v85 = [NSLayoutConstraint constraintWithItem:self->_subjectDivider attribute:3 relatedBy:0 toItem:self->_subjectHeader attribute:4 multiplier:1.0 constant:10.0];
    [v62 addObject:v85];

    v86 = [NSLayoutConstraint constraintWithItem:self->_subjectDivider attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.5];
    [v62 addObject:v86];

    [v105 addObjectsFromArray:v62];
    v87 = self->_subjectDivider;

    v23 = v87;
  }

  if ([(MFEmailSnippetComposeView *)self _shouldDisplayField:self->_bodyText withHeader:0 removeIfNotDisplayed:1])
  {
    [(UILabel *)self->_bodyText sizeToFit];
    v88 = +[NSMutableArray array];
    bodyText = self->_bodyText;
    [(MFEmailSnippetComposeView *)self _roundToPixel:25.0];
    v91 = sub_5B1C(v90);
    font = [(UILabel *)self->_bodyText font];
    [font capHeight];
    v94 = [NSLayoutConstraint constraintWithItem:bodyText attribute:3 relatedBy:0 toItem:v23 attribute:4 multiplier:1.0 constant:v91 - v93];
    [v88 addObject:v94];

    v95 = self->_bodyText;
    contentView15 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
    v98 = [NSLayoutConstraint constraintWithItem:v95 attribute:5 relatedBy:0 toItem:contentView15 attribute:5 multiplier:1.0 constant:v97];
    [v88 addObject:v98];

    v99 = self->_bodyText;
    contentView16 = [(MFEmailSnippetComposeView *)self contentView];
    [(MFEmailSnippetComposeView *)self _roundToPixel:15.0];
    v102 = [NSLayoutConstraint constraintWithItem:v99 attribute:6 relatedBy:0 toItem:contentView16 attribute:6 multiplier:1.0 constant:-v101];
    [v88 addObject:v102];

    [v105 addObjectsFromArray:v88];
  }

  contentView17 = [(MFEmailSnippetComposeView *)self contentView];
  [contentView17 addConstraints:v105];
}

- (id)_recipientsFromArray:(id)array
{
  arrayCopy = array;
  v4 = +[NSMutableString string];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v4 length])
        {
          v10 = MFLocalizedAddressSeparator();
          [v4 appendString:v10];
        }

        displayText = [v9 displayText];
        if (![displayText length])
        {
          data = [v9 data];

          displayText = data;
        }

        if ([displayText length])
        {
          [v4 appendString:displayText];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)_repopulateFields
{
  recipientsTo = [(SAEmailEmail *)self->_email recipientsTo];
  v3 = [(MFEmailSnippetComposeView *)self _recipientsFromArray:?];

  v15 = v3;
  [(UILabel *)self->_toField setText:?];
  recipientsCc = [(SAEmailEmail *)self->_email recipientsCc];
  v5 = [(MFEmailSnippetComposeView *)self _recipientsFromArray:recipientsCc];

  v6 = v5;
  [(UILabel *)self->_ccField setText:v6];
  recipientsBcc = [(SAEmailEmail *)self->_email recipientsBcc];
  v8 = [(MFEmailSnippetComposeView *)self _recipientsFromArray:recipientsBcc];

  v9 = v8;
  [(UILabel *)self->_bccField setText:v9];
  subjectField = self->_subjectField;
  subject = [(SAEmailEmail *)self->_email subject];
  [(UILabel *)subjectField setText:subject];

  bodyText = self->_bodyText;
  message = [(SAEmailEmail *)self->_email message];
  [(UILabel *)bodyText setText:message];

  if (qword_1E838 != -1)
  {
    sub_B634();
  }

  [(MFEmailSnippetComposeView *)self setNeedsLayout];
}

- (BOOL)_loadSubjectForReference:(id)reference
{
  referenceCopy = reference;
  v5 = dispatch_semaphore_create(0);
  searchCompleted = self->_searchCompleted;
  self->_searchCompleted = v5;

  v7 = [MSCriterion alloc];
  v8 = [v7 initWithType:MSCriterionTypeMessageReference qualifier:MSCriterionQualifierContains expression:referenceCopy];
  v9 = [NSArray arrayWithObject:MSResultsKeySubject];
  v10 = [MSSearch findMessageData:v9 matchingCriterion:v8 options:0 delegate:self];

  if (v10)
  {
    v11 = self->_searchCompleted;
    v12 = dispatch_time(0, 5000000000);
    v13 = dispatch_semaphore_wait(v11, v12) == 0;
  }

  else
  {
    v13 = 0;
  }

  [v10 cancel];
  v14 = self->_searchCompleted;
  self->_searchCompleted = 0;

  return v13;
}

- (void)setEmail:(id)email
{
  emailCopy = email;
  if (self->_email != emailCopy)
  {
    objc_storeStrong(&self->_email, email);
  }

  type = [(SAEmailEmail *)emailCopy type];
  v6 = [MFAssistantEmail MSSendTypeForSAEMailType:type];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    referenceId = [(SAEmailEmail *)emailCopy referenceId];
    if ([(MFEmailSnippetComposeView *)self _loadSubjectForReference:referenceId])
    {
      if (v6 == 2)
      {
        v8 = 4;
      }

      else
      {
        v8 = 6;
      }

      v9 = [MFComposeTypeFactory subjectFromSubject:self->_subjectResult withComposeType:v8];
      [(SAEmailEmail *)self->_email setSubject:v9];
    }
  }

  [(MFEmailSnippetComposeView *)self _repopulateFields];
}

- (id)draftURL
{
  v3 = +[NSURL ef_defaultAllowedCharacterSet];
  recipientsTo = [(SAEmailEmail *)self->_email recipientsTo];
  v5 = MFCommentedEmailsFromSAPersonAttributes(recipientsTo);
  v6 = [v5 componentsJoinedByString:{@", "}];
  v38 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  recipientsCc = [(SAEmailEmail *)self->_email recipientsCc];
  v8 = MFCommentedEmailsFromSAPersonAttributes(recipientsCc);
  v9 = [v8 componentsJoinedByString:{@", "}];
  v37 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  recipientsBcc = [(SAEmailEmail *)self->_email recipientsBcc];
  v11 = MFCommentedEmailsFromSAPersonAttributes(recipientsBcc);
  v12 = [v11 componentsJoinedByString:{@", "}];
  v36 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  subject = [(SAEmailEmail *)self->_email subject];
  v14 = [subject stringByAddingPercentEncodingWithAllowedCharacters:v3];

  message = [(SAEmailEmail *)self->_email message];
  v16 = [message ef_stringByAddingPercentEscapesUsingEncoding:4];

  type = [(SAEmailEmail *)self->_email type];
  v18 = [MFAssistantEmail MSSendTypeForSAEMailType:type];

  if (v18 == 2)
  {
    v19 = EMAppleMailReplyURLScheme;
    referenceId = [(SAEmailEmail *)self->_email referenceId];
    goto LABEL_5;
  }

  if (v18 == 3)
  {
    v19 = EMAppleMailForwardURLScheme;
    referenceId = [(SAEmailEmail *)self->_email referenceId];
LABEL_5:
    v21 = referenceId;
    v22 = v19;
    goto LABEL_7;
  }

  v22 = 0;
  v21 = 0;
LABEL_7:
  if ([v22 length])
  {
    v23 = [NSMutableString alloc];
    resourceSpecifier = [v21 resourceSpecifier];
    v25 = [resourceSpecifier stringByAddingPercentEncodingWithAllowedCharacters:v3];
    v26 = [v23 initWithFormat:@"%@:%@", v22, v25];

    if ([v38 length])
    {
      [v26 appendFormat:@"?%@=%@", ECMessageHeaderKeyTo, v38];
      v27 = 1;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v28 = [NSMutableString alloc];
    eMMailToURLScheme = [v28 initWithFormat:@"%@:", EMMailToURLScheme];
    if ([v38 length])
    {
      [eMMailToURLScheme appendString:v38];
    }

    v27 = 0;
    v26 = eMMailToURLScheme;
  }

  if ([v37 length])
  {
    if (v27)
    {
      v30 = "&";
    }

    else
    {
      v30 = "?";
    }

    [v26 appendFormat:@"%s%@=%@", v30, ECMessageHeaderKeyCC, v37];
    v27 = 1;
  }

  if ([v36 length])
  {
    if (v27)
    {
      v31 = "&";
    }

    else
    {
      v31 = "?";
    }

    [v26 appendFormat:@"%s%@=%@", v31, ECMessageHeaderKeyBCC, v36];
    v27 = 1;
  }

  if ([v14 length])
  {
    if (v27)
    {
      v32 = "&";
    }

    else
    {
      v32 = "?";
    }

    [v26 appendFormat:@"%s%@=%@", v32, @"subject", v14];
    v27 = 1;
  }

  if ([v16 length])
  {
    if (v27)
    {
      v33 = "&";
    }

    else
    {
      v33 = "?";
    }

    [v26 appendFormat:@"%s%@=%@", v33, @"body", v16];
  }

  v34 = [NSURL URLWithString:v26];

  return v34;
}

- (BOOL)search:(id)search didFindResults:(id)results
{
  resultsCopy = results;
  lastObject = [resultsCopy lastObject];
  v7 = [lastObject objectForKey:MSResultsKeySubject];
  v8 = [v7 copy];
  subjectResult = self->_subjectResult;
  self->_subjectResult = v8;

  return 0;
}

- (MFEmailSnippetComposeViewDelegate)composeViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_composeViewDelegate);

  return WeakRetained;
}

@end