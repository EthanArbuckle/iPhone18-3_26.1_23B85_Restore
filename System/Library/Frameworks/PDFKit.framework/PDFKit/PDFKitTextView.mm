@interface PDFKitTextView
- (BOOL)becomeFirstResponder;
- (BOOL)handleBackTab;
- (BOOL)handleTab;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (PDFKitTextView)initWithAnnotation:(id)a3 pdfPageView:(id)a4 pdfView:(id)a5;
- (id)annotation;
- (void)_adjustScrollViewForKeyboardNotification:(id)a3;
- (void)_applyScale:(double)a3 toView:(id)a4;
- (void)_commitTextFromTextView:(id)a3;
- (void)_setAttributedString:(id)a3;
- (void)_setFont:(id)a3;
- (void)_setString:(id)a3;
- (void)_setup;
- (void)_setupTopLevelView;
- (void)_textWidgetDone;
- (void)_updateScaleFactor;
- (void)adjustScrollViewToAccomodateKeyboardStartingFrame:(double)a3 endingFrame:(double)a4 annotationFrame:(double)a5 withAnimationDuration:(CGFloat)a6 curve:(CGFloat)a7;
- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)a3;
- (void)insertTextSuggestion:(id)a3 completionHandler:(id)a4;
- (void)textViewDidChange:(id)a3;
@end

@implementation PDFKitTextView

- (PDFKitTextView)initWithAnnotation:(id)a3 pdfPageView:(id)a4 pdfView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35.receiver = self;
  v35.super_class = PDFKitTextView;
  v11 = [(PDFKitTextView *)&v35 init];
  if (v11)
  {
    v12 = objc_alloc_init(PDFKitTextViewPrivate);
    v13 = v11->_private;
    v11->_private = v12;

    objc_storeWeak(&v11->_private->annotation, v8);
    objc_storeWeak(&v11->_private->pdfPageView, v9);
    objc_storeWeak(&v11->_private->pdfView, v10);
    [v8 bounds];
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
    v34 = v8;
    v28 = v9;
    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v11 selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    v30 = [MEMORY[0x1E696AD88] defaultCenter];
    [v30 addObserver:v11 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

    v31 = [MEMORY[0x1E696AD88] defaultCenter];
    v32 = [v10 documentScrollView];
    [v31 addObserver:v11 selector:sel__didChangeZoomFactor_ name:@"PDFScrollViewDidChangeZoomFactor" object:v32];

    v9 = v28;
    v8 = v34;

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
  v3 = [(PDFTextWidgetTextView *)self->_private->textView becomeFirstResponder];
  if (v3)
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

  return v3;
}

- (void)insertTextSuggestion:(id)a3 completionHandler:(id)a4
{
  v5 = self->_private;
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&v5->pdfPageView);
  [WeakRetained populateFormFieldsWithAutoFillSuggestion:v7 completionHandler:v6];
}

- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)a3
{
  if (a3)
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

- (void)_commitTextFromTextView:(id)a3
{
  v40 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->annotation);
  v5 = [WeakRetained valueForAnnotationKey:@"/FT"];
  v6 = v5;
  if (WeakRetained && [v5 isEqualToString:@"/Tx"])
  {
    v7 = [v40 text];
    if ([v7 length])
    {
      v8 = [v40 endOfDocument];
      v9 = [v40 positionFromPosition:v8 offset:-1];

      v10 = [v40 endOfDocument];
      v11 = [v40 textRangeFromPosition:v9 toPosition:v10];

      [v40 firstRectForRange:v11];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [v40 textInputView];
      [v40 convertRect:v20 fromView:{v13, v15, v17, v19}];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [v40 bounds];
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
        v33 = [WeakRetained widgetStringValue];

        v7 = v33;
      }
    }

    v34 = [v40 selectedRange];
    v36 = v35;
    v37 = objc_loadWeakRetained(&self->_private->pdfPageView);
    [v37 setStringValue:v7 onTextWidgetAnnotation:WeakRetained withTextView:v40];

    if (v34 != [v40 selectedRange])
    {
      [v40 setSelectedRange:{v34 - 1, v36}];
    }

    v38 = [v40 text];
    v39 = [v38 length] != 0;

    [WeakRetained setAutofillEntryType:v39];
  }
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v6 = self->_private;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&v6->annotation);
  v9 = [WeakRetained isMultiline];

  v10 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v11 = [v7 rangeOfCharacterFromSet:v10];

  if (!((v11 == 0x7FFFFFFFFFFFFFFFLL) | v9 & 1))
  {
    [(PDFKitTextView *)self _textWidgetDone];
  }

  return (v11 == 0x7FFFFFFFFFFFFFFFLL) | v9 & 1;
}

- (void)textViewDidChange:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v5 = [v8 markedTextRange];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isEmpty];
    if (!WeakRetained)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 1;
    if (!WeakRetained)
    {
      goto LABEL_7;
    }
  }

  if (([WeakRetained formFillingUpdatesAnnotationOnEveryTextChange] & v7) == 1)
  {
    [(PDFKitTextView *)self _commitTextFromTextView:v8];
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

- (void)_adjustScrollViewForKeyboardNotification:(id)a3
{
  v65 = a3;
  v4 = [(PDFTextWidgetTextView *)self->_private->textView isFirstResponder];
  v5 = v65;
  if (v4)
  {
    v6 = [v65 userInfo];
    v7 = [v6 valueForKey:*MEMORY[0x1E69DDF98]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [v65 userInfo];
    v17 = [v16 valueForKey:*MEMORY[0x1E69DDFA0]];
    [v17 CGRectValue];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v64 = v24;

    v25 = [v65 userInfo];
    v26 = [v25 valueForKey:*MEMORY[0x1E69DDF40]];
    [v26 floatValue];
    v28 = v27;

    v29 = [v65 userInfo];
    v30 = [v29 valueForKey:*MEMORY[0x1E69DDF38]];
    v31 = [v30 unsignedIntegerValue];

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
      v47 = [v34 page];
      [WeakRetained convertRect:v47 fromPage:{v37, v40, v43, v46}];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      [WeakRetained convertRect:0 toView:{v49, v51, v53, v55}];
      [(PDFKitTextView *)self adjustScrollViewToAccomodateKeyboardStartingFrame:v31 endingFrame:v38 annotationFrame:v41 withAnimationDuration:v44 curve:v63, v62, v61, v60, v64, v56, v57, v58, v59, *&v35];
    }

    v5 = v65;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)adjustScrollViewToAccomodateKeyboardStartingFrame:(double)a3 endingFrame:(double)a4 annotationFrame:(double)a5 withAnimationDuration:(CGFloat)a6 curve:(CGFloat)a7
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 8) + 24));
  v26 = [WeakRetained documentScrollView];
  v27 = [v26 superview];
  [v26 frame];
  [v27 convertRect:0 toView:?];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v89.origin.x = v29;
  v89.origin.y = v31;
  v89.size.width = v33;
  v89.size.height = v35;
  v72 = -(a7 - CGRectGetMaxY(v89));
  v68 = *MEMORY[0x1E695F050];
  v71 = *(MEMORY[0x1E695F050] + 8);
  v70 = *(MEMORY[0x1E695F050] + 16);
  v69 = *(MEMORY[0x1E695F050] + 24);
  [v26 bounds];
  [v26 convertRect:0 toView:?];
  x = v90.origin.x;
  y = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;
  v95.origin.x = a6;
  v95.origin.y = a7;
  v95.size.width = a8;
  v95.size.height = a9;
  if (CGRectIntersectsRect(v90, v95))
  {
    v91.origin.x = x;
    v91.origin.y = y;
    v91.size.width = width;
    v91.size.height = height;
    v96.origin.x = a6;
    v96.origin.y = a7;
    v96.size.width = a8;
    v96.size.height = a9;
    v92 = CGRectIntersection(v91, v96);
    v65 = height - (CGRectGetHeight(v92) + 0.0);
    [v26 convertRect:0 fromView:{a12, a13, a14, a15}];
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

  [v26 contentInset];
  v53 = v52;
  [v26 _contentScrollInset];
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
      [v26 _setContentScrollInset:{v55, v57, v60, v59}];
      goto LABEL_21;
    }

    v61 = dispatch_time(0, (a16 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __124__PDFKitTextView_adjustScrollViewToAccomodateKeyboardStartingFrame_endingFrame_annotationFrame_withAnimationDuration_curve___block_invoke_2;
    block[3] = &unk_1E8151850;
    v74 = v26;
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
    v80 = v26;
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

- (void)_setString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [v4 length];
    v5 = v6;
    if (v4)
    {
      v4 = [(PDFTextWidgetTextView *)self->_private->textView setText:v6];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_setFont:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->annotation);
  v4 = [WeakRetained scaledFontForTextWidget];
  v5 = v4;
  if (v4)
  {
    [v4 pointSize];
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
  v5 = [v4 widgetStringValue];
  v6 = [v4 font];
  v7 = [v4 fontColor];
  v8 = [v4 alignment];
  v9 = [v4 backgroundColor];
  v69 = [v4 border];
  v10 = [v4 valueForAnnotationKey:@"/MK"];
  v68 = [v10 borderColor];

  v11 = [v4 shouldComb];
  v12 = [v4 isAppearanceStreamEmpty];
  [(PDFKitTextView *)self _setString:v5];
  v70 = v6;
  [(PDFKitTextView *)self _setFont:v6];
  v64 = v7;
  [(PDFKitTextView *)self _setFontColor:v7];
  [(PDFKitTextView *)self _setAlignment:v8];
  v13 = self->_private;
  textView = v13->textView;
  if (v12)
  {
    if (v9)
    {
      [(PDFTextWidgetTextView *)v13->textView setBackgroundColor:v9];
    }

    else
    {
      v17 = [MEMORY[0x1E69DC888] clearColor];
      [(PDFTextWidgetTextView *)textView setBackgroundColor:v17];
    }

    if (!v69 || ([v69 lineWidth], v18 <= 0.0))
    {
      v16 = -200.0;
      if (v11)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    v19 = [(PDFTextWidgetTextView *)self->_private->textView layer];
    if (v68)
    {
      [v19 setBorderColor:{objc_msgSend(v68, "CGColor")}];
    }

    else
    {
      v20 = [MEMORY[0x1E69DC888] blackColor];
      [v19 setBorderColor:{objc_msgSend(v20, "CGColor")}];
    }

    v15 = [(PDFTextWidgetTextView *)self->_private->textView layer];
    [v69 lineWidth];
    [v15 setBorderWidth:?];
    v16 = -200.0;
  }

  else
  {
    v15 = [MEMORY[0x1E69DC888] clearColor];
    [(PDFTextWidgetTextView *)textView setBackgroundColor:v15];
    v16 = 0.0;
  }

  if (v11)
  {
LABEL_16:
    [(PDFTextWidgetTextView *)self->_private->textView setAllowsEditingTextAttributes:1];
    v21 = [(PDFTextWidgetTextView *)self->_private->textView textContainer];
    [v21 setLineBreakMode:2];

    if (v5)
    {
      [(PDFKitTextView *)self _setAttributedString:v5];
    }
  }

LABEL_18:
  +[PDFAnnotationDrawing textInset];
  v23 = v22;
  v67 = WeakRetained;
  v65 = v5;
  v62 = v9;
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
    if (v5)
    {
      v28 = v5;
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
  v38 = [v4 autoFillTextContentType];
  [(PDFTextWidgetTextView *)v37 setTextContentType:v38];

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
  v50 = [(PDFTextWidgetTextView *)self->_private->textView inputAssistantItem];
  [v50 setLeadingBarButtonGroups:v49];

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
    v58 = [(PDFTextWidgetTextView *)self->_private->textView inputAssistantItem];
    [v58 setTrailingBarButtonGroups:v57];
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

  v60 = [(PDFTextWidgetTextView *)self->_private->textView layer];
  [v60 setZPosition:v16];

  v61 = [(PDFTextWidgetTextView *)self->_private->textView layer];
  [v61 setDrawsAsynchronously:1];

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

- (void)_setAttributedString:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = self->_private;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&v4->annotation);
  v7 = [WeakRetained font];
  v8 = [WeakRetained valueForAnnotationKey:@"/MaxLen"];
  v9 = [v8 integerValue];

  if (!v7)
  {
    v10 = MEMORY[0x1E69DB878];
    [(PDFTextWidgetTextView *)self->_private->textView frame];
    v7 = [v10 systemFontOfSize:v11 + -2.0];
  }

  v12 = v9;
  v26 = *MEMORY[0x1E69DB648];
  v13 = v26;
  v27[0] = v7;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [v5 sizeWithAttributes:v14];
  v16 = v15;

  v17 = [v5 length];
  [WeakRetained bounds];
  v19 = (v18 + -v16 / v17 * v12) / v12;
  v20 = [v5 length];
  v21 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5];

  v22 = *MEMORY[0x1E69DB660];
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  [v21 addAttribute:v22 value:v23 range:{0, v20}];

  [v21 addAttribute:*MEMORY[0x1E69DB668] value:&unk_1F4184228 range:{0, v20}];
  [v21 addAttribute:v13 value:v7 range:{0, v20}];
  v24 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v25 = [v24 mutableCopy];

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

- (void)_applyScale:(double)a3 toView:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [v6 setContentScaleFactor:a3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 subviews];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [(PDFKitTextView *)self _applyScale:*(*(&v12 + 1) + 8 * v11++) toView:a3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end