@interface FBAQuestionAnswerCell
- (BOOL)shouldAllowEditing;
- (FBABugFormEditorDelegate)bugFormEditorDelegate;
- (FBAQuestionAnswerCell)initWithCoder:(id)coder;
- (FBAQuestionAnswerCell)initWithFrame:(CGRect)frame;
- (FBAQuestionAnswerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
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
- (void)sanitizeAnswer:(id)answer;
- (void)saveAnswer;
- (void)setAnswer:(id)answer;
- (void)setQuestion:(id)question;
- (void)showErrorArrow;
- (void)updateErrorArrow;
@end

@implementation FBAQuestionAnswerCell

- (FBAQuestionAnswerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = FBAQuestionAnswerCell;
  v4 = [(FBAQuestionAnswerCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(FBAQuestionAnswerCell *)v4 commonInit];
  }

  return v5;
}

- (FBAQuestionAnswerCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FBAQuestionAnswerCell;
  v3 = [(FBAQuestionAnswerCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(FBAQuestionAnswerCell *)v3 commonInit];
  }

  return v4;
}

- (FBAQuestionAnswerCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = FBAQuestionAnswerCell;
  v3 = [(FBAQuestionAnswerCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  textContainer = [WeakRetained textContainer];
  [textContainer setLineBreakMode:0];

  self->_hasPlaceholder = 1;
  self->_hasKeyboardFocus = 0;
  questionLabel = [(FBAQuestionAnswerCell *)self questionLabel];
  [questionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  answerTextView = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView setTranslatesAutoresizingMaskIntoConstraints:0];

  answerTextView2 = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView2 setEditable:0];

  answerTextView3 = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView3 setSelectable:0];

  answerTextView4 = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView4 setUserInteractionEnabled:0];
}

- (void)awakeFromNib
{
  v9.receiver = self;
  v9.super_class = FBAQuestionAnswerCell;
  [(FBAQuestionAnswerCell *)&v9 awakeFromNib];
  [(FBAQuestionAnswerCell *)self updateErrorArrow];
  v3 = +[UIColor labelColor];
  questionLabel = [(FBAQuestionAnswerCell *)self questionLabel];
  [questionLabel setTextColor:v3];

  questionLabel2 = [(FBAQuestionAnswerCell *)self questionLabel];
  [questionLabel2 setIsAccessibilityElement:0];

  answerTextView = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView setIsAccessibilityElement:0];

  v7 = +[UIColor systemRedColor];
  errorArrow = [(FBAQuestionAnswerCell *)self errorArrow];
  [errorArrow setTintColor:v7];

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
  errorArrow = [(FBAQuestionAnswerCell *)self errorArrow];
  if (errorArrow)
  {
    v31 = errorArrow;
    errorArrow2 = [(FBAQuestionAnswerCell *)self errorArrow];
    superview = [errorArrow2 superview];
    if (superview)
    {
    }

    else
    {
      questionLabel = [(FBAQuestionAnswerCell *)self questionLabel];

      if (questionLabel)
      {
        contentView = [(FBAQuestionAnswerCell *)self contentView];
        errorArrow3 = [(FBAQuestionAnswerCell *)self errorArrow];
        [contentView addSubview:errorArrow3];

        v9 = +[NSMutableArray array];
        v36 = @"margin";
        [(FBAQuestionAnswerCell *)self separatorInset];
        v11 = v10;
        [(FBAQuestionAnswerCell *)self safeAreaInsets];
        v13 = [NSNumber numberWithDouble:v11 - v12];
        v37 = v13;
        v14 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v34[0] = @"arrow";
        errorArrow4 = [(FBAQuestionAnswerCell *)self errorArrow];
        v34[1] = @"q";
        v35[0] = errorArrow4;
        questionLabel2 = [(FBAQuestionAnswerCell *)self questionLabel];
        v35[1] = questionLabel2;
        v17 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
        v18 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-margin-[arrow(18)]-8-[q]", 0, v14, v17);

        [v9 addObjectsFromArray:v18];
        v32[0] = @"arrow";
        errorArrow5 = [(FBAQuestionAnswerCell *)self errorArrow];
        v32[1] = @"a";
        v33[0] = errorArrow5;
        answerTextView = [(FBAQuestionAnswerCell *)self answerTextView];
        v33[1] = answerTextView;
        v21 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
        v22 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[arrow]-8-[a]", 0, 0, v21);

        firstObject = [v22 firstObject];
        LODWORD(v24) = *"";
        [firstObject setPriority:v24];

        [v9 addObjectsFromArray:v22];
        errorArrow6 = [(FBAQuestionAnswerCell *)self errorArrow];
        v26 = [NSLayoutConstraint constraintWithItem:errorArrow6 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:17.0];
        [v9 addObject:v26];

        errorArrow7 = [(FBAQuestionAnswerCell *)self errorArrow];
        contentView2 = [(FBAQuestionAnswerCell *)self contentView];
        v29 = [NSLayoutConstraint constraintWithItem:errorArrow7 attribute:10 relatedBy:0 toItem:contentView2 attribute:10 multiplier:1.0 constant:0.0];
        [v9 addObject:v29];

        contentView3 = [(FBAQuestionAnswerCell *)self contentView];
        [contentView3 addConstraints:v9];
      }
    }
  }
}

- (void)hideErrorArrow
{
  errorArrow = [(FBAQuestionAnswerCell *)self errorArrow];
  if (errorArrow)
  {
    v4 = errorArrow;
    errorArrow2 = [(FBAQuestionAnswerCell *)self errorArrow];
    superview = [errorArrow2 superview];

    if (superview)
    {
      errorArrow3 = [(FBAQuestionAnswerCell *)self errorArrow];
      [errorArrow3 removeFromSuperview];
    }
  }
}

- (void)setQuestion:(id)question
{
  questionCopy = question;
  objc_storeStrong(&self->_question, question);
  answerTextView = [(FBAQuestionAnswerCell *)self answerTextView];
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

    answerTextView2 = [(FBAQuestionAnswerCell *)self answerTextView];
    [answerTextView2 setCharacterLimit:v7];
  }

LABEL_7:
  [(FBAQuestionAnswerCell *)self setNeedsLayout];
}

- (void)setAnswer:(id)answer
{
  answerCopy = answer;
  objc_storeStrong(&self->_answer, answer);
  self->_hasPlaceholder = 1;
  value = [answerCopy value];
  if (value)
  {
    v6 = value;
    value2 = [answerCopy value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      value3 = [answerCopy value];
      self->_hasPlaceholder = [value3 length] == 0;
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
  answerTextView = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView setTextColor:v10];
}

- (BOOL)shouldAllowEditing
{
  question = [(FBAQuestionAnswerCell *)self question];
  if ([question answerType])
  {
    question2 = [(FBAQuestionAnswerCell *)self question];
    if ([question2 answerType] == 1)
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
    answerTextView = [(FBAQuestionAnswerCell *)self answerTextView];
    [answerTextView setEditable:1];

    answerTextView2 = [(FBAQuestionAnswerCell *)self answerTextView];
    [answerTextView2 setUserInteractionEnabled:1];

    answerTextView3 = [(FBAQuestionAnswerCell *)self answerTextView];
    [answerTextView3 setIsAccessibilityElement:1];

    [(FBAQuestionAnswerCell *)self setIsAccessibilityElement:0];
    if ([(FBAQuestionAnswerCell *)self hasPlaceholder])
    {
      answerTextView4 = [(FBAQuestionAnswerCell *)self answerTextView];
      [answerTextView4 setText:&stru_1000E2210];

      v7 = +[UIColor labelColor];
      answerTextView5 = [(FBAQuestionAnswerCell *)self answerTextView];
      [answerTextView5 setTextColor:v7];

      [(FBAQuestionAnswerCell *)self setHasPlaceholder:0];
    }

    [UIView setAnimationsEnabled:0];
    answerTextView6 = [(FBAQuestionAnswerCell *)self answerTextView];
    [answerTextView6 becomeFirstResponder];

    [UIView setAnimationsEnabled:1];
    [(FBAQuestionAnswerCell *)self setHasKeyboardFocus:1];

    [(FBAQuestionAnswerCell *)self setNeedsLayout];
  }
}

- (void)saveAnswer
{
  answerTextView = [(FBAQuestionAnswerCell *)self answerTextView];
  text = [answerTextView text];
  answerTextView2 = [(FBAQuestionAnswerCell *)self answerTextView];
  v10 = [text fbk_objc_truncate:{objc_msgSend(answerTextView2, "characterLimit")}];

  answer = [(FBAQuestionAnswerCell *)self answer];
  [answer setValue:v10];

  answer2 = [(FBAQuestionAnswerCell *)self answer];
  [(FBAQuestionAnswerCell *)self sanitizeAnswer:answer2];

  bugFormEditorDelegate = [(FBAQuestionAnswerCell *)self bugFormEditorDelegate];
  question = [(FBAQuestionAnswerCell *)self question];
  [bugFormEditorDelegate answerDidChangeForQuestion:question];
}

- (void)endEditingQuestion
{
  [(FBAQuestionAnswerCell *)self saveAnswer];
  answer = [(FBAQuestionAnswerCell *)self answer];
  value = [answer value];
  if (value)
  {
    v5 = value;
    answer2 = [(FBAQuestionAnswerCell *)self answer];
    value2 = [answer2 value];
    v8 = [value2 length];

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
  question = [(FBAQuestionAnswerCell *)self question];
  placeholder = [question placeholder];
  if (!placeholder)
  {

    goto LABEL_9;
  }

  v12 = placeholder;
  question2 = [(FBAQuestionAnswerCell *)self question];
  placeholder2 = [question2 placeholder];
  v15 = [placeholder2 length];

  if (!v15)
  {
LABEL_9:
    question3 = +[NSBundle mainBundle];
    placeholder3 = [question3 localizedStringForKey:@"TEXT_ANSWER_PLACEHOLDER" value:&stru_1000E2210 table:0];
    goto LABEL_10;
  }

  question3 = [(FBAQuestionAnswerCell *)self question];
  placeholder3 = [question3 placeholder];
LABEL_10:
  v18 = placeholder3;
  answerTextView = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView setText:v18];

  v9 = +[UIColor secondaryLabelColor];
LABEL_11:
  v20 = v9;
  answerTextView2 = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView2 setTextColor:v20];

  answerTextView3 = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView3 resignFirstResponder];

  [(FBAQuestionAnswerCell *)self setHasKeyboardFocus:0];
  answerTextView4 = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView4 setEditable:0];

  answerTextView5 = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView5 setUserInteractionEnabled:0];

  answerTextView6 = [(FBAQuestionAnswerCell *)self answerTextView];
  [answerTextView6 setIsAccessibilityElement:0];

  [(FBAQuestionAnswerCell *)self setIsAccessibilityElement:1];

  [(FBAQuestionAnswerCell *)self setNeedsLayout];
}

- (void)sanitizeAnswer:(id)answer
{
  answerCopy = answer;
  value = [answerCopy value];
  if (value)
  {
    v4 = value;
    value2 = [answerCopy value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      value3 = [answerCopy value];
      v8 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v9 = [value3 stringByTrimmingCharactersInSet:v8];
      [answerCopy setValue:v9];
    }
  }
}

- (id)accessibilityLabel
{
  questionLabel = [(FBAQuestionAnswerCell *)self questionLabel];
  text = [questionLabel text];
  answerTextView = [(FBAQuestionAnswerCell *)self answerTextView];
  text2 = [answerTextView text];
  v7 = [NSString stringWithFormat:@"%@, %@", text, text2];

  return v7;
}

- (id)accessibilityIdentifier
{
  questionLabel = [(FBAQuestionAnswerCell *)self questionLabel];
  text = [questionLabel text];
  v4 = [NSString stringWithFormat:@"FBAEditor@%@", text];

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
  shouldAllowEditing = [(FBAQuestionAnswerCell *)self shouldAllowEditing];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (shouldAllowEditing)
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