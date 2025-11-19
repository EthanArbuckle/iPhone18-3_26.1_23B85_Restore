@interface PKTextInputDebugRadarEntryCell
- (PKTextInputDebugRadarEntryCell)initWithFrame:(CGRect)a3;
- (PKTextInputDebugRadarEntryCellDelegate)delegate;
- (id)_attributedResultTextWithReferenceString:(id)a3 referenceStringOffset:(int64_t)a4 recognitionResult:(id)a5 affectedRange:(_NSRange)a6 resultType:(int64_t)a7 contentLength:(int64_t)a8;
- (id)_createIncludedButton;
- (id)_createIntendedField;
- (void)_handleIncludedButton;
- (void)_handleIntendedFieldChanged;
- (void)_setIncludedEntry:(BOOL)a3 notifyDelegate:(BOOL)a4;
- (void)_setIntendedText:(id)a3 notifyDelegate:(BOOL)a4;
- (void)_setupViews;
- (void)_updateBorderView;
- (void)_updateDrawingView;
- (void)_updateIncludedButton;
- (void)_updateIntendedTextField;
- (void)_updateResultTextLabel;
- (void)setIncludedEntry:(BOOL)a3;
- (void)setIntendedText:(id)a3;
- (void)setLogEntry:(id)a3 contentLevel:(int64_t)a4;
@end

@implementation PKTextInputDebugRadarEntryCell

- (PKTextInputDebugRadarEntryCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKTextInputDebugRadarEntryCell;
  v3 = [(PKTextInputDebugRadarEntryCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKTextInputDebugRadarEntryCell *)v3 _setupViews];
  }

  return v4;
}

- (void)setLogEntry:(id)a3 contentLevel:(int64_t)a4
{
  v7 = a3;
  if (*&self->_logEntry != __PAIR128__(a4, v7))
  {
    v8 = v7;
    objc_storeStrong(&self->_logEntry, a3);
    self->_contentLevel = a4;
    [(PKTextInputDebugRadarEntryCell *)self _updateDrawingView];
    [(PKTextInputDebugRadarEntryCell *)self _updateResultTextLabel];
    v7 = v8;
  }
}

- (void)setIntendedText:(id)a3
{
  if (self->_intendedText != a3)
  {
    [PKTextInputDebugRadarEntryCell _setIntendedText:"_setIntendedText:notifyDelegate:" notifyDelegate:?];

    [(PKTextInputDebugRadarEntryCell *)self _updateIntendedTextField];
  }
}

- (void)_setIntendedText:(id)a3 notifyDelegate:(BOOL)a4
{
  v4 = a4;
  v16 = self->_intendedText;
  v7 = [a3 copy];
  intendedText = self->_intendedText;
  self->_intendedText = v7;

  v9 = v16;
  if (v4)
  {
    v10 = self->_intendedText;
    v11 = v16;
    v12 = v10;
    v13 = v12;
    if (v11 == v12)
    {

LABEL_12:
      v9 = v16;
      goto LABEL_13;
    }

    if (v11)
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
      v11 = [(PKTextInputDebugRadarEntryCell *)self delegate];
      [(NSString *)v11 entryCellIntendedTextDidChange:self];
      goto LABEL_12;
    }

    v15 = [(NSString *)v11 isEqualToString:v12];

    v9 = v16;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
}

- (void)setIncludedEntry:(BOOL)a3
{
  if (self->_includedEntry != a3)
  {
    [PKTextInputDebugRadarEntryCell _setIncludedEntry:"_setIncludedEntry:notifyDelegate:" notifyDelegate:?];
  }
}

- (void)_setIncludedEntry:(BOOL)a3 notifyDelegate:(BOOL)a4
{
  v4 = a4;
  self->_includedEntry = a3;
  [(PKTextInputDebugRadarEntryCell *)self _updateIncludedButton];
  [(PKTextInputDebugRadarEntryCell *)self _updateBorderView];
  if (v4)
  {
    v6 = [(PKTextInputDebugRadarEntryCell *)self delegate];
    [v6 entryCellIncludedEntryDidChange:self];
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
  v7 = [(UIView *)v6 layer];
  [v7 setBorderWidth:1.0];

  v111 = v3;
  v8 = [v3 CGColor];
  v9 = [(UIView *)v6 layer];
  [v9 setBorderColor:v8];

  v10 = [(UIView *)v6 layer];
  [v10 setCornerRadius:12.0];

  v11 = [(PKTextInputDebugRadarEntryCell *)self _createIncludedButton];
  includedButton = self->__includedButton;
  self->__includedButton = v11;

  v13 = [(PKTextInputDebugRadarEntryCell *)self _createIntendedField];
  intendedResultField = self->__intendedResultField;
  self->__intendedResultField = v13;

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

  v32 = [MEMORY[0x1E69DC888] labelColor];
  [v28 setTextColor:v32];

  [v28 setAdjustsFontSizeToFitWidth:1];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v33) = 1148846080;
  [v28 setContentHuggingPriority:0 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [v28 setContentHuggingPriority:1 forAxis:v34];
  v35 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  [v35 addSubview:v6];

  [(UIView *)v6 addSubview:self->__drawingImageView];
  [(UIView *)v6 addSubview:self->__lineSeparator];
  [(UIView *)v6 addSubview:self->__resultTextLabel];
  [(UIView *)v6 addSubview:v28];
  [(UIView *)v6 addSubview:self->__intendedResultField];
  v36 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  [v36 addSubview:self->__includedButton];

  [(PKTextInputDebugRadarEntryCell *)self _updateIncludedButton];
  [(PKTextInputDebugRadarEntryCell *)self _updateBorderView];
  [(PKTextInputDebugRadarEntryCell *)self _updateIntendedTextField];
  v83 = MEMORY[0x1E696ACD8];
  v109 = [(UIView *)v6 topAnchor];
  v110 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  v108 = [v110 topAnchor];
  v107 = [v109 constraintEqualToAnchor:v108 constant:0.0];
  v112[0] = v107;
  v105 = [(UIView *)v6 bottomAnchor];
  v106 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  v104 = [v106 bottomAnchor];
  v103 = [v105 constraintEqualToAnchor:v104 constant:-20.0];
  v112[1] = v103;
  v101 = [(UIView *)v6 leadingAnchor];
  v102 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  v100 = [v102 leadingAnchor];
  v99 = [v101 constraintEqualToAnchor:v100];
  v112[2] = v99;
  v97 = [(UIView *)v6 trailingAnchor];
  v98 = [(PKTextInputDebugRadarEntryCell *)self contentView];
  v96 = [v98 trailingAnchor];
  v95 = [v97 constraintEqualToAnchor:v96];
  v112[3] = v95;
  v94 = [(UIImageView *)self->__drawingImageView topAnchor];
  v93 = [(UIView *)v6 topAnchor];
  v92 = [v94 constraintEqualToAnchor:v93 constant:10.0];
  v112[4] = v92;
  v91 = [(UIImageView *)self->__drawingImageView centerXAnchor];
  v90 = [(UIView *)v6 centerXAnchor];
  v89 = [v91 constraintEqualToAnchor:v90];
  v112[5] = v89;
  v88 = [(UIImageView *)self->__drawingImageView widthAnchor];
  v87 = [(UIView *)v6 widthAnchor];
  v86 = [v88 constraintLessThanOrEqualToAnchor:v87 multiplier:1.0 constant:-20.0];
  v112[6] = v86;
  v85 = [(UIView *)self->__lineSeparator topAnchor];
  v84 = [(UIImageView *)self->__drawingImageView bottomAnchor];
  v82 = [v85 constraintEqualToAnchor:v84 constant:15.0];
  v112[7] = v82;
  v81 = [(UIView *)self->__lineSeparator heightAnchor];
  v80 = [v81 constraintEqualToConstant:1.0];
  v112[8] = v80;
  v79 = [(UIView *)self->__lineSeparator leadingAnchor];
  v78 = [(UIView *)v6 leadingAnchor];
  v77 = [v79 constraintEqualToAnchor:v78 constant:10.0];
  v112[9] = v77;
  v76 = [(UIView *)self->__lineSeparator trailingAnchor];
  v75 = [(UIView *)v6 trailingAnchor];
  v74 = [v76 constraintEqualToAnchor:v75 constant:-10.0];
  v112[10] = v74;
  v73 = [(UILabel *)self->__resultTextLabel topAnchor];
  v72 = [(UIView *)self->__lineSeparator bottomAnchor];
  v71 = [v73 constraintEqualToAnchor:v72 constant:15.0];
  v112[11] = v71;
  v69 = [(UILabel *)self->__resultTextLabel centerXAnchor];
  v68 = [(UIView *)v6 centerXAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v112[12] = v67;
  v65 = [(UILabel *)self->__resultTextLabel widthAnchor];
  v64 = [(UIView *)v6 widthAnchor];
  v63 = [v65 constraintEqualToAnchor:v64 multiplier:1.0 constant:-20.0];
  v112[13] = v63;
  v62 = [v28 centerYAnchor];
  v61 = [(UITextField *)self->__intendedResultField centerYAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v112[14] = v60;
  v59 = [v28 leadingAnchor];
  v58 = [(UIButton *)self->__includedButton trailingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58 constant:30.0];
  v112[15] = v57;
  v70 = v28;
  v56 = [v28 trailingAnchor];
  v55 = [(UITextField *)self->__intendedResultField leadingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 constant:-5.0];
  v112[16] = v54;
  v53 = [(UITextField *)self->__intendedResultField topAnchor];
  v52 = [(UILabel *)self->__resultTextLabel bottomAnchor];
  v51 = [v53 constraintEqualToAnchor:v52 constant:20.0];
  v112[17] = v51;
  v50 = [(UITextField *)self->__intendedResultField bottomAnchor];
  v37 = v6;
  v49 = [(UIView *)v6 bottomAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:-10.0];
  v112[18] = v48;
  v38 = [(UITextField *)self->__intendedResultField trailingAnchor];
  v66 = v37;
  v39 = [(UIView *)v37 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-10.0];
  v112[19] = v40;
  v41 = [(UIButton *)self->__includedButton centerYAnchor];
  v42 = [v28 centerYAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  v112[20] = v43;
  v44 = [(UIButton *)self->__includedButton leadingAnchor];
  v45 = [(UIView *)v37 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:10.0];
  v112[21] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:22];
  [v83 activateConstraints:v47];
}

- (id)_createIncludedButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v5 = [v3 titleLabel];
  [v5 setFont:v4];

  v6 = [v3 layer];
  [v6 setBorderWidth:1.0];

  v7 = [v3 layer];
  [v7 setCornerRadius:12.0];

  [v3 setContentEdgeInsets:{4.5, 10.0, 4.5, 9.0}];
  [v3 setImageEdgeInsets:{0.0, -5.0, 0.0, 0.0}];
  [v3 setTitleEdgeInsets:{0.0, 1.0, 0.0, -1.0}];
  v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v8];

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
  v16 = [v3 titleLabel];
  v17 = [v16 font];
  v18 = [v15 configurationWithFont:v17];

  v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v18];
  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v18];
  [v3 setImage:v19 forState:0];
  [v3 setImage:v20 forState:4];
  v21 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v3 setTitleColor:v21 forState:0];

  v22 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v3 setTitleColor:v22 forState:4];

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
  v19 = [(PKTextInputDebugRadarEntryCell *)self logEntry];
  v3 = [v19 referenceSubstringWithTargetContentLevel:{-[PKTextInputDebugRadarEntryCell contentLevel](self, "contentLevel")}];
  v4 = [v19 inputTargetContentInfo];
  v5 = [v4 referenceSubstringRange];

  v6 = [v19 inputTargetContentInfo];
  v7 = [v6 textContentLength];

  v8 = [v19 resultAffectedRange];
  v10 = v9;
  v11 = [v19 resultCommittedText];
  v12 = v11;
  v13 = &stru_1F476BD20;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v15 = -[PKTextInputDebugRadarEntryCell _attributedResultTextWithReferenceString:referenceStringOffset:recognitionResult:affectedRange:resultType:contentLength:](self, "_attributedResultTextWithReferenceString:referenceStringOffset:recognitionResult:affectedRange:resultType:contentLength:", v3, v5, v14, v8, v10, [v19 resultType], v7);

  v16 = [v15 length] < 0x14;
  v17 = [(PKTextInputDebugRadarEntryCell *)self _resultTextLabel];
  [v17 setTextAlignment:v16];

  v18 = [(PKTextInputDebugRadarEntryCell *)self _resultTextLabel];
  [v18 setAttributedText:v15];
}

- (void)_updateDrawingView
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [(PKTextInputDebugRadarEntryCell *)self logEntry];
  v4 = [v3 inputDrawing];

  if (v4)
  {
    v5 = +[PKMetalUtility defaultDevice];
    if (v5)
    {
      v6 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:v5];
      v7 = [(PKMetalResourceHandler *)v6 strokeRenderCache];
      [(PKLRUCache *)v7 removeAllObjects];
    }

    v8 = v4;
    v9 = [(PKTextInputDebugRadarEntryCell *)self logEntry];
    v10 = [v9 tokenizedTextResult];

    if (v10)
    {
      v40 = v5;
      v41 = v4;
      v11 = [(PKTextInputDebugRadarEntryCell *)self logEntry];
      v12 = [v11 resultCommittedTokenColumnCount];

      v13 = [(PKTextInputDebugRadarEntryCell *)self logEntry];
      v14 = [v13 tokenizedTextResult];
      v15 = [v14 strokeIndexesForColumnsInRange:{0, v12}];

      v16 = MEMORY[0x1E695DF70];
      v17 = [(PKDrawing *)v8 strokes];
      v18 = [v16 arrayWithCapacity:{objc_msgSend(v17, "count")}];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v19 = [(PKDrawing *)v8 strokes];
      v20 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v42 + 1) + 8 * i);
            if ([v15 containsIndex:v22])
            {
              [v18 addObject:v25];
            }

            ++v22;
          }

          v21 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v21);
      }

      v26 = [[PKDrawing alloc] initWithStrokes:v18];
      v8 = v26;
      v5 = v40;
      v4 = v41;
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

  v32 = [(PKTextInputDebugRadarEntryCell *)self _drawingImageView];
  [v32 setImage:v27];
  v33 = [(PKTextInputDebugRadarEntryCell *)self _drawingViewAspectRatioConstraint];

  if (v33)
  {
    v34 = [(PKTextInputDebugRadarEntryCell *)self _drawingViewAspectRatioConstraint];
    [v32 removeConstraint:v34];
  }

  if (v29 <= 0.0)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v31 / v29;
  }

  v36 = [v32 heightAnchor];
  v37 = [v32 widthAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 multiplier:v35];
  [(PKTextInputDebugRadarEntryCell *)self set_drawingViewAspectRatioConstraint:v38];

  v39 = [(PKTextInputDebugRadarEntryCell *)self _drawingViewAspectRatioConstraint];
  [v39 setActive:1];
}

- (void)_updateBorderView
{
  v3 = [(PKTextInputDebugRadarEntryCell *)self includedEntry];
  v4 = [(PKTextInputDebugRadarEntryCell *)self _borderView];
  v5 = v4;
  if (v3)
  {
    [v4 setAlpha:1.0];

    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [v4 setAlpha:0.3];

    [MEMORY[0x1E69DC888] systemGray4Color];
  }
  v7 = ;
  v6 = [(PKTextInputDebugRadarEntryCell *)self _borderView];
  [v6 setBackgroundColor:v7];
}

- (void)_updateIncludedButton
{
  v8 = [(PKTextInputDebugRadarEntryCell *)self _includedButton];
  if ([(PKTextInputDebugRadarEntryCell *)self includedEntry])
  {
    v3 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v8 setTintColor:v3];

    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] systemGrayColor];
    [v8 setTintColor:v4];

    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v5 = ;
  v6 = [v5 CGColor];
  v7 = [v8 layer];
  [v7 setBorderColor:v6];

  [v8 setSelected:{-[PKTextInputDebugRadarEntryCell includedEntry](self, "includedEntry")}];
}

- (void)_updateIntendedTextField
{
  v4 = [(PKTextInputDebugRadarEntryCell *)self intendedText];
  v3 = [(PKTextInputDebugRadarEntryCell *)self _intendedResultField];
  [v3 setText:v4];
}

- (void)_handleIntendedFieldChanged
{
  v4 = [(PKTextInputDebugRadarEntryCell *)self _intendedResultField];
  v3 = [v4 text];
  [(PKTextInputDebugRadarEntryCell *)self _setIntendedText:v3 notifyDelegate:1];
}

- (void)_handleIncludedButton
{
  v3 = [(PKTextInputDebugRadarEntryCell *)self includedEntry]^ 1;

  [(PKTextInputDebugRadarEntryCell *)self _setIncludedEntry:v3 notifyDelegate:1];
}

- (id)_attributedResultTextWithReferenceString:(id)a3 referenceStringOffset:(int64_t)a4 recognitionResult:(id)a5 affectedRange:(_NSRange)a6 resultType:(int64_t)a7 contentLength:(int64_t)a8
{
  length = a6.length;
  location = a6.location;
  v47 = self;
  v75[2] = *MEMORY[0x1E69E9840];
  v49 = a3;
  v9 = a5;
  v10 = [v49 length];
  v57 = v9;
  v11 = [v9 length] + v10;
  if (v11 >= 0x12C)
  {
    v11 = 300;
  }

  v12 = ceil(cos(v11 * 0.01) * 10.0 + 24.0);
  v13 = [MEMORY[0x1E69DB878] systemFontOfSize:v12 weight:*MEMORY[0x1E69DB978]];
  v14 = [MEMORY[0x1E69DB878] systemFontOfSize:v12 weight:*MEMORY[0x1E69DB970]];
  v73 = *MEMORY[0x1E69DB650];
  v15 = v73;
  v16 = [MEMORY[0x1E69DC888] darkGrayColor];
  v74 = *MEMORY[0x1E69DB648];
  v17 = v74;
  v75[0] = v16;
  v53 = v13;
  v75[1] = v13;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v73 count:2];

  v71[0] = v15;
  v18 = [MEMORY[0x1E69DC888] systemOrangeColor];
  v71[1] = v17;
  v72[0] = v18;
  v72[1] = v14;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];

  v67 = v15;
  v19 = [MEMORY[0x1E69DC888] systemOrangeColor];
  v70[0] = v19;
  v68 = *MEMORY[0x1E69DB600];
  v20 = v68;
  v21 = [MEMORY[0x1E69DC888] systemOrangeColor];
  v22 = [v21 colorWithAlphaComponent:0.5];
  v69 = v17;
  v70[1] = v22;
  v70[2] = v14;
  v52 = v14;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v67 count:3];

  v23 = *MEMORY[0x1E69DB6B8];
  v66[0] = &unk_1F47C1238;
  v64[0] = v23;
  v64[1] = v15;
  v24 = [MEMORY[0x1E69DC888] systemGray4Color];
  v65 = *MEMORY[0x1E69DB610];
  v25 = v65;
  v66[1] = v24;
  v66[2] = &unk_1F47C1250;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v64 count:3];

  v62 = v20;
  v26 = [MEMORY[0x1E69DC888] systemBlueColor];
  v27 = [v26 colorWithAlphaComponent:0.4];
  v63 = v27;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];

  v61[0] = &unk_1F47C1238;
  v60[0] = v23;
  v60[1] = v15;
  v28 = [MEMORY[0x1E69DC888] systemRedColor];
  v60[2] = v25;
  v61[1] = v28;
  v61[2] = &unk_1F47C1250;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];

  v30 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v49 attributes:v48];
  v31 = a4 == 0x7FFFFFFFFFFFFFFFLL || location == 0x7FFFFFFFFFFFFFFFLL;
  v32 = location - a4;
  if (v31)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = location - a4;
  }

  if (v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = length;
  }

  if (!v31 && v32 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v35 = [(PKTextInputDebugRadarEntryCell *)v47 logEntry];
    v36 = [v35 resultType];

    if (v36 <= 5)
    {
      if ((v36 - 2) < 4)
      {
        v37 = v30;
        v38 = v59;
LABEL_17:
        [v37 addAttributes:v38 range:{v33, v34, v47}];
        goto LABEL_29;
      }

      if (v36 != 1)
      {
        goto LABEL_29;
      }

      if (length)
      {
        [v30 addAttributes:v54 range:{v33, v34}];
      }

      v39 = objc_alloc(MEMORY[0x1E696AAB0]);
      v41 = v56;
      v40 = v57;
LABEL_28:
      v42 = [v39 initWithString:v40 attributes:{v41, v47}];
      [v30 insertAttributedString:v42 atIndex:v32 + length];

      goto LABEL_29;
    }

    if (v36 == 6)
    {
      v37 = v30;
      v38 = v29;
      goto LABEL_17;
    }

    if (v36 == 7)
    {
      if (length)
      {
        [v30 addAttributes:v29 range:{v33, v34}];
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
  v43 = [v49 length];
  if ((a4 - 1) <= 0x7FFFFFFFFFFFFFFDLL && v43)
  {
    v44 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"…" attributes:v48];
    [v30 insertAttributedString:v44 atIndex:0];
  }

  else if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if ([v49 length] + a4 < a8)
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