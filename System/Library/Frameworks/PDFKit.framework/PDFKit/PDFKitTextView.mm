@interface PDFKitTextView
- (BOOL)becomeFirstResponder;
- (BOOL)handleBackTab;
- (BOOL)handleTab;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (PDFKitTextView)initWithAnnotation:(id)annotation pdfPageView:(id)view pdfView:(id)pdfView;
- (id)annotation;
- (void)_adjustScrollViewForKeyboardNotification:(id)notification;
- (void)_applyScale:(double)scale toView:(id)view;
- (void)_commitTextFromTextView:(id)view;
- (void)_setAttributedString:(id)string;
- (void)_setFont:(id)font;
- (void)_setString:(id)string;
- (void)_setup;
- (void)_setupTopLevelView;
- (void)_textWidgetDone;
- (void)_updateScaleFactor;
- (void)adjustScrollViewToAccomodateKeyboardStartingFrame:(double)frame endingFrame:(double)endingFrame annotationFrame:(double)annotationFrame withAnimationDuration:(CGFloat)duration curve:(CGFloat)curve;
- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)mode;
- (void)insertTextSuggestion:(id)suggestion completionHandler:(id)handler;
- (void)textViewDidChange:(id)change;
@end

@implementation PDFKitTextView

- (PDFKitTextView)initWithAnnotation:(id)annotation pdfPageView:(id)view pdfView:(id)pdfView
{
  annotationCopy = annotation;
  viewCopy = view;
  pdfViewCopy = pdfView;
  v35.receiver = self;
  v35.super_class = PDFKitTextView;
  v11 = [(PDFKitTextView *)&v35 init];
  if (v11)
  {
    v12 = objc_alloc_init(PDFKitTextViewPrivate);
    v13 = v11->_private;
    v11->_private = v12;

    objc_storeWeak(&v11->_private->annotation, annotationCopy);
    objc_storeWeak(&v11->_private->pdfPageView, viewCopy);
    objc_storeWeak(&v11->_private->pdfView, pdfViewCopy);
    [annotationCopy bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [objc_alloc(MEMORY[0x1E69DB800]) initWithSize:{v18, v20}];
    [v22 setLineFragmentPadding:0.0];
    v23 = objc_alloc_init(MEMORY[0x1E69DB7C0]);
    [v23 addTextContainer:v22];
    v24 = objc_alloc_init(MEMORY[0x1E69DB850]);
    [v24 addLayoutManager:v23];
    v25 = [[PDFTextWidgetTextView alloc] initWithFrame:v22 textContainer:v15, v17, v19, v21];
    v26 = v11->_private;
    textView = v26->textView;
    v26->textView = v25;

    [(PDFTextWidgetTextView *)v11->_private->textView setDelegate:v11];
    v34 = annotationCopy;
    v28 = viewCopy;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v11 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    documentScrollView = [pdfViewCopy documentScrollView];
    [defaultCenter3 addObserver:v11 selector:sel__didChangeZoomFactor_ name:@"PDFScrollViewDidChangeZoomFactor" object:documentScrollView];

    viewCopy = v28;
    annotationCopy = v34;

    [(PDFKitTextView *)v11 _setup];
  }

  return v11;
}

- (id)annotation
{
  WeakRetained = objc_loadWeakRetained(&self->_private->annotation);

  return WeakRetained;
}

- (BOOL)becomeFirstResponder
{
  becomeFirstResponder = [(PDFTextWidgetTextView *)self->_private->textView becomeFirstResponder];
  if (becomeFirstResponder)
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
    v5 = objc_loadWeakRetained(&self->_private->annotation);
    v6 = v5;
    if (WeakRetained)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      [WeakRetained interactWithAnnotation:v5];
    }
  }

  return becomeFirstResponder;
}

- (void)insertTextSuggestion:(id)suggestion completionHandler:(id)handler
{
  v5 = self->_private;
  handlerCopy = handler;
  suggestionCopy = suggestion;
  WeakRetained = objc_loadWeakRetained(&v5->pdfPageView);
  [WeakRetained populateFormFieldsWithAutoFillSuggestion:suggestionCopy completionHandler:handlerCopy];
}

- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_private->annotation);
  [WeakRetained setAutofillEntryType:v3];
}

- (void)_commitTextFromTextView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_private->annotation);
  v5 = [WeakRetained valueForAnnotationKey:@"/FT"];
  v6 = v5;
  if (WeakRetained && [v5 isEqualToString:@"/Tx"])
  {
    text = [viewCopy text];
    if ([text length])
    {
      endOfDocument = [viewCopy endOfDocument];
      v9 = [viewCopy positionFromPosition:endOfDocument offset:-1];

      endOfDocument2 = [viewCopy endOfDocument];
      v11 = [viewCopy textRangeFromPosition:v9 toPosition:endOfDocument2];

      [viewCopy firstRectForRange:v11];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      textInputView = [viewCopy textInputView];
      [viewCopy convertRect:textInputView fromView:{v13, v15, v17, v19}];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [viewCopy bounds];
      v43.origin.x = v29;
      v43.origin.y = v30;
      v43.size.width = v31;
      v43.size.height = v32;
      v42.origin.x = v22;
      v42.origin.y = v24;
      v42.size.width = v26;
      v42.size.height = v28;
      if (!CGRectIntersectsRect(v42, v43))
      {
        widgetStringValue = [WeakRetained widgetStringValue];

        text = widgetStringValue;
      }
    }

    selectedRange = [viewCopy selectedRange];
    v36 = v35;
    v37 = objc_loadWeakRetained(&self->_private->pdfPageView);
    [v37 setStringValue:text onTextWidgetAnnotation:WeakRetained withTextView:viewCopy];

    if (selectedRange != [viewCopy selectedRange])
    {
      [viewCopy setSelectedRange:{selectedRange - 1, v36}];
    }

    text2 = [viewCopy text];
    v39 = [text2 length] != 0;

    [WeakRetained setAutofillEntryType:v39];
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  v6 = self->_private;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&v6->annotation);
  isMultiline = [WeakRetained isMultiline];

  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v11 = [textCopy rangeOfCharacterFromSet:newlineCharacterSet];

  if (!((v11 == 0x7FFFFFFFFFFFFFFFLL) | isMultiline & 1))
  {
    [(PDFKitTextView *)self _textWidgetDone];
  }

  return (v11 == 0x7FFFFFFFFFFFFFFFLL) | isMultiline & 1;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  markedTextRange = [changeCopy markedTextRange];
  v6 = markedTextRange;
  if (markedTextRange)
  {
    isEmpty = [markedTextRange isEmpty];
    if (!WeakRetained)
    {
      goto LABEL_7;
    }
  }

  else
  {
    isEmpty = 1;
    if (!WeakRetained)
    {
      goto LABEL_7;
    }
  }

  if (([WeakRetained formFillingUpdatesAnnotationOnEveryTextChange] & isEmpty) == 1)
  {
    [(PDFKitTextView *)self _commitTextFromTextView:changeCopy];
  }

LABEL_7:
}

- (void)_textWidgetDone
{
  v3 = self->_private;
  if (v3->textView)
  {
    [(PDFKitTextView *)self _commitTextFromTextView:?];
    v3 = self->_private;
  }

  WeakRetained = objc_loadWeakRetained(&v3->pdfPageView);
  [WeakRetained endEditing:1];

  v6 = objc_loadWeakRetained(&self->_private->pdfView);
  v5 = objc_loadWeakRetained(&self->_private->annotation);
  [v6 removeControlForAnnotation:v5];
}

- (void)_adjustScrollViewForKeyboardNotification:(id)notification
{
  notificationCopy = notification;
  isFirstResponder = [(PDFTextWidgetTextView *)self->_private->textView isFirstResponder];
  v5 = notificationCopy;
  if (isFirstResponder)
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo valueForKey:*MEMORY[0x1E69DDF98]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    userInfo2 = [notificationCopy userInfo];
    v17 = [userInfo2 valueForKey:*MEMORY[0x1E69DDFA0]];
    [v17 CGRectValue];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v64 = v24;

    userInfo3 = [notificationCopy userInfo];
    v26 = [userInfo3 valueForKey:*MEMORY[0x1E69DDF40]];
    [v26 floatValue];
    v28 = v27;

    userInfo4 = [notificationCopy userInfo];
    v30 = [userInfo4 valueForKey:*MEMORY[0x1E69DDF38]];
    unsignedIntegerValue = [v30 unsignedIntegerValue];

    WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
    v33 = objc_loadWeakRetained(&self->_private->annotation);
    v34 = v33;
    if (v33)
    {
      v63 = v15;
      v35 = v28;
      [v33 bounds];
      v37 = v36;
      v61 = v21;
      v62 = v19;
      v38 = v9;
      v40 = v39;
      v41 = v11;
      v43 = v42;
      v60 = v23;
      v44 = v13;
      v46 = v45;
      page = [v34 page];
      [WeakRetained convertRect:page fromPage:{v37, v40, v43, v46}];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      [WeakRetained convertRect:0 toView:{v49, v51, v53, v55}];
      [(PDFKitTextView *)self adjustScrollViewToAccomodateKeyboardStartingFrame:unsignedIntegerValue endingFrame:v38 annotationFrame:v41 withAnimationDuration:v44 curve:v63, v62, v61, v60, v64, v56, v57, v58, v59, *&v35];
    }

    v5 = notificationCopy;
  }

  MEMORY[0x1EEE66BB8](isFirstResponder, v5);
}

- (void)adjustScrollViewToAccomodateKeyboardStartingFrame:(double)frame endingFrame:(double)endingFrame annotationFrame:(double)annotationFrame withAnimationDuration:(CGFloat)duration curve:(CGFloat)curve
{
  WeakRetained = objc_loadWeakRetained((*(self + 8) + 24));
  documentScrollView = [WeakRetained documentScrollView];
  superview = [documentScrollView superview];
  [documentScrollView frame];
  [superview convertRect:0 toView:?];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v89.origin.x = v29;
  v89.origin.y = v31;
  v89.size.width = v33;
  v89.size.height = v35;
  v72 = -(curve - CGRectGetMaxY(v89));
  v68 = *MEMORY[0x1E695F050];
  v71 = *(MEMORY[0x1E695F050] + 8);
  v70 = *(MEMORY[0x1E695F050] + 16);
  v69 = *(MEMORY[0x1E695F050] + 24);
  [documentScrollView bounds];
  [documentScrollView convertRect:0 toView:?];
  x = v90.origin.x;
  y = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;
  v95.origin.x = duration;
  v95.origin.y = curve;
  v95.size.width = a8;
  v95.size.height = a9;
  if (CGRectIntersectsRect(v90, v95))
  {
    v91.origin.x = x;
    v91.origin.y = y;
    v91.size.width = width;
    v91.size.height = height;
    v96.origin.x = duration;
    v96.origin.y = curve;
    v96.size.width = a8;
    v96.size.height = a9;
    v92 = CGRectIntersection(v91, v96);
    v65 = height - (CGRectGetHeight(v92) + 0.0);
    [documentScrollView convertRect:0 fromView:{a12, a13, a14, a15}];
    rect2a = v40;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v93.origin.x = x + 0.0;
    v93.size.height = v65;
    v93.origin.y = y + 0.0;
    v93.size.width = width;
    v97.origin.x = a12;
    v97.origin.y = a13;
    v97.size.width = a14;
    v97.size.height = a15;
    v47 = CGRectContainsRect(v93, v97);
    v48 = v69;
    v49 = v70;
    if (!v47)
    {
      v48 = v46;
      v49 = v44;
    }

    v50 = v71;
    if (!v47)
    {
      v50 = v42;
    }

    v51 = v68;
    if (!v47)
    {
      v51 = rect2a;
    }
  }

  else
  {
    v48 = v69;
    v49 = v70;
    v50 = v71;
    v51 = v68;
  }

  [documentScrollView contentInset];
  v53 = v52;
  [documentScrollView _contentScrollInset];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  if (v53 >= v72)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = v72 - v53;
  }

  v94.origin.x = v51;
  v94.origin.y = v50;
  v94.size.width = v49;
  v94.size.height = v48;
  if (CGRectIsNull(v94))
  {
    if (v60 <= 0.0)
    {
      [documentScrollView _setContentScrollInset:{v55, v57, v60, v59}];
      goto LABEL_21;
    }

    v61 = dispatch_time(0, (a16 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __124__PDFKitTextView_adjustScrollViewToAccomodateKeyboardStartingFrame_endingFrame_annotationFrame_withAnimationDuration_curve___block_invoke_2;
    block[3] = &unk_1E8151850;
    v74 = documentScrollView;
    v75 = v55;
    v76 = v57;
    v77 = v60;
    v78 = v59;
    dispatch_after(v61, MEMORY[0x1E69E96A0], block);
    v62 = v74;
  }

  else
  {
    if ((a11 - 1) >= 3)
    {
      v63 = 4;
    }

    else
    {
      v63 = ((a11 - 1) << 16) + 65540;
    }

    v64 = MEMORY[0x1E69DD250];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __124__PDFKitTextView_adjustScrollViewToAccomodateKeyboardStartingFrame_endingFrame_annotationFrame_withAnimationDuration_curve___block_invoke;
    v79[3] = &unk_1E8151828;
    v80 = documentScrollView;
    v81 = v55;
    v82 = v57;
    v83 = v60;
    v84 = v59;
    v85 = v51;
    v86 = v50;
    v87 = v49;
    v88 = v48;
    [v64 animateWithDuration:v63 delay:v79 options:0 animations:a16 completion:0.0];
    v62 = v80;
  }

LABEL_21:
}

uint64_t __124__PDFKitTextView_adjustScrollViewToAccomodateKeyboardStartingFrame_endingFrame_annotationFrame_withAnimationDuration_curve___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setContentScrollInset:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);

  return [v2 scrollRectToVisible:0 animated:{v3, v4, v5, v6}];
}

- (BOOL)handleTab
{
  WeakRetained = objc_loadWeakRetained(&self->_private->annotation);
  v4 = objc_loadWeakRetained(&self->_private->pdfView);
  v5 = v4;
  if (v4)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 PDFKitHandleTabInTextWidget:WeakRetained];
  }

  return v7;
}

- (BOOL)handleBackTab
{
  WeakRetained = objc_loadWeakRetained(&self->_private->annotation);
  v4 = objc_loadWeakRetained(&self->_private->pdfView);
  v5 = v4;
  if (v4)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 PDFKitHandleBackTabInTextWidget:WeakRetained];
  }

  return v7;
}

- (void)_setString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    v6 = stringCopy;
    stringCopy = [stringCopy length];
    v5 = v6;
    if (stringCopy)
    {
      stringCopy = [(PDFTextWidgetTextView *)self->_private->textView setText:v6];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](stringCopy, v5);
}

- (void)_setFont:(id)font
{
  WeakRetained = objc_loadWeakRetained(&self->_private->annotation);
  scaledFontForTextWidget = [WeakRetained scaledFontForTextWidget];
  v5 = scaledFontForTextWidget;
  if (scaledFontForTextWidget)
  {
    [scaledFontForTextWidget pointSize];
    if (v6 > 0.0)
    {
      [(PDFTextWidgetTextView *)self->_private->textView setFont:v5];
    }
  }
}

- (void)_setup
{
  v76[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfPageView);
  v4 = objc_loadWeakRetained(&self->_private->annotation);
  if (!v4)
  {
    goto LABEL_31;
  }

  v66 = self->_private->textView;
  widgetStringValue = [v4 widgetStringValue];
  font = [v4 font];
  fontColor = [v4 fontColor];
  alignment = [v4 alignment];
  backgroundColor = [v4 backgroundColor];
  border = [v4 border];
  v10 = [v4 valueForAnnotationKey:@"/MK"];
  borderColor = [v10 borderColor];

  shouldComb = [v4 shouldComb];
  isAppearanceStreamEmpty = [v4 isAppearanceStreamEmpty];
  [(PDFKitTextView *)self _setString:widgetStringValue];
  v70 = font;
  [(PDFKitTextView *)self _setFont:font];
  v64 = fontColor;
  [(PDFKitTextView *)self _setFontColor:fontColor];
  [(PDFKitTextView *)self _setAlignment:alignment];
  v13 = self->_private;
  textView = v13->textView;
  if (isAppearanceStreamEmpty)
  {
    if (backgroundColor)
    {
      [(PDFTextWidgetTextView *)v13->textView setBackgroundColor:backgroundColor];
    }

    else
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(PDFTextWidgetTextView *)textView setBackgroundColor:clearColor];
    }

    if (!border || ([border lineWidth], v18 <= 0.0))
    {
      v16 = -200.0;
      if (shouldComb)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    layer = [(PDFTextWidgetTextView *)self->_private->textView layer];
    if (borderColor)
    {
      [layer setBorderColor:{objc_msgSend(borderColor, "CGColor")}];
    }

    else
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [layer setBorderColor:{objc_msgSend(blackColor, "CGColor")}];
    }

    layer2 = [(PDFTextWidgetTextView *)self->_private->textView layer];
    [border lineWidth];
    [layer2 setBorderWidth:?];
    v16 = -200.0;
  }

  else
  {
    layer2 = [MEMORY[0x1E69DC888] clearColor];
    [(PDFTextWidgetTextView *)textView setBackgroundColor:layer2];
    v16 = 0.0;
  }

  if (shouldComb)
  {
LABEL_16:
    [(PDFTextWidgetTextView *)self->_private->textView setAllowsEditingTextAttributes:1];
    textContainer = [(PDFTextWidgetTextView *)self->_private->textView textContainer];
    [textContainer setLineBreakMode:2];

    if (widgetStringValue)
    {
      [(PDFKitTextView *)self _setAttributedString:widgetStringValue];
    }
  }

LABEL_18:
  +[PDFAnnotationDrawing textInset];
  v23 = v22;
  v67 = WeakRetained;
  v65 = widgetStringValue;
  v62 = backgroundColor;
  if ([v4 isMultiline])
  {
    v24 = self->_private->textView;
    v25 = v23;
    v26 = v23;
    v27 = v23;
  }

  else
  {
    v28 = @"Wj";
    if (widgetStringValue)
    {
      v28 = widgetStringValue;
    }

    v29 = v28;
    [v4 bounds];
    v31 = v30;
    v33 = v32;
    v75 = *MEMORY[0x1E69DB648];
    v76[0] = v70;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];
    [(__CFString *)v29 boundingRectWithSize:1 options:v34 attributes:0 context:v31, v33];
    v36 = v35;

    v25 = fmax((v33 - v36) * 0.5, 0.0);
    v24 = self->_private->textView;
    v26 = v23;
    v27 = v25;
  }

  [(PDFTextWidgetTextView *)v24 setTextContainerInset:v25, v26, v27, v23, v62];
  v37 = self->_private->textView;
  autoFillTextContentType = [v4 autoFillTextContentType];
  [(PDFTextWidgetTextView *)v37 setTextContentType:autoFillTextContentType];

  v39 = objc_alloc(MEMORY[0x1E69DC708]);
  v40 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.up"];
  v41 = [v39 initWithImage:v40 style:0 target:self action:sel_handleBackTab];

  v42 = objc_alloc(MEMORY[0x1E69DC708]);
  v43 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.down"];
  v44 = [v42 initWithImage:v43 style:0 target:self action:sel_handleTab];

  v45 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v46 = objc_alloc(MEMORY[0x1E69DC720]);
  v74[0] = v41;
  v74[1] = v44;
  v74[2] = v45;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
  v48 = [v46 initWithBarButtonItems:v47 representativeItem:0];

  v73 = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  inputAssistantItem = [(PDFTextWidgetTextView *)self->_private->textView inputAssistantItem];
  [inputAssistantItem setLeadingBarButtonGroups:v49];

  if ([v4 isMultiline])
  {
    v51 = objc_alloc(MEMORY[0x1E69DC708]);
    v52 = PDFKitLocalizedString(@"Done");
    v53 = [v51 initWithTitle:v52 style:2 target:self action:sel__textWidgetDone];

    v54 = objc_alloc(MEMORY[0x1E69DC720]);
    v72 = v53;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    v56 = [v54 initWithBarButtonItems:v55 representativeItem:0];

    v71 = v56;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    inputAssistantItem2 = [(PDFTextWidgetTextView *)self->_private->textView inputAssistantItem];
    [inputAssistantItem2 setTrailingBarButtonGroups:v57];
  }

  else
  {
    if (!v70)
    {
      v59 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v70 = [v59 systemFontOfSize:?];
    }

    [(PDFTextWidgetTextView *)self->_private->textView setScrollEnabled:0];
    [(PDFTextWidgetTextView *)self->_private->textView setReturnKeyType:9];
  }

  layer3 = [(PDFTextWidgetTextView *)self->_private->textView layer];
  [layer3 setZPosition:v16];

  layer4 = [(PDFTextWidgetTextView *)self->_private->textView layer];
  [layer4 setDrawsAsynchronously:1];

  [v4 setControl:self];
  WeakRetained = v67;
  if (v67)
  {
    [(PDFKitTextView *)self _setupTopLevelView];
    [v67 addSubview:self->_private->topLevelView];
    [(PDFKitTextView *)self _updateScaleFactor];
    [(PDFKitTextView *)self becomeFirstResponder];
  }

LABEL_31:
}

- (void)_setupTopLevelView
{
  v3 = objc_alloc(MEMORY[0x1E69DCEF8]);
  [(PDFTextWidgetTextView *)self->_private->textView frame];
  v4 = [v3 initWithFrame:?];
  [(UIView *)v4 setScrollEnabled:0];
  [(UIView *)v4 setShowsVerticalScrollIndicator:0];
  [(UIView *)v4 setShowsHorizontalScrollIndicator:0];
  [(UIView *)v4 addSubview:self->_private->textView];
  textView = self->_private->textView;
  [(PDFTextWidgetTextView *)textView frame];
  v7 = v6;
  [(PDFTextWidgetTextView *)self->_private->textView frame];
  [(PDFTextWidgetTextView *)textView setFrame:0.0, 0.0, v7];
  [(PDFTextWidgetTextView *)self->_private->textView setAutoresizingMask:18];
  v8 = self->_private;
  topLevelView = v8->topLevelView;
  v8->topLevelView = v4;
}

- (void)_setAttributedString:(id)string
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = self->_private;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&v4->annotation);
  font = [WeakRetained font];
  v8 = [WeakRetained valueForAnnotationKey:@"/MaxLen"];
  integerValue = [v8 integerValue];

  if (!font)
  {
    v10 = MEMORY[0x1E69DB878];
    [(PDFTextWidgetTextView *)self->_private->textView frame];
    font = [v10 systemFontOfSize:v11 + -2.0];
  }

  v12 = integerValue;
  v26 = *MEMORY[0x1E69DB648];
  v13 = v26;
  v27[0] = font;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [stringCopy sizeWithAttributes:v14];
  v16 = v15;

  v17 = [stringCopy length];
  [WeakRetained bounds];
  v19 = (v18 + -v16 / v17 * v12) / v12;
  v20 = [stringCopy length];
  v21 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:stringCopy];

  v22 = *MEMORY[0x1E69DB660];
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  [v21 addAttribute:v22 value:v23 range:{0, v20}];

  [v21 addAttribute:*MEMORY[0x1E69DB668] value:&unk_1F4184228 range:{0, v20}];
  [v21 addAttribute:v13 value:font range:{0, v20}];
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v25 = [defaultParagraphStyle mutableCopy];

  [v25 setLineBreakMode:2];
  [v21 addAttribute:*MEMORY[0x1E69DB688] value:v25 range:{0, v20}];
  [(PDFTextWidgetTextView *)self->_private->textView setAttributedText:v21];
}

- (void)_updateScaleFactor
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [WeakRetained scaleFactor];
  v5 = v4 * PDFScreenGetBackingScaleFactor();

  topLevelView = self->_private->topLevelView;

  [(PDFKitTextView *)self _applyScale:topLevelView toView:v5];
}

- (void)_applyScale:(double)scale toView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy setContentScaleFactor:scale];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [viewCopy subviews];
  v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        [(PDFKitTextView *)self _applyScale:*(*(&v12 + 1) + 8 * v11++) toView:scale];
      }

      while (v9 != v11);
      v9 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end