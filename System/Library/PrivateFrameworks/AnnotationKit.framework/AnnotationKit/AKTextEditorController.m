@interface AKTextEditorController
+ (id)textContentTypeFromCRFormContentType:(unint64_t)a3;
- (AKController)controller;
- (AKPageController)pageController;
- (AKTextAnnotationProtocol)annotation;
- (AKTextEditorController)initWithController:(id)a3;
- (BOOL)_doHandleBackTab;
- (BOOL)_doHandleTab;
- (BOOL)isEditing;
- (CGRect)_editorFrameForTextBoundsInModel:(CGRect)a3;
- (id)_newScaledPaths:(id)a3 withScaleFactor:(double)a4 aboutCenter:(CGPoint)a5;
- (void)_adjustAnnotationFrameToFitText;
- (void)_adjustEditorToFitAnnotation:(id)a3 withText:(id)a4;
- (void)_beginEditingAnnotation:(id)a3 withPageController:(id)a4 selectAllText:(BOOL)a5 withPencil:(BOOL)a6;
- (void)_commitToModelWithoutEndingEditing;
- (void)_endEditing;
- (void)_firstResponderDidChange:(id)a3;
- (void)_registerForFirstResponderNotifications;
- (void)_unregisterForFirstResponderNotifications;
- (void)_updateTextView:(id)a3 withFrame:(CGRect)a4 andOrientation:(int64_t)a5 additionalRotation:(double)a6;
- (void)beginEditingAnnotation:(id)a3 withPageController:(id)a4 selectAllText:(BOOL)a5 withPencil:(BOOL)a6;
- (void)commitToModelWithoutEndingEditing;
- (void)dealloc;
- (void)endEditing;
@end

@implementation AKTextEditorController

- (AKTextEditorController)initWithController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AKTextEditorController;
  v5 = [(AKTextEditorController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AKTextEditorController *)v5 setController:v4];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(AKTextEditorController *)self textView];
  [v3 setDelegate:0];

  [(AKTextEditorController *)self setTextStorage:0];
  [(AKTextEditorController *)self setTextView:0];
  [(AKTextEditorController *)self setTextViewContainer:0];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = AKTextEditorController;
  [(AKTextEditorController *)&v5 dealloc];
}

- (void)beginEditingAnnotation:(id)a3 withPageController:(id)a4 selectAllText:(BOOL)a5 withPencil:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23F4BA470;
  v14[3] = &unk_278C7C470;
  v14[4] = self;
  v15 = v10;
  v16 = v11;
  v17 = a5;
  v18 = a6;
  v12 = v11;
  v13 = v10;
  [AKController performBlockOnMainThread:v14];
}

- (void)commitToModelWithoutEndingEditing
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_23F4BA500;
  v2[3] = &unk_278C7B540;
  v2[4] = self;
  [AKController performBlockOnMainThread:v2];
}

- (void)endEditing
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_23F4BA580;
  v2[3] = &unk_278C7B540;
  v2[4] = self;
  [AKController performBlockOnMainThread:v2];
}

- (void)_beginEditingAnnotation:(id)a3 withPageController:(id)a4 selectAllText:(BOOL)a5 withPencil:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v113[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(AKTextEditorController *)self annotation];
  v13 = v12;
  if (v12 == v10)
  {
    v14 = [v10 isEditingText];

    if (v14)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v99 = v7;
  [(AKTextEditorController *)self _endEditing];
  v15 = [(AKTextEditorController *)self controller];
  [v15 didBeginEditingAnnotation:self];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(AKTextEditorController *)self setPageController:v11];
  [(AKTextEditorController *)self setAnnotation:v10];
  v112 = AKEditingTextAnnotationKey;
  v113[0] = v10;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:&v112 count:1];
  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = AKWillBeginEditingTextAnnotationNotification;
  v19 = [v11 controller];
  [v17 postNotificationName:v18 object:v19 userInfo:v16];

  [v10 setIsEditingText:1];
  [v10 setShouldUseAppearanceOverride:0];
  v20 = [v11 pageModelController];
  v21 = [v20 mutableSetValueForKey:@"selectedAnnotations"];

  v22 = [MEMORY[0x277CBEB98] setWithObject:v10];
  v102 = v21;
  [v21 setSet:v22];

  v23 = [v10 annotationText];
  v24 = v6;
  if (v6)
  {
    v25 = 0;
  }

  else
  {
    v25 = [AKTextAnnotationAttributeHelper placeholderTextOfAnnotation:v10];
  }

  if ([v23 length])
  {
    v26 = [v23 string];
    v27 = [v25 string];
    v94 = [v26 isEqualToString:v27];
  }

  else
  {
    v28 = v25;

    v94 = [v28 length] != 0;
    v23 = v28;
  }

  v101 = v25;
  if (![v23 length])
  {
    if ([v10 isMemberOfClass:objc_opt_class()])
    {
      v29 = [v10 typingAttributes];
      v30 = [v29 mutableCopy];

      v31 = [v10 strokeColor];
      [v30 setObject:v31 forKey:*MEMORY[0x277D740C0]];

      [v10 setTypingAttributes:v30];
    }

    v32 = [v10 typingAttributes];
    v33 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:&stru_28519E870 attributes:v32];

    v23 = v33;
  }

  v34 = objc_alloc_init(MEMORY[0x277CCAD90]);
  [(AKTextEditorController *)self setTextViewUndoManager:v34];

  v108 = 0u;
  v109 = 0u;
  v107 = 0uLL;
  v106 = 0;
  LOBYTE(v87) = 1;
  [AKTextAnnotationRenderHelper getAnnotationRectangle:0 textBounds:&v108 containerSize:&v107 exclusionPaths:&v106 isTextClipped:0 forAnnotation:v10 onPageController:*MEMORY[0x277CBF348] orInContext:*(MEMORY[0x277CBF348] + 8) shouldAlignToPixels:*MEMORY[0x277CBF3A0] optionalText:*(MEMORY[0x277CBF3A0] + 8) optionalCenter:*(MEMORY[0x277CBF3A0] + 16) optionalProposedRectangle:*(MEMORY[0x277CBF3A0] + 24), v11, 0, v87, v23];
  v35 = v106;
  [(AKTextEditorController *)self _editorFrameForTextBoundsInModel:v108, v109];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v105 = 0.0;
  [AKGeometryHelper effectiveDrawingBoundsForAnnotation:v10 forDisplay:1 pageControllerOrNil:v11 outScaleFactor:&v105];
  v44 = [v11 overlayView];
  v45 = [v44 akEnclosingScrollView];
  [v45 akMagnification];
  v47 = v46;

  v103 = v47 * v105;
  [(AKTextEditorController *)self setModelToEditorScaleFactor:?];
  [(AKTextEditorController *)self setHandleCompensatingScaleFactor:v47];
  [v10 originalModelBaseScaleFactor];
  [(AKTextEditorController *)self setRenderingTextStorageScaleFactor:v103 * v48];
  __asm { FMOV            V1.2D, #0.5 }

  v54 = [(AKTextEditorController *)self _newScaledPaths:v35 withScaleFactor:v103 aboutCenter:vmulq_f64(v107, _Q1)];

  v107 = vmulq_n_f64(v107, v103);
  [(AKTextEditorController *)self renderingTextStorageScaleFactor];
  v55 = [AKTextAnnotationAttributeHelper newTextStorage:v23 byApplyingScaleFactor:?];
  v56 = objc_alloc_init(AKTextLayoutManager);
  v104 = v55;
  [v55 addLayoutManager:v56];
  v57 = objc_alloc(MEMORY[0x277D74278]);
  v58 = [v57 initWithContainerSize:*&v107];
  v98 = v54;
  [v58 setExclusionPaths:v54];
  v97 = v56;
  [(AKTextLayoutManager *)v56 addTextContainer:v58];
  v96 = v58;
  v59 = [[AKTextView alloc] initWithFrame:v58 textContainer:v37, v39, v41, v43];
  v60 = [v10 typingAttributes];
  [(AKTextEditorController *)self renderingTextStorageScaleFactor];
  v93 = [AKTextAnnotationAttributeHelper typingAttributes:v60 byApplyingScaleFactor:?];
  [(AKTextView *)v59 setTypingAttributes:?];
  if (objc_opt_respondsToSelector())
  {
    -[AKTextView setMaximumNumberOfCharacters:](v59, "setMaximumNumberOfCharacters:", [v10 maximumNumberOfCharacters]);
  }

  v61 = [v60 objectForKeyedSubscript:@"AKTextAnnotationTypingAttributesTextContentTypeKey"];
  v92 = v61;
  if (v61)
  {
    [(AKTextView *)v59 setTextContentType:v61];
    goto LABEL_23;
  }

  v62 = [v10 textContentType];

  if (v62)
  {
    v63 = [v10 textContentType];
LABEL_21:
    [(AKTextView *)v59 setTextContentType:v63];
    goto LABEL_22;
  }

  v63 = [objc_opt_class() textContentTypeFromCRFormContentType:{objc_msgSend(v10, "formContentType")}];
  if (v63)
  {
    goto LABEL_21;
  }

LABEL_22:

LABEL_23:
  [(AKTextView *)v59 setDelegate:self];
  -[AKTextView setEditable:](v59, "setEditable:", [v10 isDetectedSignature] ^ 1);
  [(AKTextView *)v59 setSelectable:1];
  v64 = [MEMORY[0x277D75348] clearColor];
  [(AKTextView *)v59 setBackgroundColor:v64];

  v65 = [(AKTextView *)v59 textContainer];
  [v65 setLineFragmentPadding:0.0];

  v66 = [(AKTextView *)v59 textContainer];
  [v66 setWidthTracksTextView:0];

  v67 = [(AKTextView *)v59 textContainer];
  [v67 setHeightTracksTextView:0];

  [(AKTextView *)v59 setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  [(AKTextView *)v59 setScrollEnabled:0];
  if (v24 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(AKTextView *)v59 set_textInputSource:3];
  }

  v100 = v94 | v99;
  [(AKTextEditorController *)self setTextView:v59];
  [(AKTextEditorController *)self setTextStorage:v104];
  v68 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v37, v39, v41, v43}];
  [(AKTextEditorController *)self setTextViewContainer:v68];

  v69 = [v11 overlayView];
  v70 = [(AKTextEditorController *)self textViewContainer];
  [v69 addSubview:v70];

  v71 = [(AKTextEditorController *)self textViewContainer];
  [v71 addSubview:v59];

  [(AKTextView *)v59 setClipsToBounds:0];
  v72 = [(AKTextView *)v59 superview];
  [v72 setClipsToBounds:0];

  v73 = [(AKTextEditorController *)self controller];
  v74 = [v73 delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v74 shouldAddTabControlsToTextEditorForAnnotation:v10 forAnnotationController:v73])
  {
    [(AKTextView *)v59 setKeyCommandDelegate:self];
    v90 = v60;
    v91 = v16;
    v75 = objc_alloc(MEMORY[0x277D751E0]);
    [MEMORY[0x277D755B8] systemImageNamed:@"chevron.up"];
    v76 = v95 = v11;
    v89 = [v75 initWithImage:v76 style:0 target:self action:sel_handleBackTabCommand];

    v77 = objc_alloc(MEMORY[0x277D751E0]);
    v78 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down"];
    v88 = [v77 initWithImage:v78 style:0 target:self action:sel_handleTabCommand];

    v79 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v80 = objc_alloc(MEMORY[0x277D751F0]);
    v111[0] = v89;
    v111[1] = v88;
    v111[2] = v79;
    v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:3];
    v82 = [v80 initWithBarButtonItems:v81 representativeItem:0];

    v110 = v82;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
    v84 = [(AKTextView *)v59 inputAssistantItem];
    [v84 setLeadingBarButtonGroups:v83];

    v60 = v90;
    v11 = v95;

    v16 = v91;
  }

  [(AKTextEditorController *)self _adjustEditorToFitAnnotation:v10 withText:v23];
  [(AKTextEditorController *)self _adjustAnnotationFrameToFitText];
  [MEMORY[0x277CD9FF0] commit];
  self->_wantsTextViewBecomeFirstResponder = 1;
  [(AKTextView *)v59 becomeFirstResponder];
  [(AKTextEditorController *)self _registerForFirstResponderNotifications];
  if (v100)
  {
    [(AKTextView *)v59 selectAll:self];
  }

  else
  {
    [(AKTextEditorController *)self textStorage];
    v86 = v85 = v60;
    -[AKTextView setSelectedRange:](v59, "setSelectedRange:", [v86 length], 0);

    v60 = v85;
  }

LABEL_33:
}

- (void)_commitToModelWithoutEndingEditing
{
  if ([(AKTextEditorController *)self isEditing])
  {
    v3 = [(AKTextEditorController *)self annotation];
    if (v3)
    {
      v17 = v3;
      [(AKTextEditorController *)self renderingTextStorageScaleFactor];
      v5 = 1.0 / v4;
      v6 = [(AKTextEditorController *)self textStorage];
      v7 = [AKTextAnnotationAttributeHelper newTextStorage:v6 byApplyingScaleFactor:v5];

      if ([v7 length])
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      [v17 setAnnotationText:v8];
      v9 = [(AKTextEditorController *)self textView];
      v10 = [v9 typingAttributes];

      if (v10)
      {
        v11 = [(AKTextEditorController *)self textView];
        v12 = [v11 typingAttributes];
        v13 = [v12 objectForKey:*MEMORY[0x277D740A8]];

        if (v13)
        {
          v14 = [(AKTextEditorController *)self textView];
          v15 = [v14 typingAttributes];
          v16 = [AKTextAnnotationAttributeHelper typingAttributes:v15 byApplyingScaleFactor:v5];

          [v17 setTypingAttributes:v16];
        }
      }

      v3 = v17;
    }
  }
}

- (void)_endEditing
{
  v23[1] = *MEMORY[0x277D85DE8];
  self->_wantsTextViewBecomeFirstResponder = 0;
  v3 = [(AKTextEditorController *)self controller];
  [v3 didEndEditingAnnotation:self];

  [(AKTextEditorController *)self _unregisterForFirstResponderNotifications];
  if ([(AKTextEditorController *)self isEditing]&& ![(AKTextEditorController *)self isInEndEditing])
  {
    [(AKTextEditorController *)self setIsInEndEditing:1];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v4 = [(AKTextEditorController *)self annotation];
    [(AKTextEditorController *)self _commitToModelWithoutEndingEditing];
    [MEMORY[0x277CD9FF0] commit];
    v5 = [(AKTextEditorController *)self textView];
    v6 = [v5 superview];
    v7 = [v6 superview];

    if (v7)
    {
      v8 = [(AKTextEditorController *)self textView];
      [v8 resignFirstResponder];

      v9 = [(AKTextEditorController *)self textView];
      v10 = [v9 superview];
      [v10 removeFromSuperview];

      v11 = [(AKTextEditorController *)self textView];
      [v11 removeFromSuperview];
    }

    [(AKTextEditorController *)self setTextView:0];
    [(AKTextEditorController *)self setTextViewUndoManager:0];
    [(AKTextEditorController *)self setTextStorage:0];
    [v4 setIsEditingText:0];
    v22 = AKEditingTextAnnotationKey;
    v23[0] = v4;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = AKDidEndEditingTextAnnotationNotification;
    v15 = [(AKTextEditorController *)self pageController];
    v16 = [v15 controller];
    [v13 postNotificationName:v14 object:v16 userInfo:v12];

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v17 = [v4 annotationText];
    v18 = [v17 length];

    if (!v18)
    {
      v19 = [(AKTextEditorController *)self pageController];
      objc_opt_class();
      if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_opt_class() deleteAfterEditingIfEmpty])
      {
        v20 = [v19 pageModelController];
        v21 = [v20 mutableArrayValueForKey:@"annotations"];
        [v21 removeObject:v4];
      }

      else
      {
        v20 = [AKTextAnnotationAttributeHelper placeholderTextOfAnnotation:v4];
        [AKTextAnnotationAttributeHelper adjustBoundsOfAnnotation:v4 toFitOptionalText:v20 onPageController:v19];
      }
    }

    [(AKTextEditorController *)self setAnnotation:0];
    [(AKTextEditorController *)self setPageController:0];
    [MEMORY[0x277CD9FF0] commit];
    [(AKTextEditorController *)self setIsInEndEditing:0];
  }
}

+ (id)textContentTypeFromCRFormContentType:(unint64_t)a3
{
  v3 = 0;
  switch(a3)
  {
    case 1uLL:
      break;
    case 2uLL:
      v4 = MEMORY[0x277D76FF0];
      goto LABEL_40;
    case 3uLL:
      v4 = MEMORY[0x277D76FF8];
      goto LABEL_40;
    case 4uLL:
      v4 = MEMORY[0x277D76FD0];
      goto LABEL_40;
    case 5uLL:
    case 0x1AuLL:
      v4 = MEMORY[0x277D76FE8];
      goto LABEL_40;
    case 6uLL:
      v4 = MEMORY[0x277D76FC0];
      goto LABEL_40;
    case 7uLL:
      v4 = MEMORY[0x277D77000];
      goto LABEL_40;
    case 8uLL:
      v4 = MEMORY[0x277D77010];
      goto LABEL_40;
    case 9uLL:
      v4 = MEMORY[0x277D76FD8];
      goto LABEL_40;
    case 0xAuLL:
      v4 = MEMORY[0x277D77028];
      goto LABEL_40;
    case 0xBuLL:
      v4 = MEMORY[0x277D76FE0];
      goto LABEL_40;
    case 0xCuLL:
      v4 = MEMORY[0x277D76FC8];
      goto LABEL_40;
    case 0xDuLL:
      v4 = MEMORY[0x277D77040];
      goto LABEL_40;
    case 0xEuLL:
      v4 = MEMORY[0x277D77048];
      goto LABEL_40;
    case 0xFuLL:
      v4 = MEMORY[0x277D76F48];
      goto LABEL_40;
    case 0x10uLL:
      v4 = MEMORY[0x277D76F58];
      goto LABEL_40;
    case 0x11uLL:
      v4 = MEMORY[0x277D76F50];
      goto LABEL_40;
    case 0x12uLL:
      v4 = MEMORY[0x277D77050];
      goto LABEL_40;
    case 0x13uLL:
      v4 = MEMORY[0x277D76F60];
      goto LABEL_40;
    case 0x14uLL:
      v4 = MEMORY[0x277D77038];
      goto LABEL_40;
    case 0x15uLL:
      v4 = MEMORY[0x277D76FB8];
      goto LABEL_40;
    case 0x16uLL:
      v4 = MEMORY[0x277D77088];
      goto LABEL_40;
    case 0x17uLL:
      v4 = MEMORY[0x277D77030];
      goto LABEL_40;
    case 0x18uLL:
      v4 = MEMORY[0x277D76F90];
      goto LABEL_40;
    case 0x19uLL:
      v4 = MEMORY[0x277D76F88];
      goto LABEL_40;
    case 0x1BuLL:
      v4 = MEMORY[0x277D76F80];
      goto LABEL_40;
    case 0x1CuLL:
      v4 = MEMORY[0x277D76F98];
      goto LABEL_40;
    case 0x1DuLL:
      v4 = MEMORY[0x277D76F68];
      goto LABEL_40;
    case 0x1EuLL:
      v4 = MEMORY[0x277D76F70];
      goto LABEL_40;
    case 0x1FuLL:
      v4 = MEMORY[0x277D76F78];
      goto LABEL_40;
    case 0x20uLL:
      v4 = MEMORY[0x277D76FA0];
      goto LABEL_40;
    case 0x21uLL:
      v4 = MEMORY[0x277D76FA8];
      goto LABEL_40;
    case 0x2AuLL:
      v4 = MEMORY[0x277D77080];
      goto LABEL_40;
    case 0x2BuLL:
      v4 = MEMORY[0x277D77060];
      goto LABEL_40;
    case 0x2CuLL:
      v4 = MEMORY[0x277D77078];
      goto LABEL_40;
    case 0x2DuLL:
      v4 = MEMORY[0x277D77058];
      goto LABEL_40;
    case 0x2EuLL:
      v4 = MEMORY[0x277D77070];
      goto LABEL_40;
    case 0x31uLL:
      v4 = MEMORY[0x277D77068];
      goto LABEL_40;
    case 0x34uLL:
      v4 = MEMORY[0x277D76FB0];
LABEL_40:
      v3 = *v4;
      break;
    default:
      NSLog(&cfstr_Crformcontentt.isa, a2, a3);
      v3 = 0;
      break;
  }

  return v3;
}

- (BOOL)isEditing
{
  v3 = [(AKTextEditorController *)self textView];
  if (v3)
  {
    v4 = [(AKTextEditorController *)self textView];
    v5 = [v4 superview];
    v6 = [v5 superview];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_newScaledPaths:(id)a3 withScaleFactor:(double)a4 aboutCenter:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (fabs(a4 + -1.0) >= 0.0005)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v19 = *(MEMORY[0x277CBF2C0] + 16);
    *&v28.a = *MEMORY[0x277CBF2C0];
    v20 = *&v28.a;
    *&v28.c = v19;
    *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
    v18 = *&v28.tx;
    CGAffineTransformMakeTranslation(&t2, -x, -y);
    *&t1.a = v20;
    *&t1.c = v19;
    *&t1.tx = v18;
    CGAffineTransformConcat(&v28, &t1, &t2);
    CGAffineTransformMakeScale(&t1, a4, a4);
    v25 = v28;
    CGAffineTransformConcat(&t2, &v25, &t1);
    v28 = t2;
    CGAffineTransformMakeTranslation(&t1, x * a4, y * a4);
    v25 = v28;
    CGAffineTransformConcat(&t2, &v25, &t1);
    v28 = t2;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * i) copy];
          t2 = v28;
          [v16 applyTransform:&t2];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (void)_adjustAnnotationFrameToFitText
{
  if (![(AKTextEditorController *)self isInAdjustAnnotationFrameToFitText])
  {
    [(AKTextEditorController *)self setIsInAdjustAnnotationFrameToFitText:1];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v3 = [(AKTextEditorController *)self pageController];
    v4 = [(AKTextEditorController *)self annotation];
    if (v4)
    {
      v5 = [(AKTextEditorController *)self textStorage];
      v6 = [v5 length];

      if (v6)
      {
        v7 = [(AKTextEditorController *)self textStorage];
        [(AKTextEditorController *)self renderingTextStorageScaleFactor];
        v9 = [AKTextAnnotationAttributeHelper newTextStorage:v7 byApplyingScaleFactor:1.0 / v8];
      }

      else
      {
        v7 = [v4 typingAttributes];
        v9 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:&stru_28519E870 attributes:v7];
        [(AKTextEditorController *)self renderingTextStorageScaleFactor];
        v10 = [AKTextAnnotationAttributeHelper typingAttributes:v7 byApplyingScaleFactor:?];
        v11 = [(AKTextEditorController *)self textView];
        [v11 setTypingAttributes:v10];
      }

      v12 = [(AKTextEditorController *)self textStorage];
      v13 = [v12 length];

      if (v13 >= 2)
      {
        v24 = 0;
        v14 = [(AKTextEditorController *)self textStorage];
        v15 = [v14 attributesAtIndex:0 effectiveRange:&v23];

        v16 = *MEMORY[0x277D741E0];
        v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277D741E0]];

        if (v17)
        {
          v18 = v13 - (v13 == [v4 maximumNumberOfCharacters]);
          if (v18 != v24)
          {
            v19 = [(AKTextEditorController *)self textStorage];
            [v19 removeAttribute:v16 range:{0, v13}];

            v20 = [(AKTextEditorController *)self textStorage];
            v21 = [v15 objectForKeyedSubscript:v16];
            [v20 addAttribute:v16 value:v21 range:{0, v18}];

            [v9 removeAttribute:v16 range:{0, v13}];
            v22 = [v15 objectForKeyedSubscript:v16];
            [v9 addAttribute:v16 value:v22 range:{0, v18}];
          }
        }
      }

      [AKTextAnnotationAttributeHelper adjustBoundsOfAnnotation:v4 toFitOptionalText:v9 onPageController:v3];
      if (![v4 conformsToAKRectangularAnnotationProtocol] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [(AKTextEditorController *)self commitToModelWithoutEndingEditing];
      }

      [(AKTextEditorController *)self _adjustEditorToFitAnnotation:v4 withText:v9];
      [MEMORY[0x277CD9FF0] commit];
      [(AKTextEditorController *)self setIsInAdjustAnnotationFrameToFitText:0];
    }
  }
}

- (void)_adjustEditorToFitAnnotation:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CD9FF0];
  v8 = a4;
  [v7 begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v9 = [(AKTextEditorController *)self pageController];
  v37 = 0u;
  v38 = 0u;
  v36 = 0uLL;
  v35 = 0;
  LOBYTE(v33) = 1;
  [AKTextAnnotationRenderHelper getAnnotationRectangle:0 textBounds:&v37 containerSize:&v36 exclusionPaths:&v35 isTextClipped:0 forAnnotation:v6 onPageController:*MEMORY[0x277CBF348] orInContext:*(MEMORY[0x277CBF348] + 8) shouldAlignToPixels:*MEMORY[0x277CBF3A0] optionalText:*(MEMORY[0x277CBF3A0] + 8) optionalCenter:*(MEMORY[0x277CBF3A0] + 16) optionalProposedRectangle:*(MEMORY[0x277CBF3A0] + 24), v9, 0, v33, v8];

  v10 = v35;
  [(AKTextEditorController *)self _editorFrameForTextBoundsInModel:v37, v38];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(AKTextEditorController *)self modelToEditorScaleFactor];
  v34 = v19;
  __asm { FMOV            V1.2D, #0.5 }

  v25 = [AKTextEditorController _newScaledPaths:"_newScaledPaths:withScaleFactor:aboutCenter:" withScaleFactor:v10 aboutCenter:?];

  v36 = vmulq_n_f64(v36, v34);
  v26 = [(AKTextEditorController *)self textView];
  v27 = [v26 textContainer];
  [v27 akSetContainerSize:*&v36];

  v28 = [(AKTextEditorController *)self textView];
  v29 = [v28 textContainer];
  [v29 setExclusionPaths:v25];

  v30 = 0.0;
  if ([v6 conformsToAKRotatableAnnotationProtocol])
  {
    [v6 rotationAngle];
    v30 = v31;
  }

  v32 = [(AKTextEditorController *)self textView];
  -[AKTextEditorController _updateTextView:withFrame:andOrientation:additionalRotation:](self, "_updateTextView:withFrame:andOrientation:additionalRotation:", v32, [v6 originalExifOrientation], v12, v14, v16, v18, v30);

  [MEMORY[0x277CD9FF0] commit];
}

- (CGRect)_editorFrameForTextBoundsInModel:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([AKGeometryHelper isUnpresentableRect:?])
  {
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v12 = [(AKTextEditorController *)self pageController];
    [v12 convertRectFromModelToOverlay:{x, y, width, height}];
    v18 = CGRectIntegral(v17);
    v19 = CGRectInset(v18, -1.0, -1.0);
    v8 = v19.origin.x;
    v9 = v19.origin.y;
    v10 = v19.size.width;
    v11 = v19.size.height;
  }

  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_updateTextView:(id)a3 withFrame:(CGRect)a4 andOrientation:(int64_t)a5 additionalRotation:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = [AKGeometryHelper inverseExifOrientation:a5];
  v84 = *(MEMORY[0x277CBF2C0] + 16);
  *&v92.a = *MEMORY[0x277CBF2C0];
  v86 = *&v92.a;
  *&v92.c = v84;
  *&v92.tx = *(MEMORY[0x277CBF2C0] + 32);
  v83 = *&v92.tx;
  CGAffineTransformMakeScale(&t2, 1.0, -1.0);
  *&t1.a = v86;
  *&t1.c = v84;
  *&t1.tx = v83;
  CGAffineTransformConcat(&v92, &t1, &t2);
  [AKGeometryHelper affineTransformForExifOrientation:v14 aboutCenter:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v89 = v92;
  CGAffineTransformConcat(&t2, &v89, &t1);
  v92 = t2;
  CGAffineTransformMakeRotation(&t1, a6);
  v89 = v92;
  CGAffineTransformConcat(&t2, &v89, &t1);
  v92 = t2;
  [(AKTextEditorController *)self handleCompensatingScaleFactor];
  v16 = v15;
  CGAffineTransformMakeScale(&t1, 1.0 / v15, 1.0 / v15);
  v89 = v92;
  CGAffineTransformConcat(&t2, &v89, &t1);
  v92 = t2;
  v93.origin.x = x;
  v93.origin.y = y;
  v93.size.width = width;
  v93.size.height = height;
  MidX = CGRectGetMidX(v93);
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = width;
  v94.size.height = height;
  [AKGeometryHelper rectWithSize:width * v16 centeredAtPoint:height * v16, MidX, CGRectGetMidY(v94)];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v13 superview];
  *&t2.a = v86;
  *&t2.c = v84;
  *&t2.tx = v83;
  [v26 setTransform:&t2];

  *&t2.a = v86;
  *&t2.c = v84;
  *&t2.tx = v83;
  [v13 setTransform:&t2];
  v27 = [v13 superview];
  [v27 setFrame:{v19, v21, v23, v25}];

  v28 = [v13 superview];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  if ([AKGeometryHelper exifOrientationHasReversedAxes:v14])
  {
    v95.origin.x = v30;
    v95.origin.y = v32;
    v95.size.width = v34;
    v95.size.height = v36;
    v87 = v19;
    v37 = CGRectGetHeight(v95);
    v96.origin.x = v30;
    v96.origin.y = v32;
    v96.size.width = v34;
    v96.size.height = v36;
    v85 = v21;
    v38 = CGRectGetWidth(v96);
    v97.origin.x = v30;
    v97.origin.y = v32;
    v97.size.width = v34;
    v97.size.height = v36;
    *&v83 = v25;
    v39 = v23;
    v40 = CGRectGetMidX(v97);
    v98.origin.x = v30;
    v98.origin.y = v32;
    v98.size.width = v34;
    v98.size.height = v36;
    MidY = CGRectGetMidY(v98);
    v99.origin.x = v30;
    v99.origin.y = v32;
    v99.size.width = v37;
    v99.size.height = v38;
    v42 = v40 - CGRectGetWidth(v99) * 0.5;
    v100.origin.x = v30;
    v100.origin.y = v32;
    v100.size.width = v37;
    v100.size.height = v38;
    v32 = MidY - CGRectGetHeight(v100) * 0.5;
    v36 = v38;
    v21 = v85;
    v34 = v37;
    v19 = v87;
    v30 = v42;
    v23 = v39;
    v25 = *&v83;
  }

  [v13 frame];
  v105.origin.x = v30;
  v105.origin.y = v32;
  v105.size.width = v34;
  v105.size.height = v36;
  if (CGRectEqualToRect(v101, v105))
  {
    v102.origin.x = v30;
    v102.origin.y = v32;
    v102.size.width = v34;
    v102.size.height = v36;
    v103 = CGRectInset(v102, -1.0, -1.0);
    [v13 setFrame:{v103.origin.x, v103.origin.y, v103.size.width, v103.size.height}];
  }

  [v13 setFrame:{v30, v32, v34, v36}];
  v88 = v92;
  v43 = [v13 superview];
  t2 = v88;
  [v43 setTransform:&t2];

  v44 = [(AKTextEditorController *)self pageController];
  [v44 visibleRectOfOverlay];
  [v44 convertRectFromModelToOverlay:?];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v104.origin.x = v19;
  v104.origin.y = v21;
  v104.size.width = v23;
  v104.size.height = v25;
  v106.origin.x = v46;
  v106.origin.y = v48;
  v106.size.width = v50;
  v106.size.height = v52;
  v53 = CGRectIntersectsRect(v104, v106);
  v54 = [(AKTextEditorController *)self textViewMaskLayer];
  v55 = v54;
  if (v53)
  {

    if (v55)
    {
      v56 = [(AKTextEditorController *)self textViewMaskLayer];
      v57 = [v56 sublayers];
      v55 = [v57 firstObject];
    }

    else
    {
      v58 = [MEMORY[0x277CD9ED0] layer];
      [(AKTextEditorController *)self setTextViewMaskLayer:v58];

      v59 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
      v60 = [v59 CGColor];
      v61 = [(AKTextEditorController *)self textViewMaskLayer];
      [v61 setBackgroundColor:v60];

      v55 = [MEMORY[0x277CD9ED0] layer];
      v62 = [MEMORY[0x277D75348] blackColor];
      [v55 setBackgroundColor:{objc_msgSend(v62, "CGColor")}];

      v56 = [(AKTextEditorController *)self textViewMaskLayer];
      [v56 addSublayer:v55];
    }

    [v13 bounds];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = [(AKTextEditorController *)self textViewMaskLayer];
    [v71 setFrame:{v64, v66, v68, v70}];

    v72 = [v44 overlayView];
    [v13 convertRect:v72 fromView:{v46, v48, v50, v52}];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    [v55 setFrame:{v74, v76, v78, v80}];
    v81 = [(AKTextEditorController *)self textViewMaskLayer];
    v82 = [v13 layer];
    [v82 setMask:v81];
  }

  else
  {
    [v54 removeFromSuperlayer];
  }
}

- (BOOL)_doHandleTab
{
  v3 = [(AKTextEditorController *)self controller];
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AKTextEditorController *)self annotation];
    v6 = [v4 handleTabInTextEditorForAnnotation:v5 forAnnotationController:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_doHandleBackTab
{
  v3 = [(AKTextEditorController *)self controller];
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AKTextEditorController *)self annotation];
    v6 = [v4 handleBackTabInTextEditorForAnnotation:v5 forAnnotationController:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_registerForFirstResponderNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__firstResponderDidChange_ name:*MEMORY[0x277D77648] object:0];
}

- (void)_unregisterForFirstResponderNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D77648] object:0];
}

- (void)_firstResponderDidChange:(id)a3
{
  v4 = a3;
  if (!self->_wantsTextViewBecomeFirstResponder)
  {
    v7 = v4;
    v5 = [(AKTextEditorController *)self textView];
    v6 = [v5 isFirstResponder];

    v4 = v7;
    if ((v6 & 1) == 0)
    {
      self->_wantsTextViewBecomeFirstResponder = 0;
      [(AKTextEditorController *)self endEditing];
      v4 = v7;
    }
  }
}

- (AKTextAnnotationProtocol)annotation
{
  WeakRetained = objc_loadWeakRetained(&self->_annotation);

  return WeakRetained;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end