@interface FBAQuestionAnswerCell
- (BOOL)shouldAllowEditing;
- (FBABugFormEditorDelegate)bugFormEditorDelegate;
- (FBAQuestionAnswerCell)initWithCoder:(id)a3;
- (FBAQuestionAnswerCell)initWithFrame:(CGRect)a3;
- (FBAQuestionAnswerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (FBAQuestionCellTextView)answerTextView;
- (UILabel)questionLabel;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)awakeFromNib;
- (void)beginEditingQuestion;
- (void)commonInit;
- (void)endEditingQuestion;
- (void)hideErrorArrow;
- (void)sanitizeAnswer:(id)a3;
- (void)saveAnswer;
- (void)setAnswer:(id)a3;
- (void)setQuestion:(id)a3;
- (void)showErrorArrow;
- (void)updateErrorArrow;
@end

@implementation FBAQuestionAnswerCell

- (FBAQuestionAnswerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = FBAQuestionAnswerCell;
  v4 = [(FBAQuestionAnswerCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(FBAQuestionAnswerCell *)v4 commonInit];
  }

  return v5;
}

- (FBAQuestionAnswerCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FBAQuestionAnswerCell;
  v3 = [(FBAQuestionAnswerCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(FBAQuestionAnswerCell *)v3 commonInit];
  }

  return v4;
}

- (FBAQuestionAnswerCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = FBAQuestionAnswerCell;
  v3 = [(FBAQuestionAnswerCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FBAQuestionAnswerCell *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  self->_showError = 0;
  v3 = [UIImageView alloc];
  v4 = FBKSystemImageNameMissingQuestion;
  v5 = [UIImageSymbolConfiguration configurationWithWeight:7];
  v6 = [UIImage systemImageNamed:v4 withConfiguration:v5];
  v7 = [v3 initWithImage:v6];
  errorArrow = self->_errorArrow;
  self->_errorArrow = v7;

  [(UIImageView *)self->_errorArrow setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_errorArrow setContentMode:1];
  WeakRetained = objc_loadWeakRetained(&self->_answerTextView);
  v10 = [WeakRetained textContainer];
  [v10 setLineBreakMode:0];

  self->_hasPlaceholder = 1;
  self->_hasKeyboardFocus = 0;
  v11 = [(FBAQuestionAnswerCell *)self questionLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v13 setEditable:0];

  v14 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v14 setSelectable:0];

  v15 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v15 setUserInteractionEnabled:0];
}

- (void)awakeFromNib
{
  v9.receiver = self;
  v9.super_class = FBAQuestionAnswerCell;
  [(FBAQuestionAnswerCell *)&v9 awakeFromNib];
  [(FBAQuestionAnswerCell *)self updateErrorArrow];
  v3 = +[UIColor labelColor];
  v4 = [(FBAQuestionAnswerCell *)self questionLabel];
  [v4 setTextColor:v3];

  v5 = [(FBAQuestionAnswerCell *)self questionLabel];
  [v5 setIsAccessibilityElement:0];

  v6 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v6 setIsAccessibilityElement:0];

  v7 = +[UIColor systemRedColor];
  v8 = [(FBAQuestionAnswerCell *)self errorArrow];
  [v8 setTintColor:v7];

  [(FBAQuestionAnswerCell *)self setIsAccessibilityElement:1];
}

- (void)updateErrorArrow
{
  if (self->_showError)
  {
    [(FBAQuestionAnswerCell *)self showErrorArrow];
  }

  else
  {
    [(FBAQuestionAnswerCell *)self hideErrorArrow];
  }
}

- (void)showErrorArrow
{
  v3 = [(FBAQuestionAnswerCell *)self errorArrow];
  if (v3)
  {
    v31 = v3;
    v4 = [(FBAQuestionAnswerCell *)self errorArrow];
    v5 = [v4 superview];
    if (v5)
    {
    }

    else
    {
      v6 = [(FBAQuestionAnswerCell *)self questionLabel];

      if (v6)
      {
        v7 = [(FBAQuestionAnswerCell *)self contentView];
        v8 = [(FBAQuestionAnswerCell *)self errorArrow];
        [v7 addSubview:v8];

        v9 = +[NSMutableArray array];
        v36 = @"margin";
        [(FBAQuestionAnswerCell *)self separatorInset];
        v11 = v10;
        [(FBAQuestionAnswerCell *)self safeAreaInsets];
        v13 = [NSNumber numberWithDouble:v11 - v12];
        v37 = v13;
        v14 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v34[0] = @"arrow";
        v15 = [(FBAQuestionAnswerCell *)self errorArrow];
        v34[1] = @"q";
        v35[0] = v15;
        v16 = [(FBAQuestionAnswerCell *)self questionLabel];
        v35[1] = v16;
        v17 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
        v18 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-margin-[arrow(18)]-8-[q]", 0, v14, v17);

        [v9 addObjectsFromArray:v18];
        v32[0] = @"arrow";
        v19 = [(FBAQuestionAnswerCell *)self errorArrow];
        v32[1] = @"a";
        v33[0] = v19;
        v20 = [(FBAQuestionAnswerCell *)self answerTextView];
        v33[1] = v20;
        v21 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
        v22 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[arrow]-8-[a]", 0, 0, v21);

        v23 = [v22 firstObject];
        LODWORD(v24) = *"";
        [v23 setPriority:v24];

        [v9 addObjectsFromArray:v22];
        v25 = [(FBAQuestionAnswerCell *)self errorArrow];
        v26 = [NSLayoutConstraint constraintWithItem:v25 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:17.0];
        [v9 addObject:v26];

        v27 = [(FBAQuestionAnswerCell *)self errorArrow];
        v28 = [(FBAQuestionAnswerCell *)self contentView];
        v29 = [NSLayoutConstraint constraintWithItem:v27 attribute:10 relatedBy:0 toItem:v28 attribute:10 multiplier:1.0 constant:0.0];
        [v9 addObject:v29];

        v30 = [(FBAQuestionAnswerCell *)self contentView];
        [v30 addConstraints:v9];
      }
    }
  }
}

- (void)hideErrorArrow
{
  v3 = [(FBAQuestionAnswerCell *)self errorArrow];
  if (v3)
  {
    v4 = v3;
    v5 = [(FBAQuestionAnswerCell *)self errorArrow];
    v6 = [v5 superview];

    if (v6)
    {
      v7 = [(FBAQuestionAnswerCell *)self errorArrow];
      [v7 removeFromSuperview];
    }
  }
}

- (void)setQuestion:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_question, a3);
  v5 = [(FBAQuestionAnswerCell *)self answerTextView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(FBKQuestion *)self->_question answerType])
    {
      if ([(FBKQuestion *)self->_question answerType]!= 1)
      {
        goto LABEL_7;
      }

      v7 = 4096;
    }

    else
    {
      v7 = 255;
    }

    v8 = [(FBAQuestionAnswerCell *)self answerTextView];
    [v8 setCharacterLimit:v7];
  }

LABEL_7:
  [(FBAQuestionAnswerCell *)self setNeedsLayout];
}

- (void)setAnswer:(id)a3
{
  v12 = a3;
  objc_storeStrong(&self->_answer, a3);
  self->_hasPlaceholder = 1;
  v5 = [v12 value];
  if (v5)
  {
    v6 = v5;
    v7 = [v12 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v12 value];
      self->_hasPlaceholder = [v9 length] == 0;
    }
  }

  if (self->_hasPlaceholder)
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v10 = ;
  v11 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v11 setTextColor:v10];
}

- (BOOL)shouldAllowEditing
{
  v3 = [(FBAQuestionAnswerCell *)self question];
  if ([v3 answerType])
  {
    v4 = [(FBAQuestionAnswerCell *)self question];
    if ([v4 answerType] == 1)
    {
      v5 = ![(FBAQuestionAnswerCell *)self hasKeyboardFocus];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v5 = ![(FBAQuestionAnswerCell *)self hasKeyboardFocus];
  }

  return v5;
}

- (void)beginEditingQuestion
{
  if ([(FBAQuestionAnswerCell *)self shouldAllowEditing])
  {
    v3 = [(FBAQuestionAnswerCell *)self answerTextView];
    [v3 setEditable:1];

    v4 = [(FBAQuestionAnswerCell *)self answerTextView];
    [v4 setUserInteractionEnabled:1];

    v5 = [(FBAQuestionAnswerCell *)self answerTextView];
    [v5 setIsAccessibilityElement:1];

    [(FBAQuestionAnswerCell *)self setIsAccessibilityElement:0];
    if ([(FBAQuestionAnswerCell *)self hasPlaceholder])
    {
      v6 = [(FBAQuestionAnswerCell *)self answerTextView];
      [v6 setText:&stru_1000E2210];

      v7 = +[UIColor labelColor];
      v8 = [(FBAQuestionAnswerCell *)self answerTextView];
      [v8 setTextColor:v7];

      [(FBAQuestionAnswerCell *)self setHasPlaceholder:0];
    }

    [UIView setAnimationsEnabled:0];
    v9 = [(FBAQuestionAnswerCell *)self answerTextView];
    [v9 becomeFirstResponder];

    [UIView setAnimationsEnabled:1];
    [(FBAQuestionAnswerCell *)self setHasKeyboardFocus:1];

    [(FBAQuestionAnswerCell *)self setNeedsLayout];
  }
}

- (void)saveAnswer
{
  v3 = [(FBAQuestionAnswerCell *)self answerTextView];
  v4 = [v3 text];
  v5 = [(FBAQuestionAnswerCell *)self answerTextView];
  v10 = [v4 fbk_objc_truncate:{objc_msgSend(v5, "characterLimit")}];

  v6 = [(FBAQuestionAnswerCell *)self answer];
  [v6 setValue:v10];

  v7 = [(FBAQuestionAnswerCell *)self answer];
  [(FBAQuestionAnswerCell *)self sanitizeAnswer:v7];

  v8 = [(FBAQuestionAnswerCell *)self bugFormEditorDelegate];
  v9 = [(FBAQuestionAnswerCell *)self question];
  [v8 answerDidChangeForQuestion:v9];
}

- (void)endEditingQuestion
{
  [(FBAQuestionAnswerCell *)self saveAnswer];
  v3 = [(FBAQuestionAnswerCell *)self answer];
  v4 = [v3 value];
  if (v4)
  {
    v5 = v4;
    v6 = [(FBAQuestionAnswerCell *)self answer];
    v7 = [v6 value];
    v8 = [v7 length];

    if (v8)
    {
      v9 = +[UIColor labelColor];
      goto LABEL_11;
    }
  }

  else
  {
  }

  [(FBAQuestionAnswerCell *)self setHasPlaceholder:1];
  v10 = [(FBAQuestionAnswerCell *)self question];
  v11 = [v10 placeholder];
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  v13 = [(FBAQuestionAnswerCell *)self question];
  v14 = [v13 placeholder];
  v15 = [v14 length];

  if (!v15)
  {
LABEL_9:
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"TEXT_ANSWER_PLACEHOLDER" value:&stru_1000E2210 table:0];
    goto LABEL_10;
  }

  v16 = [(FBAQuestionAnswerCell *)self question];
  v17 = [v16 placeholder];
LABEL_10:
  v18 = v17;
  v19 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v19 setText:v18];

  v9 = +[UIColor secondaryLabelColor];
LABEL_11:
  v20 = v9;
  v21 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v21 setTextColor:v20];

  v22 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v22 resignFirstResponder];

  [(FBAQuestionAnswerCell *)self setHasKeyboardFocus:0];
  v23 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v23 setEditable:0];

  v24 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v24 setUserInteractionEnabled:0];

  v25 = [(FBAQuestionAnswerCell *)self answerTextView];
  [v25 setIsAccessibilityElement:0];

  [(FBAQuestionAnswerCell *)self setIsAccessibilityElement:1];

  [(FBAQuestionAnswerCell *)self setNeedsLayout];
}

- (void)sanitizeAnswer:(id)a3
{
  v10 = a3;
  v3 = [v10 value];
  if (v3)
  {
    v4 = v3;
    v5 = [v10 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v10 value];
      v8 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v9 = [v7 stringByTrimmingCharactersInSet:v8];
      [v10 setValue:v9];
    }
  }
}

- (id)accessibilityLabel
{
  v3 = [(FBAQuestionAnswerCell *)self questionLabel];
  v4 = [v3 text];
  v5 = [(FBAQuestionAnswerCell *)self answerTextView];
  v6 = [v5 text];
  v7 = [NSString stringWithFormat:@"%@, %@", v4, v6];

  return v7;
}

- (id)accessibilityIdentifier
{
  v2 = [(FBAQuestionAnswerCell *)self questionLabel];
  v3 = [v2 text];
  v4 = [NSString stringWithFormat:@"FBAEditor@%@", v3];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FBAQuestionAnswerCell;
  return UIAccessibilityTraitButton | [(FBAQuestionAnswerCell *)&v3 accessibilityTraits];
}

- (id)accessibilityHint
{
  v2 = [(FBAQuestionAnswerCell *)self shouldAllowEditing];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"ANSWER_CELL_HINT_EDIT";
  }

  else
  {
    v5 = @"ANSWER_CELL_HINT_CHOOSE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1000E2210 table:0];

  return v6;
}

- (UILabel)questionLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_questionLabel);

  return WeakRetained;
}

- (FBAQuestionCellTextView)answerTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_answerTextView);

  return WeakRetained;
}

- (FBABugFormEditorDelegate)bugFormEditorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bugFormEditorDelegate);

  return WeakRetained;
}

@end