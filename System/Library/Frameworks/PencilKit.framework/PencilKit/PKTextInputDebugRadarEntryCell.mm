@interface PKTextInputDebugRadarEntryCell
- (PKTextInputDebugRadarEntryCell)initWithFrame:(CGRect)frame;
- (PKTextInputDebugRadarEntryCellDelegate)delegate;
- (id)_attributedResultTextWithReferenceString:(id)string referenceStringOffset:(int64_t)offset recognitionResult:(id)result affectedRange:(_NSRange)range resultType:(int64_t)type contentLength:(int64_t)length;
- (id)_createIncludedButton;
- (id)_createIntendedField;
- (void)_handleIncludedButton;
- (void)_handleIntendedFieldChanged;
- (void)_setIncludedEntry:(BOOL)entry notifyDelegate:(BOOL)delegate;
- (void)_setIntendedText:(id)text notifyDelegate:(BOOL)delegate;
- (void)_setupViews;
- (void)_updateBorderView;
- (void)_updateDrawingView;
- (void)_updateIncludedButton;
- (void)_updateIntendedTextField;
- (void)_updateResultTextLabel;
- (void)setIncludedEntry:(BOOL)entry;
- (void)setIntendedText:(id)text;
- (void)setLogEntry:(id)entry contentLevel:(int64_t)level;
@end

@implementation PKTextInputDebugRadarEntryCell

- (PKTextInputDebugRadarEntryCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKTextInputDebugRadarEntryCell;
  v3 = [(PKTextInputDebugRadarEntryCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKTextInputDebugRadarEntryCell *)v3 _setupViews];
  }

  return v4;
}

- (void)setLogEntry:(id)entry contentLevel:(int64_t)level
{
  entryCopy = entry;
  if (*&self->_logEntry != __PAIR128__(level, entryCopy))
  {
    v8 = entryCopy;
    objc_storeStrong(&self->_logEntry, entry);
    self->_contentLevel = level;
    [(PKTextInputDebugRadarEntryCell *)self _updateDrawingView];
    [(PKTextInputDebugRadarEntryCell *)self _updateResultTextLabel];
    entryCopy = v8;
  }
}

- (void)setIntendedText:(id)text
{
  if (self->_intendedText != text)
  {
    [PKTextInputDebugRadarEntryCell _setIntendedText:"_setIntendedText:notifyDelegate:" notifyDelegate:?];

    [(PKTextInputDebugRadarEntryCell *)self _updateIntendedTextField];
  }
}

- (void)_setIntendedText:(id)text notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v16 = self->_intendedText;
  v7 = [text copy];
  intendedText = self->_intendedText;
  self->_intendedText = v7;

  v9 = v16;
  if (delegateCopy)
  {
    v10 = self->_intendedText;
    delegate = v16;
    v12 = v10;
    v13 = v12;
    if (delegate == v12)
    {

LABEL_12:
      v9 = v16;
      goto LABEL_13;
    }

    if (delegate)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {

LABEL_11:
      delegate = [(PKTextInputDebugRadarEntryCell *)self delegate];
      [(NSString *)delegate entryCellIntendedTextDidChange:self];
      goto LABEL_12;
    }

    v15 = [(NSString *)delegate isEqualToString:v12];

    v9 = v16;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
}

- (void)setIncludedEntry:(BOOL)entry
{
  if (self->_includedEntry != entry)
  {
    [PKTextInputDebugRadarEntryCell _setIncludedEntry:"_setIncludedEntry:notifyDelegate:" notifyDelegate:?];
  }
}

- (void)_setIncludedEntry:(BOOL)entry notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  self->_includedEntry = entry;
  [(PKTextInputDebugRadarEntryCell *)self _updateIncludedButton];
  [(PKTextInputDebugRadarEntryCell *)self _updateBorderView];
  if (delegateCopy)
  {
    delegate = [(PKTextInputDebugRadarEntryCell *)self delegate];
    [delegate entryCellIncludedEntryDidChange:self];
  }
}

- (void)_setupViews
{
  v112[22] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.7 alpha:1.0];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  borderView = self->__borderView;
  self->__borderView = v4;

  [(UIView *)self->__borderView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = self->__borderView;
  layer = [(UIView *)v6 layer];
  [layer setBorderWidth:1.0];

  v111 = v3;
  cGColor = [v3 CGColor];
  layer2 = [(UIView *)v6 layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [(UIView *)v6 layer];
  [layer3 setCornerRadius:12.0];

  _createIncludedButton = [(PKTextInputDebugRadarEntryCell *)self _createIncludedButton];
  includedButton = self->__includedButton;
  self->__includedButton = _createIncludedButton;

  _createIntendedField = [(PKTextInputDebugRadarEntryCell *)self _createIntendedField];
  intendedResultField = self->__intendedResultField;
  self->__intendedResultField = _createIntendedField;

  v15 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v18 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  v20 = [v15 initWithFrame:{*MEMORY[0x1E695F058], v17, v18, v19}];
  drawingImageView = self->__drawingImageView;
  self->__drawingImageView = v20;

  [(UIImageView *)self->__drawingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = objc_alloc_init(MEMORY[0x1E69DD250]);
  lineSeparator = self->__lineSeparator;
  self->__lineSeparator = v22;

  [(UIView *)self->__lineSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->__lineSeparator setBackgroundColor:v3];
  v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v16, v17, v18, v19}];
  resultTextLabel = self->__resultTextLabel;
  self->__resultTextLabel = v24;

  [(UILabel *)self->__resultTextLabel setLineBreakMode:0];
  [(UILabel *)self->__resultTextLabel setNumberOfLines:0];
  [(UILabel *)self->__resultTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v26) = 1148846080;
  [(UILabel *)self->__resultTextLabel setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [(UILabel *)self->__resultTextLabel setContentHuggingPriority:1 forAxis:v27];
  v28 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v16, v17, v18, v19}];
  v29 = _PencilKitBundle();
  v30 = [v29 localizedStringForKey:@"Expected:" value:@"Expected:" table:@"Localizable"];
  [v28 setText:v30];

  v31 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  [v28 setFont:v31];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v28 setTextColor:labelColor];

  [v28 setAdjustsFontSizeToFitWidth:1];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v33) = 1148846080;
  [v28 setContentHuggingPriority:0 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [v28 setContentHuggingPriority:1 forAxis:v34];
  contentView = [(PKTextInputDebugRadarEntryCell *)self contentView];
  [contentView addSubview:v6];

  [(UIView *)v6 addSubview:self->__drawingImageView];
  [(UIView *)v6 addSubview:self->__lineSeparator];
  [(UIView *)v6 addSubview:self->__resultTextLabel];
  [(UIView *)v6 addSubview:v28];
  [(UIView *)v6 addSubview:self->__intendedResultField];
  contentView2 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  [contentView2 addSubview:self->__includedButton];

  [(PKTextInputDebugRadarEntryCell *)self _updateIncludedButton];
  [(PKTextInputDebugRadarEntryCell *)self _updateBorderView];
  [(PKTextInputDebugRadarEntryCell *)self _updateIntendedTextField];
  v83 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIView *)v6 topAnchor];
  contentView3 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v107 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v112[0] = v107;
  bottomAnchor = [(UIView *)v6 bottomAnchor];
  contentView4 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v103 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
  v112[1] = v103;
  leadingAnchor = [(UIView *)v6 leadingAnchor];
  contentView5 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  leadingAnchor2 = [contentView5 leadingAnchor];
  v99 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v112[2] = v99;
  trailingAnchor = [(UIView *)v6 trailingAnchor];
  contentView6 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  trailingAnchor2 = [contentView6 trailingAnchor];
  v95 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v112[3] = v95;
  topAnchor3 = [(UIImageView *)self->__drawingImageView topAnchor];
  topAnchor4 = [(UIView *)v6 topAnchor];
  v92 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
  v112[4] = v92;
  centerXAnchor = [(UIImageView *)self->__drawingImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)v6 centerXAnchor];
  v89 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v112[5] = v89;
  widthAnchor = [(UIImageView *)self->__drawingImageView widthAnchor];
  widthAnchor2 = [(UIView *)v6 widthAnchor];
  v86 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:1.0 constant:-20.0];
  v112[6] = v86;
  topAnchor5 = [(UIView *)self->__lineSeparator topAnchor];
  bottomAnchor3 = [(UIImageView *)self->__drawingImageView bottomAnchor];
  v82 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:15.0];
  v112[7] = v82;
  heightAnchor = [(UIView *)self->__lineSeparator heightAnchor];
  v80 = [heightAnchor constraintEqualToConstant:1.0];
  v112[8] = v80;
  leadingAnchor3 = [(UIView *)self->__lineSeparator leadingAnchor];
  leadingAnchor4 = [(UIView *)v6 leadingAnchor];
  v77 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
  v112[9] = v77;
  trailingAnchor3 = [(UIView *)self->__lineSeparator trailingAnchor];
  trailingAnchor4 = [(UIView *)v6 trailingAnchor];
  v74 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
  v112[10] = v74;
  topAnchor6 = [(UILabel *)self->__resultTextLabel topAnchor];
  bottomAnchor4 = [(UIView *)self->__lineSeparator bottomAnchor];
  v71 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:15.0];
  v112[11] = v71;
  centerXAnchor3 = [(UILabel *)self->__resultTextLabel centerXAnchor];
  centerXAnchor4 = [(UIView *)v6 centerXAnchor];
  v67 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v112[12] = v67;
  widthAnchor3 = [(UILabel *)self->__resultTextLabel widthAnchor];
  widthAnchor4 = [(UIView *)v6 widthAnchor];
  v63 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0 constant:-20.0];
  v112[13] = v63;
  centerYAnchor = [v28 centerYAnchor];
  centerYAnchor2 = [(UITextField *)self->__intendedResultField centerYAnchor];
  v60 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v112[14] = v60;
  leadingAnchor5 = [v28 leadingAnchor];
  trailingAnchor5 = [(UIButton *)self->__includedButton trailingAnchor];
  v57 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:30.0];
  v112[15] = v57;
  v70 = v28;
  trailingAnchor6 = [v28 trailingAnchor];
  leadingAnchor6 = [(UITextField *)self->__intendedResultField leadingAnchor];
  v54 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor6 constant:-5.0];
  v112[16] = v54;
  topAnchor7 = [(UITextField *)self->__intendedResultField topAnchor];
  bottomAnchor5 = [(UILabel *)self->__resultTextLabel bottomAnchor];
  v51 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:20.0];
  v112[17] = v51;
  bottomAnchor6 = [(UITextField *)self->__intendedResultField bottomAnchor];
  v37 = v6;
  bottomAnchor7 = [(UIView *)v6 bottomAnchor];
  v48 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-10.0];
  v112[18] = v48;
  trailingAnchor7 = [(UITextField *)self->__intendedResultField trailingAnchor];
  v66 = v37;
  trailingAnchor8 = [(UIView *)v37 trailingAnchor];
  v40 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-10.0];
  v112[19] = v40;
  centerYAnchor3 = [(UIButton *)self->__includedButton centerYAnchor];
  centerYAnchor4 = [v28 centerYAnchor];
  v43 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v112[20] = v43;
  leadingAnchor7 = [(UIButton *)self->__includedButton leadingAnchor];
  leadingAnchor8 = [(UIView *)v37 leadingAnchor];
  v46 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:10.0];
  v112[21] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:22];
  [v83 activateConstraints:v47];
}

- (id)_createIncludedButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:v4];

  layer = [v3 layer];
  [layer setBorderWidth:1.0];

  layer2 = [v3 layer];
  [layer2 setCornerRadius:12.0];

  [v3 setContentEdgeInsets:{4.5, 10.0, 4.5, 9.0}];
  [v3 setImageEdgeInsets:{0.0, -5.0, 0.0, 0.0}];
  [v3 setTitleEdgeInsets:{0.0, 1.0, 0.0, -1.0}];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:systemBackgroundColor];

  LODWORD(v9) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v10];
  v11 = _PencilKitBundle();
  v12 = [v11 localizedStringForKey:@"Excluded" value:@"Excluded" table:@"Localizable"];
  [v3 setTitle:v12 forState:0];

  v13 = _PencilKitBundle();
  v14 = [v13 localizedStringForKey:@"Included" value:@"Included" table:@"Localizable"];
  [v3 setTitle:v14 forState:4];

  v15 = MEMORY[0x1E69DCAD8];
  titleLabel2 = [v3 titleLabel];
  font = [titleLabel2 font];
  v18 = [v15 configurationWithFont:font];

  v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v18];
  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v18];
  [v3 setImage:v19 forState:0];
  [v3 setImage:v20 forState:4];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [v3 setTitleColor:systemGrayColor forState:0];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v3 setTitleColor:systemBlueColor forState:4];

  [v3 addTarget:self action:sel__handleIncludedButton forControlEvents:64];

  return v3;
}

- (id)_createIntendedField
{
  v3 = objc_alloc(MEMORY[0x1E69DD0B0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  [v4 setFont:v5];

  [v4 setBorderStyle:3];
  [v4 setAutocapitalizationType:0];
  [v4 setAutocorrectionType:0];
  [v4 setSmartQuotesType:1];
  [v4 setSmartDashesType:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addTarget:self action:sel__handleIntendedFieldChanged forControlEvents:0x20000];

  return v4;
}

- (void)_updateResultTextLabel
{
  logEntry = [(PKTextInputDebugRadarEntryCell *)self logEntry];
  v3 = [logEntry referenceSubstringWithTargetContentLevel:{-[PKTextInputDebugRadarEntryCell contentLevel](self, "contentLevel")}];
  inputTargetContentInfo = [logEntry inputTargetContentInfo];
  referenceSubstringRange = [inputTargetContentInfo referenceSubstringRange];

  inputTargetContentInfo2 = [logEntry inputTargetContentInfo];
  textContentLength = [inputTargetContentInfo2 textContentLength];

  resultAffectedRange = [logEntry resultAffectedRange];
  v10 = v9;
  resultCommittedText = [logEntry resultCommittedText];
  v12 = resultCommittedText;
  v13 = &stru_1F476BD20;
  if (resultCommittedText)
  {
    v13 = resultCommittedText;
  }

  v14 = v13;

  v15 = -[PKTextInputDebugRadarEntryCell _attributedResultTextWithReferenceString:referenceStringOffset:recognitionResult:affectedRange:resultType:contentLength:](self, "_attributedResultTextWithReferenceString:referenceStringOffset:recognitionResult:affectedRange:resultType:contentLength:", v3, referenceSubstringRange, v14, resultAffectedRange, v10, [logEntry resultType], textContentLength);

  v16 = [v15 length] < 0x14;
  _resultTextLabel = [(PKTextInputDebugRadarEntryCell *)self _resultTextLabel];
  [_resultTextLabel setTextAlignment:v16];

  _resultTextLabel2 = [(PKTextInputDebugRadarEntryCell *)self _resultTextLabel];
  [_resultTextLabel2 setAttributedText:v15];
}

- (void)_updateDrawingView
{
  v47 = *MEMORY[0x1E69E9840];
  logEntry = [(PKTextInputDebugRadarEntryCell *)self logEntry];
  inputDrawing = [logEntry inputDrawing];

  if (inputDrawing)
  {
    v5 = +[PKMetalUtility defaultDevice];
    if (v5)
    {
      v6 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:v5];
      strokeRenderCache = [(PKMetalResourceHandler *)v6 strokeRenderCache];
      [(PKLRUCache *)strokeRenderCache removeAllObjects];
    }

    v8 = inputDrawing;
    logEntry2 = [(PKTextInputDebugRadarEntryCell *)self logEntry];
    tokenizedTextResult = [logEntry2 tokenizedTextResult];

    if (tokenizedTextResult)
    {
      v40 = v5;
      v41 = inputDrawing;
      logEntry3 = [(PKTextInputDebugRadarEntryCell *)self logEntry];
      resultCommittedTokenColumnCount = [logEntry3 resultCommittedTokenColumnCount];

      logEntry4 = [(PKTextInputDebugRadarEntryCell *)self logEntry];
      tokenizedTextResult2 = [logEntry4 tokenizedTextResult];
      v15 = [tokenizedTextResult2 strokeIndexesForColumnsInRange:{0, resultCommittedTokenColumnCount}];

      v16 = MEMORY[0x1E695DF70];
      strokes = [(PKDrawing *)v8 strokes];
      v18 = [v16 arrayWithCapacity:{objc_msgSend(strokes, "count")}];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      strokes2 = [(PKDrawing *)v8 strokes];
      v20 = [strokes2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = 0;
        v23 = *v43;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v43 != v23)
            {
              objc_enumerationMutation(strokes2);
            }

            v25 = *(*(&v42 + 1) + 8 * i);
            if ([v15 containsIndex:v22])
            {
              [v18 addObject:v25];
            }

            ++v22;
          }

          v21 = [strokes2 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v21);
      }

      v26 = [[PKDrawing alloc] initWithStrokes:v18];
      v8 = v26;
      v5 = v40;
      inputDrawing = v41;
    }

    [(PKDrawing *)v8 bounds];
    v27 = [PKDrawing imageFromRect:v8 scale:"imageFromRect:scale:"];
    [(PKDrawing *)v8 bounds];
    v29 = v28;
    v31 = v30;
  }

  else
  {
    v27 = 0;
    v29 = *MEMORY[0x1E695F060];
    v31 = *(MEMORY[0x1E695F060] + 8);
  }

  _drawingImageView = [(PKTextInputDebugRadarEntryCell *)self _drawingImageView];
  [_drawingImageView setImage:v27];
  _drawingViewAspectRatioConstraint = [(PKTextInputDebugRadarEntryCell *)self _drawingViewAspectRatioConstraint];

  if (_drawingViewAspectRatioConstraint)
  {
    _drawingViewAspectRatioConstraint2 = [(PKTextInputDebugRadarEntryCell *)self _drawingViewAspectRatioConstraint];
    [_drawingImageView removeConstraint:_drawingViewAspectRatioConstraint2];
  }

  if (v29 <= 0.0)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v31 / v29;
  }

  heightAnchor = [_drawingImageView heightAnchor];
  widthAnchor = [_drawingImageView widthAnchor];
  v38 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v35];
  [(PKTextInputDebugRadarEntryCell *)self set_drawingViewAspectRatioConstraint:v38];

  _drawingViewAspectRatioConstraint3 = [(PKTextInputDebugRadarEntryCell *)self _drawingViewAspectRatioConstraint];
  [_drawingViewAspectRatioConstraint3 setActive:1];
}

- (void)_updateBorderView
{
  includedEntry = [(PKTextInputDebugRadarEntryCell *)self includedEntry];
  _borderView = [(PKTextInputDebugRadarEntryCell *)self _borderView];
  v5 = _borderView;
  if (includedEntry)
  {
    [_borderView setAlpha:1.0];

    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [_borderView setAlpha:0.3];

    [MEMORY[0x1E69DC888] systemGray4Color];
  }
  v7 = ;
  _borderView2 = [(PKTextInputDebugRadarEntryCell *)self _borderView];
  [_borderView2 setBackgroundColor:v7];
}

- (void)_updateIncludedButton
{
  _includedButton = [(PKTextInputDebugRadarEntryCell *)self _includedButton];
  if ([(PKTextInputDebugRadarEntryCell *)self includedEntry])
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [_includedButton setTintColor:systemBlueColor];

    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [_includedButton setTintColor:systemGrayColor];

    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v5 = ;
  cGColor = [v5 CGColor];
  layer = [_includedButton layer];
  [layer setBorderColor:cGColor];

  [_includedButton setSelected:{-[PKTextInputDebugRadarEntryCell includedEntry](self, "includedEntry")}];
}

- (void)_updateIntendedTextField
{
  intendedText = [(PKTextInputDebugRadarEntryCell *)self intendedText];
  _intendedResultField = [(PKTextInputDebugRadarEntryCell *)self _intendedResultField];
  [_intendedResultField setText:intendedText];
}

- (void)_handleIntendedFieldChanged
{
  _intendedResultField = [(PKTextInputDebugRadarEntryCell *)self _intendedResultField];
  text = [_intendedResultField text];
  [(PKTextInputDebugRadarEntryCell *)self _setIntendedText:text notifyDelegate:1];
}

- (void)_handleIncludedButton
{
  v3 = [(PKTextInputDebugRadarEntryCell *)self includedEntry]^ 1;

  [(PKTextInputDebugRadarEntryCell *)self _setIncludedEntry:v3 notifyDelegate:1];
}

- (id)_attributedResultTextWithReferenceString:(id)string referenceStringOffset:(int64_t)offset recognitionResult:(id)result affectedRange:(_NSRange)range resultType:(int64_t)type contentLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v75[2] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  resultCopy = result;
  v10 = [stringCopy length];
  v57 = resultCopy;
  v11 = [resultCopy length] + v10;
  if (v11 >= 0x12C)
  {
    v11 = 300;
  }

  v12 = ceil(cos(v11 * 0.01) * 10.0 + 24.0);
  v13 = [MEMORY[0x1E69DB878] systemFontOfSize:v12 weight:*MEMORY[0x1E69DB978]];
  v14 = [MEMORY[0x1E69DB878] systemFontOfSize:v12 weight:*MEMORY[0x1E69DB970]];
  v73 = *MEMORY[0x1E69DB650];
  v15 = v73;
  darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
  v74 = *MEMORY[0x1E69DB648];
  v17 = v74;
  v75[0] = darkGrayColor;
  v53 = v13;
  v75[1] = v13;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v73 count:2];

  v71[0] = v15;
  systemOrangeColor = [MEMORY[0x1E69DC888] systemOrangeColor];
  v71[1] = v17;
  v72[0] = systemOrangeColor;
  v72[1] = v14;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];

  v67 = v15;
  systemOrangeColor2 = [MEMORY[0x1E69DC888] systemOrangeColor];
  v70[0] = systemOrangeColor2;
  v68 = *MEMORY[0x1E69DB600];
  v20 = v68;
  systemOrangeColor3 = [MEMORY[0x1E69DC888] systemOrangeColor];
  v22 = [systemOrangeColor3 colorWithAlphaComponent:0.5];
  v69 = v17;
  v70[1] = v22;
  v70[2] = v14;
  v52 = v14;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v67 count:3];

  v23 = *MEMORY[0x1E69DB6B8];
  v66[0] = &unk_1F47C1238;
  v64[0] = v23;
  v64[1] = v15;
  systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
  v65 = *MEMORY[0x1E69DB610];
  v25 = v65;
  v66[1] = systemGray4Color;
  v66[2] = &unk_1F47C1250;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v64 count:3];

  v62 = v20;
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v27 = [systemBlueColor colorWithAlphaComponent:0.4];
  v63 = v27;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];

  v61[0] = &unk_1F47C1238;
  v60[0] = v23;
  v60[1] = v15;
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  v60[2] = v25;
  v61[1] = systemRedColor;
  v61[2] = &unk_1F47C1250;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];

  v30 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:stringCopy attributes:v48];
  v31 = offset == 0x7FFFFFFFFFFFFFFFLL || location == 0x7FFFFFFFFFFFFFFFLL;
  v32 = location - offset;
  if (v31)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = location - offset;
  }

  if (v31)
  {
    lengthCopy = 0;
  }

  else
  {
    lengthCopy = length;
  }

  if (!v31 && v32 != 0x7FFFFFFFFFFFFFFFLL)
  {
    logEntry = [(PKTextInputDebugRadarEntryCell *)selfCopy logEntry];
    resultType = [logEntry resultType];

    if (resultType <= 5)
    {
      if ((resultType - 2) < 4)
      {
        v37 = v30;
        v38 = v59;
LABEL_17:
        [v37 addAttributes:v38 range:{v33, lengthCopy, selfCopy}];
        goto LABEL_29;
      }

      if (resultType != 1)
      {
        goto LABEL_29;
      }

      if (length)
      {
        [v30 addAttributes:v54 range:{v33, lengthCopy}];
      }

      v39 = objc_alloc(MEMORY[0x1E696AAB0]);
      v41 = v56;
      v40 = v57;
LABEL_28:
      v42 = [v39 initWithString:v40 attributes:{v41, selfCopy}];
      [v30 insertAttributedString:v42 atIndex:v32 + length];

      goto LABEL_29;
    }

    if (resultType == 6)
    {
      v37 = v30;
      v38 = v29;
      goto LABEL_17;
    }

    if (resultType == 7)
    {
      if (length)
      {
        [v30 addAttributes:v29 range:{v33, lengthCopy}];
      }

      if ([v57 length])
      {
        v39 = objc_alloc(MEMORY[0x1E696AAB0]);
        v40 = v57;
        v41 = v55;
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  v43 = [stringCopy length];
  if ((offset - 1) <= 0x7FFFFFFFFFFFFFFDLL && v43)
  {
    v44 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"…" attributes:v48];
    [v30 insertAttributedString:v44 atIndex:0];
  }

  else if (offset == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if ([stringCopy length] + offset < length)
  {
    v45 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"…" attributes:v48];
    [v30 appendAttributedString:v45];
  }

LABEL_35:

  return v30;
}

- (PKTextInputDebugRadarEntryCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end