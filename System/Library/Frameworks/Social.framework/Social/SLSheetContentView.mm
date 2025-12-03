@interface SLSheetContentView
- (CGSize)intrinsicContentSize;
- (SLSheetContentView)initWithFrame:(CGRect)frame;
- (double)_previewMarginForContentSize:(CGSize)size;
- (double)_textTopMarginForContentSize:(CGSize)size;
- (void)_resetAccessoryView;
- (void)_setConstraints;
- (void)_setupConstraints;
- (void)_setupView;
- (void)adjustComposeViewForPreview;
- (void)beginAutoCompletionMode;
- (void)endAutoCompletionMode;
- (void)layoutSubviews;
- (void)preflightAutoCompletionModeWithApparentHeight:(double)height;
- (void)resetPreview;
- (void)setAccessoryView:(id)view;
- (void)setIntrinsicSize:(CGSize)size forVerticalSizeClass:(int64_t)class;
- (void)setPreviewView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)updatePreviewMargin;
- (void)updateTextViewMargin;
@end

@implementation SLSheetContentView

- (SLSheetContentView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SLSheetContentView;
  v3 = [(SLSheetContentView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    intrinsicSizes = v3->_intrinsicSizes;
    v3->_intrinsicSizes = v4;

    v3->_previewTopMargin = 15.0;
    v3->_textViewTopMargin = 4.0;
    [(SLSheetContentView *)v3 _setupView];
    [(SLSheetContentView *)v3 _setupConstraints];
  }

  return v3;
}

- (void)_setupView
{
  v28[1] = *MEMORY[0x1E69E9840];
  layer = [(SLSheetContentView *)self layer];
  [layer setMasksToBounds:1];

  v4 = objc_alloc_init(SLSheetTextComposeView);
  textComposeView = self->_textComposeView;
  self->_textComposeView = v4;

  [(SLSheetTextComposeView *)self->_textComposeView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SLSheetTextComposeView *)self->_textComposeView setTextRightInset:15.0];
  LODWORD(v6) = 1132068864;
  [(SLSheetTextComposeView *)self->_textComposeView setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1132068864;
  [(SLSheetTextComposeView *)self->_textComposeView setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1132068864;
  [(SLSheetTextComposeView *)self->_textComposeView setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1132068864;
  [(SLSheetTextComposeView *)self->_textComposeView setContentHuggingPriority:1 forAxis:v9];
  [(SLSheetContentView *)self addSubview:self->_textComposeView];
  [(SLSheetContentView *)self setNeedsUpdateConstraints];
  v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
  bottomSeparator = self->_bottomSeparator;
  self->_bottomSeparator = v10;

  opaqueSeparatorColor = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  [(UIView *)self->_bottomSeparator setBackgroundColor:opaqueSeparatorColor];

  [(UIView *)self->_bottomSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SLSheetContentView *)self addSubview:self->_bottomSeparator];
  v13 = MEMORY[0x1E696ACD8];
  v27 = @"separatorHeight";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:0.5];
  v28[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v16 = self->_bottomSeparator;
  v25 = @"bottomSeparator";
  v26 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v18 = [v13 constraintsWithVisualFormat:@"V:[bottomSeparator(==separatorHeight@999)]|" options:0 metrics:v15 views:v17];
  [(SLSheetContentView *)self addConstraints:v18];

  v19 = MEMORY[0x1E696ACD8];
  v20 = self->_bottomSeparator;
  v23 = @"bottomSeparator";
  v24 = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v22 = [v19 constraintsWithVisualFormat:@"|[bottomSeparator]|" options:0 metrics:0 views:v21];
  [(SLSheetContentView *)self addConstraints:v22];
}

- (void)_setupConstraints
{
  LODWORD(v2) = 1132068864;
  [(SLSheetContentView *)self setContentHuggingPriority:0 forAxis:v2];
  LODWORD(v4) = 1132068864;
  [(SLSheetContentView *)self setContentHuggingPriority:1 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [(SLSheetContentView *)self setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1132068864;

  [(SLSheetContentView *)self setContentCompressionResistancePriority:1 forAxis:v6];
}

- (CGSize)intrinsicContentSize
{
  intrinsicSizes = self->_intrinsicSizes;
  v5 = MEMORY[0x1E696AD98];
  traitCollection = [(SLSheetContentView *)self traitCollection];
  v7 = [v5 numberWithInteger:{objc_msgSend(traitCollection, "verticalSizeClass")}];
  v8 = [(NSMutableDictionary *)intrinsicSizes objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = [(NSMutableDictionary *)self->_intrinsicSizes objectForKeyedSubscript:&unk_1F4202A90];
  }

  v9 = MEMORY[0x1E696AD98];
  traitCollection2 = [(SLSheetContentView *)self traitCollection];
  v17 = [v9 numberWithInteger:{objc_msgSend(traitCollection2, "verticalSizeClass")}];
  _SLLog(v2, 7, @"SLSheetContentView intrinsicContentSize for self.traitCollection.verticalSizeClass %@ using sizeValue %@");

  if (v8)
  {
    [v8 CGSizeValue];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x1E69DE788];
    v14 = *MEMORY[0x1E69DE788];
  }

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = SLSheetContentView;
  [(SLSheetContentView *)&v3 updateConstraints];
  [(SLSheetContentView *)self _setConstraints];
}

- (void)_setConstraints
{
  v94[1] = *MEMORY[0x1E69E9840];
  if (self->_constraints)
  {
    [(SLSheetContentView *)self removeConstraints:?];
    [(NSMutableArray *)self->_constraints removeAllObjects];
  }

  else
  {
    v3 = objc_opt_new();
    constraints = self->_constraints;
    self->_constraints = v3;
  }

  v5 = self->_constraints;
  v6 = MEMORY[0x1E696ACD8];
  textComposeView = self->_textComposeView;
  v93 = @"textComposeView";
  v94[0] = textComposeView;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:&v93 count:1];
  v9 = [v6 constraintsWithVisualFormat:@"|-(sheetMargin)-[textComposeView]|" options:0 metrics:&unk_1F4202BE8 views:v8];
  [(NSMutableArray *)v5 addObjectsFromArray:v9];

  autoCompletionMode = self->_autoCompletionMode;
  accessoryView = [(SLSheetContentView *)self accessoryView];

  v12 = self->_constraints;
  v13 = MEMORY[0x1E696ACD8];
  if (autoCompletionMode)
  {
    if (accessoryView)
    {
      v81[0] = @"sheetMargin";
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_textViewTopMargin];
      v81[1] = @"autoCompletionTextViewHeight";
      v82[0] = v14;
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_autoCompletionTextViewHeight];
      v82[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
      v17 = self->_textComposeView;
      v79 = @"textComposeView";
      v80 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      v19 = [v13 constraintsWithVisualFormat:@"V:|-(sheetMargin)-[textComposeView(==autoCompletionTextViewHeight@999)]" options:0 metrics:v16 views:v18];
      [(NSMutableArray *)v12 addObjectsFromArray:v19];

      v20 = self->_constraints;
      v21 = MEMORY[0x1E696ACD8];
      v77 = @"accessoryView";
      accessoryView2 = [(SLSheetContentView *)self accessoryView];
      v78 = accessoryView2;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v24 = [v21 constraintsWithVisualFormat:@"V:[accessoryView]-(accessoryBottomMargin)-|" options:0 metrics:&unk_1F4202C38 views:v23];
      [(NSMutableArray *)v20 addObjectsFromArray:v24];

      v25 = self->_constraints;
      v26 = MEMORY[0x1E696ACD8];
      v75 = @"accessoryView";
      accessoryView3 = [(SLSheetContentView *)self accessoryView];
      v76 = accessoryView3;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v29 = [v26 constraintsWithVisualFormat:@"|-(sheetMargin)-[accessoryView]|" options:0 metrics:&unk_1F4202C60 views:v28];
      [(NSMutableArray *)v25 addObjectsFromArray:v29];
    }

    else
    {
      v73[0] = @"sheetMargin";
      accessoryView3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_textViewTopMargin];
      v73[1] = @"autoCompletionTextViewHeight";
      v74[0] = accessoryView3;
      v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_autoCompletionTextViewHeight];
      v74[1] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
      v41 = self->_textComposeView;
      v71 = @"textComposeView";
      v72 = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v43 = [v13 constraintsWithVisualFormat:@"V:|-(sheetMargin)-[textComposeView(==autoCompletionTextViewHeight@999)]" options:0 metrics:v29 views:v42];
      [(NSMutableArray *)v12 addObjectsFromArray:v43];
    }

    v44 = self->_constraints;
    v45 = MEMORY[0x1E696ACD8];
    v69 = @"separatorHeight";
    accessoryView5 = [MEMORY[0x1E696AD98] numberWithDouble:0.5];
    v70 = accessoryView5;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v46 = self->_textComposeView;
    v67[0] = @"textComposeView";
    v67[1] = @"autoCompletionModeSeparator";
    autoCompletionModeSeparator = self->_autoCompletionModeSeparator;
    v68[0] = v46;
    v68[1] = autoCompletionModeSeparator;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
    v48 = [v45 constraintsWithVisualFormat:@"V:[textComposeView][autoCompletionModeSeparator(==separatorHeight@999)]" options:0 metrics:v39 views:v40];
    [(NSMutableArray *)v44 addObjectsFromArray:v48];
  }

  else if (accessoryView)
  {
    v91[0] = @"sheetMargin";
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:self->_textViewTopMargin];
    v91[1] = @"accessoryBottomMargin";
    v92[0] = v30;
    v92[1] = &unk_1F4202BB8;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
    v32 = self->_textComposeView;
    v89[0] = @"textComposeView";
    v89[1] = @"accessoryView";
    v90[0] = v32;
    accessoryView4 = [(SLSheetContentView *)self accessoryView];
    v90[1] = accessoryView4;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:2];
    v35 = [v13 constraintsWithVisualFormat:@"V:|-(sheetMargin)-[textComposeView][accessoryView]-(accessoryBottomMargin)-|" options:0 metrics:v31 views:v34];
    [(NSMutableArray *)v12 addObjectsFromArray:v35];

    v36 = self->_constraints;
    v37 = MEMORY[0x1E696ACD8];
    v87 = @"accessoryView";
    accessoryView5 = [(SLSheetContentView *)self accessoryView];
    v88 = accessoryView5;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v40 = [v37 constraintsWithVisualFormat:@"|-(sheetMargin)-[accessoryView]|" options:0 metrics:&unk_1F4202C10 views:v39];
    [(NSMutableArray *)v36 addObjectsFromArray:v40];
  }

  else
  {
    v85 = @"sheetMargin";
    accessoryView5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_textViewTopMargin];
    v86 = accessoryView5;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    v49 = self->_textComposeView;
    v83 = @"textComposeView";
    v84 = v49;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v50 = [v13 constraintsWithVisualFormat:@"V:|-(sheetMargin)-[textComposeView]|" options:0 metrics:v39 views:v40];
    [(NSMutableArray *)v12 addObjectsFromArray:v50];
  }

  previewView = [(SLSheetContentView *)self previewView];

  if (previewView)
  {
    v52 = self->_constraints;
    v53 = MEMORY[0x1E696ACD8];
    previewView2 = [(SLSheetContentView *)self previewView];
    v55 = [v53 constraintWithItem:previewView2 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-15.0];
    [(NSMutableArray *)v52 addObject:v55];

    v56 = self->_constraints;
    v57 = MEMORY[0x1E696ACD8];
    previewView3 = [(SLSheetContentView *)self previewView];
    v59 = [v57 constraintWithItem:previewView3 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:self->_previewTopMargin];
    [(NSMutableArray *)v56 addObject:v59];
  }

  v60 = self->_autoCompletionModeSeparator;
  if (v60)
  {
    v61 = self->_constraints;
    v62 = MEMORY[0x1E696ACD8];
    v65 = @"autoCompletionModeSeparator";
    v66 = v60;
    v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v64 = [v62 constraintsWithVisualFormat:@"|[autoCompletionModeSeparator]|" options:0 metrics:0 views:v63];
    [(NSMutableArray *)v61 addObjectsFromArray:v64];
  }

  [(SLSheetContentView *)self addConstraints:self->_constraints];
}

- (void)setIntrinsicSize:(CGSize)size forVerticalSizeClass:(int64_t)class
{
  height = size.height;
  width = size.width;
  v9 = [MEMORY[0x1E696B098] valueWithCGSize:?];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:class];
  _SLLog(v4, 7, @"SLSheetContentView setIntrinsicSize: %@ forVerticalSizeClass: %@");

  v10 = [MEMORY[0x1E696B098] valueWithCGSize:{width, height, v9, v15}];
  intrinsicSizes = self->_intrinsicSizes;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:class];
  [(NSMutableDictionary *)intrinsicSizes setObject:v10 forKeyedSubscript:v12];

  traitCollection = [(SLSheetContentView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == class)
  {

    [(SLSheetContentView *)self invalidateIntrinsicContentSize];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = SLSheetContentView;
  [(SLSheetContentView *)&v11 traitCollectionDidChange:changeCopy];
  traitCollection = [(SLSheetContentView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(SLSheetContentView *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  _SLLog(v3, 7, @"SLSheetContentView traitCollectionDidChange: invalidating intrinsicContentSize");
  [(SLSheetContentView *)self invalidateIntrinsicContentSize];
LABEL_6:
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_accessoryView != viewCopy)
  {
    [(SLSheetContentView *)self _resetAccessoryView];
    objc_storeStrong(&self->_accessoryView, view);
    [(UIView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (self->_accessoryView)
    {
      [(SLSheetContentView *)self addSubview:?];
      [(SLSheetContentView *)self setNeedsUpdateConstraints];
      [(SLSheetContentView *)self setNeedsDisplay];
    }
  }
}

- (void)_resetAccessoryView
{
  [(UIView *)self->_accessoryView removeFromSuperview];

  [(SLSheetContentView *)self setNeedsUpdateConstraints];
}

- (void)setPreviewView:(id)view
{
  viewCopy = view;
  if (self->_previewView != viewCopy)
  {
    [(SLSheetContentView *)self resetPreview];
    objc_storeStrong(&self->_previewView, view);
    [(UIView *)self->_previewView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (self->_previewView)
    {
      [(SLSheetContentView *)self addSubview:?];
      [(SLSheetContentView *)self setNeedsUpdateConstraints];
      [(SLSheetContentView *)self setNeedsLayout];
    }
  }
}

- (void)resetPreview
{
  [(UIView *)self->_previewView removeFromSuperview];

  [(SLSheetContentView *)self setNeedsUpdateConstraints];
}

- (double)_previewMarginForContentSize:(CGSize)size
{
  height = size.height;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    v7 = userInterfaceIdiom == 0;
  }

  else
  {
    v7 = 1;
  }

  result = 15.0;
  if (v7 && height < 100.0)
  {
    return 10.0;
  }

  return result;
}

- (double)_textTopMarginForContentSize:(CGSize)size
{
  height = size.height;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    v7 = userInterfaceIdiom == 0;
  }

  else
  {
    v7 = 1;
  }

  result = 4.0;
  if (v7 && height < 100.0)
  {
    return 0.0;
  }

  return result;
}

- (void)updatePreviewMargin
{
  [(SLSheetContentView *)self bounds];
  [(SLSheetContentView *)self _previewMarginForContentSize:v3, v4];
  if (v5 != self->_previewTopMargin)
  {
    self->_previewTopMargin = v5;

    [(SLSheetContentView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateTextViewMargin
{
  [(SLSheetContentView *)self bounds];
  [(SLSheetContentView *)self _textTopMarginForContentSize:v3, v4];
  if (v5 != self->_textViewTopMargin)
  {
    self->_textViewTopMargin = v5;

    [(SLSheetContentView *)self setNeedsUpdateConstraints];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SLSheetContentView;
  [(SLSheetContentView *)&v4 layoutSubviews];
  previewView = [(SLSheetContentView *)self previewView];

  if (previewView)
  {
    [(SLSheetContentView *)self updatePreviewMargin];
    [(SLSheetContentView *)self updateTextViewMargin];
    [(SLSheetContentView *)self adjustComposeViewForPreview];
  }

  else
  {
    [(SLSheetTextComposeView *)self->_textComposeView setTextRightInset:15.0];
  }
}

- (void)adjustComposeViewForPreview
{
  _shouldReverseLayoutDirection = [(SLSheetTextComposeView *)self->_textComposeView _shouldReverseLayoutDirection];
  previewView = [(SLSheetContentView *)self previewView];
  [previewView frame];
  v9 = v5;
  if (_shouldReverseLayoutDirection)
  {
    MaxX = CGRectGetMaxX(*&v5);
  }

  else
  {

    [(SLSheetTextComposeView *)self->_textComposeView frame];
    v12 = v11;
    [(SLSheetTextComposeView *)self->_textComposeView frame];
    MaxX = v12 + v13 - v9;
  }

  textComposeView = self->_textComposeView;

  [(SLSheetTextComposeView *)textComposeView setTextRightInset:MaxX];
}

- (void)preflightAutoCompletionModeWithApparentHeight:(double)height
{
  self->_autoCompletionTextViewHeight = height - self->_textViewTopMargin + -1.0;
  if (!self->_autoCompletionModeSeparator)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    autoCompletionModeSeparator = self->_autoCompletionModeSeparator;
    self->_autoCompletionModeSeparator = v4;

    opaqueSeparatorColor = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
    [(UIView *)self->_autoCompletionModeSeparator setBackgroundColor:opaqueSeparatorColor];

    [(UIView *)self->_autoCompletionModeSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_autoCompletionModeSeparator setAlpha:0.0];
    [(SLSheetContentView *)self addSubview:self->_autoCompletionModeSeparator];
  }

  [(SLSheetContentView *)self bounds];
  v7 = self->_autoCompletionModeSeparator;

  [(UIView *)v7 setFrame:?];
}

- (void)beginAutoCompletionMode
{
  [(UIView *)self->_previewView setAlpha:0.0];
  [(UIView *)self->_accessoryView setAlpha:0.0];
  [(UIView *)self->_bottomSeparator setAlpha:0.0];
  [(UIView *)self->_autoCompletionModeSeparator setAlpha:1.0];
  self->_autoCompletionMode = 1;
  [(SLSheetContentView *)self _setConstraints];
  [(SLSheetContentView *)self layoutIfNeeded];
  textView = [(SLSheetContentView *)self textView];
  textView2 = [(SLSheetContentView *)self textView];
  selectedRange = [textView2 selectedRange];
  [textView scrollRangeToVisible:{selectedRange, v5}];
}

- (void)endAutoCompletionMode
{
  [(UIView *)self->_previewView setAlpha:1.0];
  [(UIView *)self->_accessoryView setAlpha:1.0];
  [(UIView *)self->_bottomSeparator setAlpha:1.0];
  [(UIView *)self->_autoCompletionModeSeparator setAlpha:0.0];
  self->_autoCompletionMode = 0;
  [(SLSheetContentView *)self _setConstraints];

  [(SLSheetContentView *)self layoutIfNeeded];
}

@end