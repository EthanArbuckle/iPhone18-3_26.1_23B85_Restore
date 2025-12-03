@interface QLTextItemViewController
- (BOOL)_documentAttributesContainTextColors:(id)colors;
- (BOOL)_isContentPotentiallySuspicious:(id)suspicious context:(id)context;
- (BOOL)shouldAllowEditingContents;
- (BOOL)shouldEditByCreatingCopy;
- (BOOL)shouldRecognizeGestureRecognizer:(id)recognizer;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (UIEdgeInsets)customEdgeInsets;
- (UIPrintPageRenderer)pageRenderer;
- (UISimpleTextPrintFormatter)printFormatter;
- (id)_textInputShortcutsBarButtons;
- (id)displayedDocumentURLForItem:(id)item;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)registeredKeyCommands;
- (id)toolbarButtonsForTraitCollection:(id)collection;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_keyboardWillAppear:(id)appear;
- (void)_keyboardWillDisappear:(id)disappear;
- (void)_loadDocumentContent;
- (void)_saveDocumentContentIfNeeded;
- (void)_saveTextIfEdited:(BOOL)edited withCompletionHandler:(id)handler;
- (void)_saveTextIfEditedWithEditedCopy:(id)copy shouldDismissAfterSaving:(BOOL)saving completionHandler:(id)handler;
- (void)_setupTextViewColorsWithDocumentAttributes:(id)attributes;
- (void)_setupTextViewMarginsWithDocumentAttributes:(id)attributes;
- (void)_setupTextViewWithDocumentAttributes:(id)attributes;
- (void)_updateConstraintConstants:(BOOL)constants;
- (void)_updateTextViewInsets;
- (void)_updateViewConstraintsFromKeyboardAppearanceInfo:(id)info notificationName:(id)name;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)closeDocumentWithCompletionHandler:(id)handler;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)fontPickerViewControllerDidPickFont:(id)font;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)numberOfPagesWithSize:(CGSize)size completionHandler:(id)handler;
- (void)openDocumentWithCompletionHandler:(id)handler;
- (void)pdfDataForPageAtIndex:(int64_t)index withCompletionHandler:(id)handler;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)presentColorPicker;
- (void)presentFontPicker;
- (void)presentTextSizePicker;
- (void)savePreviewEditedCopyWithCompletionHandler:(id)handler;
- (void)setUpDocumentWithItem:(id)item;
- (void)setUpTextInputShortcutsBar;
- (void)textDocumentChangedRemotely:(id)remotely;
- (void)textSizePickerDidCancel;
- (void)updateContentFrame;
- (void)updateSelectionAttributesWithColor:(id)color oldColor:(id)oldColor range:(_NSRange)range undoable:(BOOL)undoable;
- (void)updateSelectionAttributesWithFont:(id)font oldFont:(id)oldFont range:(_NSRange)range undoable:(BOOL)undoable;
- (void)updateTypingAttributesWithFont:(id)font color:(id)color;
- (void)viewDidLoad;
@end

@implementation QLTextItemViewController

- (id)displayedDocumentURLForItem:(id)item
{
  itemCopy = item;
  if ([(QLTextItemViewController *)self shouldEditByCreatingCopy])
  {
    [itemCopy editedFileURL];
  }

  else
  {
    [itemCopy saveURL];
  }
  v5 = ;

  return v5;
}

- (void)openDocumentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(QLTextItemViewController *)self isDocumentOpen])
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    textDocument = [(QLTextItemViewController *)self textDocument];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __78__QLTextItemViewController_FilePresenting__openDocumentWithCompletionHandler___block_invoke;
    v6[3] = &unk_278B57990;
    v6[4] = self;
    v7 = handlerCopy;
    [textDocument openWithCompletionHandler:v6];
  }
}

uint64_t __78__QLTextItemViewController_FilePresenting__openDocumentWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *(a1 + 32);
    v5 = *MEMORY[0x277D768A8];
    v6 = [v4 textDocument];
    [v3 addObserver:v4 selector:sel_textDocumentChangedRemotely_ name:v5 object:v6];

    [*(a1 + 32) _loadDocumentContent];
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

- (void)closeDocumentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(QLTextItemViewController *)self _saveDocumentContentIfNeeded];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D768A8] object:0];

  textDocument = [(QLTextItemViewController *)self textDocument];
  [textDocument closeWithCompletionHandler:handlerCopy];
}

- (void)_loadDocumentContent
{
  textDocument = [(QLTextItemViewController *)self textDocument];
  hasRichContent = [textDocument hasRichContent];

  textDocument2 = [(QLTextItemViewController *)self textDocument];
  v6 = textDocument2;
  if (hasRichContent)
  {
    attributedTextContent = [textDocument2 attributedTextContent];
    textView = [(QLTextItemViewController *)self textView];
    [textView setAttributedText:attributedTextContent];
  }

  else
  {
    attributedTextContent = [textDocument2 textContent];
    textView = [(QLTextItemViewController *)self textView];
    [textView setText:attributedTextContent];
  }

  textView2 = [(QLTextItemViewController *)self textView];
  [textView2 setAllowsEditingTextAttributes:hasRichContent];
}

- (void)_saveDocumentContentIfNeeded
{
  textDocument = [(QLTextItemViewController *)self textDocument];
  attributedTextContent = [textDocument attributedTextContent];

  textView = [(QLTextItemViewController *)self textView];
  attributedText = [textView attributedText];

  if (attributedTextContent != attributedText)
  {
    textDocument2 = [(QLTextItemViewController *)self textDocument];
    [textDocument2 saveWithTextContent:attributedText];
  }
}

- (void)textDocumentChangedRemotely:(id)remotely
{
  object = [remotely object];
  textDocument = [(QLTextItemViewController *)self textDocument];
  if (object == textDocument)
  {
    textDocument2 = [(QLTextItemViewController *)self textDocument];
    documentState = [textDocument2 documentState];

    if (documentState != 2)
    {

      [(QLTextItemViewController *)self _loadDocumentContent];
    }
  }

  else
  {
  }
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  contextCopy = context;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = contextCopy;
  v10 = contentsCopy;
  QLRunInMainThread();
}

void __88__QLTextItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(id *a1)
{
  [a1[4] setupTextView:{objc_msgSend(a1[4], "_isContentPotentiallySuspicious:context:", a1[5], a1[6])}];
  v2 = [a1[5] string];
  v3 = a1[4];
  v4 = v3[141];
  v3[141] = v2;

  *(a1[4] + 1168) = 0;
  v5 = _os_feature_enabled_impl();
  v6 = a1[4];
  if (v5)
  {
    v7 = [a1[6] item];
    [v6 setUpDocumentWithItem:v7];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__QLTextItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2;
    v14[3] = &unk_278B57AA8;
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[4];
    v15 = v9;
    v16 = v10;
    v17 = a1[7];
    [v8 openDocumentWithCompletionHandler:v14];
  }

  else
  {
    v11 = [v6[148] textStorage];
    [v11 setAttributedString:*(a1[4] + 141)];

    v13 = [a1[5] attributes];
    [a1[4] _setupTextViewWithDocumentAttributes:?];
    v12 = a1[7];
    if (v12)
    {
      v12[2](v12, 0);
    }
  }
}

uint64_t __88__QLTextItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) attributes];
    [*(a1 + 40) _setupTextViewWithDocumentAttributes:v3];
    [*(a1 + 40) setUpTextInputShortcutsBar];
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (UIEdgeInsets)customEdgeInsets
{
  appearance = [(QLItemViewController *)self appearance];
  if ([appearance presentationMode] == 4)
  {
    v4 = *MEMORY[0x277D768C8];
    v3 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v5 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    [appearance peripheryInsets];
    v4 = v7;
    v3 = v8;
    v6 = v9;
    v5 = v10;
  }

  [appearance topInset];
  if (v4 < v11)
  {
    v4 = v11;
  }

  [appearance bottomInset];
  if (v6 < v12)
  {
    v6 = v12;
  }

  v13 = v4;
  v14 = v3;
  v15 = v6;
  v16 = v5;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (BOOL)_isContentPotentiallySuspicious:(id)suspicious context:(id)context
{
  v26[4] = *MEMORY[0x277D85DE8];
  suspiciousCopy = suspicious;
  contextCopy = context;
  v7 = *MEMORY[0x277CE1EE8];
  v26[0] = *MEMORY[0x277CE1DC8];
  v26[1] = v7;
  v8 = *MEMORY[0x277CE1E38];
  v26[2] = *MEMORY[0x277CE1EF0];
  v26[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  contentType = [contextCopy contentType];

  if (contentType)
  {
    v11 = MEMORY[0x277CE1CB8];
    contentType2 = [contextCopy contentType];
    v13 = [v11 typeWithIdentifier:contentType2];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = *v22;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v14);
          }

          if ([v13 conformsToType:{*(*(&v21 + 1) + 8 * i), v21}])
          {
            string = [suspiciousCopy string];
            LOBYTE(v15) = [string length] > 0xF4240;

            goto LABEL_12;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_setupTextViewWithDocumentAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(QLTextItemViewController *)self _setupTextViewColorsWithDocumentAttributes:attributesCopy];
  [(QLTextItemViewController *)self _setupTextViewMarginsWithDocumentAttributes:attributesCopy];
}

- (void)_setupTextViewColorsWithDocumentAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D74070]];
  if (v4)
  {
    [(UITextView *)self->_textView setBackgroundColor:v4];
  }

  else
  {
    if ([(QLTextItemViewController *)self _documentAttributesContainTextColors:attributesCopy])
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(UITextView *)self->_textView setBackgroundColor:whiteColor];
    }

    else
    {
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [(UITextView *)self->_textView setBackgroundColor:systemBackgroundColor];

      whiteColor = [(UITextView *)self->_textView textStorage];
      v7 = *MEMORY[0x277D740C0];
      labelColor = [MEMORY[0x277D75348] labelColor];
      textStorage = [(UITextView *)self->_textView textStorage];
      [whiteColor addAttribute:v7 value:labelColor range:{0, objc_msgSend(textStorage, "length")}];
    }
  }
}

- (void)_setupTextViewMarginsWithDocumentAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = *MEMORY[0x277D74100];
  v26 = attributesCopy;
  v6 = [attributesCopy valueForKey:*MEMORY[0x277D74100]];

  if (v6)
  {
    v7 = [v26 valueForKey:v5];
    [v7 UIEdgeInsetsValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = *MEMORY[0x277D74108];
    v17 = [v26 valueForKey:*MEMORY[0x277D74108]];

    if (v17)
    {
      v18 = [v26 valueForKey:v16];
      [v18 CGSizeValue];
      v20 = v19;
      v22 = v21;

      [(UITextView *)self->_textView frame];
      v24 = v23 / v20;
      [(UITextView *)self->_textView frame];
      v9 = v9 * (v25 / v22);
      v11 = v11 * v24;
      v13 = v13 * (v25 / v22);
      v15 = v15 * v24;
    }

    [(UITextView *)self->_textView setTextContainerInset:v9, v11, v13, v15];
  }
}

- (BOOL)_documentAttributesContainTextColors:(id)colors
{
  colorsCopy = colors;
  v5 = [colorsCopy objectForKeyedSubscript:*MEMORY[0x277D74098]];
  v6 = [v5 isEqualToString:*MEMORY[0x277D74120]];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    textStorage = [(UITextView *)self->_textView textStorage];
    string = [textStorage string];
    v10 = [string length];

    if (v10 >= 0xC350)
    {
      v11 = 50000;
    }

    else
    {
      v11 = v10;
    }

    textStorage2 = [(UITextView *)self->_textView textStorage];
    v13 = *MEMORY[0x277D740C0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__QLTextItemViewController__documentAttributesContainTextColors___block_invoke;
    v18[3] = &unk_278B57AF0;
    v18[4] = &v19;
    [textStorage2 enumerateAttribute:v13 inRange:0 options:v11 usingBlock:{0x100000, v18}];

    if (v20[3])
    {
      v7 = 1;
    }

    else
    {
      textStorage3 = [(UITextView *)self->_textView textStorage];
      v15 = *MEMORY[0x277D74068];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __65__QLTextItemViewController__documentAttributesContainTextColors___block_invoke_2;
      v17[3] = &unk_278B57AF0;
      v17[4] = &v19;
      [textStorage3 enumerateAttribute:v15 inRange:0 options:v11 usingBlock:{0x100000, v17}];

      v7 = *(v20 + 24);
    }

    _Block_object_dispose(&v19, 8);
  }

  return v7 & 1;
}

uint64_t __65__QLTextItemViewController__documentAttributesContainTextColors___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t __65__QLTextItemViewController__documentAttributesContainTextColors___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = QLTextItemViewController;
  [(QLTextItemViewController *)&v7 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillAppear_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__keyboardWillAppear_ name:*MEMORY[0x277D76C00] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__keyboardWillDisappear_ name:*MEMORY[0x277D76C50] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__keyboardWillAppear_ name:*MEMORY[0x277D76C48] object:0];
}

- (id)toolbarButtonsForTraitCollection:(id)collection
{
  v9.receiver = self;
  v9.super_class = QLTextItemViewController;
  v3 = [(QLItemViewController *)&v9 toolbarButtonsForTraitCollection:collection];
  v4 = [v3 mutableCopy];

  v5 = [objc_alloc(MEMORY[0x277D43FB0]) initWithIdentifier:@"QLSearchButton"];
  v6 = QLLocalizedString();
  [v5 setTitle:v6];

  [v5 setSymbolImageName:@"magnifyingglass"];
  if (_UISolariumEnabled())
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  [v5 setPlacement:v7];
  [v5 setForceToNavBar:_UIBarsDesktopNavigationBarEnabled() ^ 1];
  [v5 setAccessibilityIdentifier:@"QLTextItemViewControllerBarSearchRightButtonAccessibilityIdentifier"];
  [v4 addObject:v5];

  return v4;
}

- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy isEqualToString:@"QLSearchButton"])
  {
    findInteraction = [(UITextView *)self->_textView findInteraction];
    [findInteraction presentFindNavigatorShowingReplace:0];

    handlerCopy[2](handlerCopy);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = QLTextItemViewController;
    [(QLItemViewController *)&v9 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy];
  }
}

- (id)registeredKeyCommands
{
  v4.receiver = self;
  v4.super_class = QLTextItemViewController;
  registeredKeyCommands = [(QLItemViewController *)&v4 registeredKeyCommands];

  return registeredKeyCommands;
}

- (BOOL)shouldRecognizeGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [recognizerCopy locationInView:self->_textView];
    v5 = [(UITextView *)self->_textView characterRangeAtPoint:?];
    textView = self->_textView;
    beginningOfDocument = [(UITextView *)textView beginningOfDocument];
    start = [v5 start];
    v9 = [(UITextView *)textView offsetFromPosition:beginningOfDocument toPosition:start];

    v10 = self->_textView;
    beginningOfDocument2 = [(UITextView *)v10 beginningOfDocument];
    v12 = [v5 end];
    v13 = [(UITextView *)v10 offsetFromPosition:beginningOfDocument2 toPosition:v12];

    if ([v5 isEmpty])
    {
      v14 = 1;
    }

    else
    {
      attributedText = [(UITextView *)self->_textView attributedText];
      v16 = [attributedText attributedSubstringFromRange:{v9, v13 - v9}];

      if ([v16 length])
      {
        v17 = [v16 attribute:*MEMORY[0x277D740E8] atIndex:0 effectiveRange:0];
        v14 = v17 == 0;

        v16 = v17;
      }

      else
      {
        v14 = 1;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (UISimpleTextPrintFormatter)printFormatter
{
  printFormatter = self->_printFormatter;
  if (!printFormatter)
  {
    v4 = [objc_alloc(MEMORY[0x277D41258]) initWithAttributedText:self->_content];
    v5 = self->_printFormatter;
    self->_printFormatter = v4;

    printFormatter = self->_printFormatter;
  }

  return printFormatter;
}

- (UIPrintPageRenderer)pageRenderer
{
  pageRenderer = self->_pageRenderer;
  if (!pageRenderer)
  {
    v4 = objc_alloc_init(MEMORY[0x277D41250]);
    v5 = self->_pageRenderer;
    self->_pageRenderer = v4;

    v6 = self->_pageRenderer;
    printFormatter = [(QLTextItemViewController *)self printFormatter];
    [(UIPrintPageRenderer *)v6 addPrintFormatter:printFormatter startingAtPageAtIndex:0];

    pageRenderer = self->_pageRenderer;
  }

  return pageRenderer;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  lCopy = l;
  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsToOpenURL:lCopy];

  return 0;
}

- (void)updateContentFrame
{
  view = [(QLTextItemViewController *)self view];
  selectionContainerView = [(UITextView *)self->_textView selectionContainerView];
  [selectionContainerView frame];
  [view convertRect:self->_textView fromView:?];
  [(QLItemViewController *)self setContentFrame:?];
}

- (void)_updateTextViewInsets
{
  [(QLTextItemViewController *)self customEdgeInsets];
  v5 = v3;
  v6 = v4;
  if (self->_isKeyboardVisible)
  {
    [(UITextView *)self->_textView setContentInset:v3, 0.0, self->_keyboardBottomOffset, 0.0];
    textView = self->_textView;
    v8 = self->_keyboardBottomOffset - v6;
    v9 = 0.0;
    v10 = 0.0;
    v11 = v5;
  }

  else
  {
    [(UITextView *)self->_textView setContentInset:v3, 0.0, v4, 0.0];
    [(UITextView *)self->_textView contentInset];
    textView = self->_textView;
  }

  [(UITextView *)textView setScrollIndicatorInsets:v11, v9, v8, v10];
}

- (void)numberOfPagesWithSize:(CGSize)size completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  QLRunInMainThreadSync();
}

void __68__QLTextItemViewController_numberOfPagesWithSize_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = [*(a1 + 32) pageRenderer];
  [v4 setPrintableRect:{0.0, 0.0, v2, v3}];

  [*(*(a1 + 32) + 1200) printableRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 32) pageRenderer];
  [v13 setPaperRect:{v6, v8, v10, v12}];

  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) printFormatter];
  (*(v14 + 16))(v14, [v15 pageCount]);
}

- (void)pdfDataForPageAtIndex:(int64_t)index withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  QLRunInMainThreadSync();
}

void __72__QLTextItemViewController_pdfDataForPageAtIndex_withCompletionHandler___block_invoke(uint64_t a1)
{
  data = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0];
  v2 = [*(a1 + 32) pageRenderer];
  [v2 printableRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  UIGraphicsBeginPDFContextToData(data, v23, 0);
  UIGraphicsBeginPDFPage();
  v11 = [*(a1 + 32) printFormatter];
  [v11 rectForPageAtIndex:*(a1 + 48)];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [*(a1 + 32) printFormatter];
  [v20 drawInRect:*(a1 + 48) forPageAtIndex:{v13, v15, v17, v19}];

  UIGraphicsEndPDFContext();
  (*(*(a1 + 40) + 16))();
}

- (void)_keyboardWillAppear:(id)appear
{
  self->_isKeyboardVisible = 1;
  appearCopy = appear;
  userInfo = [appearCopy userInfo];
  name = [appearCopy name];

  [(QLTextItemViewController *)self _updateViewConstraintsFromKeyboardAppearanceInfo:userInfo notificationName:name];
}

- (void)_keyboardWillDisappear:(id)disappear
{
  self->_isKeyboardVisible = 0;
  disappearCopy = disappear;
  userInfo = [disappearCopy userInfo];
  name = [disappearCopy name];

  [(QLTextItemViewController *)self _updateViewConstraintsFromKeyboardAppearanceInfo:userInfo notificationName:name];
}

- (void)_updateViewConstraintsFromKeyboardAppearanceInfo:(id)info notificationName:(id)name
{
  v5 = *MEMORY[0x277D76BB8];
  infoCopy = info;
  v7 = [infoCopy objectForKey:v5];
  [v7 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  view = [(QLTextItemViewController *)self view];
  window = [view window];
  screen = [window screen];
  coordinateSpace = [screen coordinateSpace];

  view2 = [(QLTextItemViewController *)self view];
  coordinateSpace2 = [view2 coordinateSpace];

  [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{v9, v11, v13, v15}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  view3 = [(QLTextItemViewController *)self view];
  [view3 bounds];
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = v23;
  v37.origin.y = v25;
  v37.size.width = v27;
  v37.size.height = v29;
  self->_keyboardBottomOffset = MaxY - CGRectGetMinY(v37);

  [(QLTextItemViewController *)self _updateTextViewInsets];
  v32 = MEMORY[0x277D75D18];
  v33 = [infoCopy objectForKey:*MEMORY[0x277D76B78]];

  [v33 floatValue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __94__QLTextItemViewController__updateViewConstraintsFromKeyboardAppearanceInfo_notificationName___block_invoke;
  v35[3] = &unk_278B57190;
  v35[4] = self;
  [v32 animateWithDuration:v35 animations:v34];
}

void __94__QLTextItemViewController__updateViewConstraintsFromKeyboardAppearanceInfo_notificationName___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)setUpDocumentWithItem:(id)item
{
  v6 = [(QLTextItemViewController *)self displayedDocumentURLForItem:item];
  v4 = [[_TtC9QuickLook14QLTextDocument alloc] initWithFileURL:v6];
  textDocument = self->_textDocument;
  self->_textDocument = v4;
}

- (void)_updateConstraintConstants:(BOOL)constants
{
  constantsCopy = constants;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__QLTextItemViewController__updateConstraintConstants___block_invoke;
  aBlock[3] = &unk_278B57190;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (constantsCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.2];
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

void __55__QLTextItemViewController__updateConstraintConstants___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appearance];
  [v2 peripheryInsets];
  [*(*(a1 + 32) + 1136) setConstant:v3];

  v4 = [*(a1 + 32) appearance];
  [v4 peripheryInsets];
  [*(*(a1 + 32) + 1144) setConstant:v5];

  v6 = [*(a1 + 32) view];
  [v6 setNeedsLayout];
}

- (BOOL)shouldAllowEditingContents
{
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    context = [(QLItemViewController *)self context];
    canBeEdited = [context canBeEdited];
    if (canBeEdited && (-[QLItemViewController context](self, "context"), v2 = objc_claimAutoreleasedReturnValue(), [v2 editedFileBehavior]))
    {
      v6 = 1;
    }

    else
    {
      context2 = [(QLItemViewController *)self context];
      item = [context2 item];
      v6 = [item editingMode] != 0;

      if (!canBeEdited)
      {
LABEL_9:

        return v6;
      }
    }

    goto LABEL_9;
  }

  return 0;
}

- (BOOL)shouldEditByCreatingCopy
{
  context = [(QLItemViewController *)self context];
  canBeEdited = [context canBeEdited];
  if (canBeEdited)
  {
    context2 = [(QLItemViewController *)self context];
    if ([context2 editedFileBehavior] == 2)
    {
      v6 = 1;
LABEL_5:

      goto LABEL_6;
    }
  }

  context3 = [(QLItemViewController *)self context];
  item = [context3 item];
  v6 = [item editingMode] == 2;

  if (canBeEdited)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

- (void)savePreviewEditedCopyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(QLTextItemViewController *)self shouldAllowEditingContents])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __80__QLTextItemViewController_Editing__savePreviewEditedCopyWithCompletionHandler___block_invoke;
    v5[3] = &unk_278B58210;
    v6 = handlerCopy;
    [(QLTextItemViewController *)self _saveTextIfEdited:1 withCompletionHandler:v5];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_saveTextIfEdited:(BOOL)edited withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  context = [(QLItemViewController *)self context];
  item = [context item];
  previewItemContentType = [item previewItemContentType];

  if (previewItemContentType)
  {
    v10 = MEMORY[0x277CE1CB8];
    context2 = [(QLItemViewController *)self context];
    item2 = [context2 item];
    previewItemContentType2 = [item2 previewItemContentType];
    v14 = [v10 typeWithIdentifier:previewItemContentType2];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__QLTextItemViewController_Editing___saveTextIfEdited_withCompletionHandler___block_invoke;
    v15[3] = &unk_278B58238;
    v16 = handlerCopy;
    objc_copyWeak(&v17, &location);
    editedCopy = edited;
    [(QLItemViewController *)self editedCopyToSaveChangesWithOutputType:v14 completionHandler:v15];
    objc_destroyWeak(&v17);
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D43EF0] code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }

  objc_destroyWeak(&location);
}

void __77__QLTextItemViewController_Editing___saveTextIfEdited_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = MEMORY[0x277D43EF8];
    v10 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "Could not create edited text because could not generate a URL to save the file. #AnyItemViewController", v11, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _saveTextIfEditedWithEditedCopy:v5 shouldDismissAfterSaving:*(a1 + 48) completionHandler:*(a1 + 32)];
  }
}

- (void)_saveTextIfEditedWithEditedCopy:(id)copy shouldDismissAfterSaving:(BOOL)saving completionHandler:(id)handler
{
  copyCopy = copy;
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __112__QLTextItemViewController_Editing___saveTextIfEditedWithEditedCopy_shouldDismissAfterSaving_completionHandler___block_invoke;
    v9[3] = &unk_278B57990;
    v10 = copyCopy;
    v11 = handlerCopy;
    [(QLTextItemViewController *)self closeDocumentWithCompletionHandler:v9];
  }
}

uint64_t __112__QLTextItemViewController_Editing___saveTextIfEditedWithEditedCopy_shouldDismissAfterSaving_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) bumpVersion];
    [*(a1 + 32) markAsPurgeable];
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = *(a1 + 40);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)setUpTextInputShortcutsBar
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  _textInputShortcutsBarButtons = [(QLTextItemViewController *)self _textInputShortcutsBarButtons];
  v18 = [v3 initWithArray:_textInputShortcutsBarButtons];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    textView = [(QLTextItemViewController *)self textView];
    inputAssistantItem = [textView inputAssistantItem];

    v9 = objc_alloc(MEMORY[0x277D751E0]);
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"textFormat"];
    textView2 = [v9 initWithImage:v10 style:0 target:0 action:0];

    v12 = [objc_alloc(MEMORY[0x277D751F0]) initWithBarButtonItems:v18 representativeItem:textView2];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    trailingBarButtonGroups = [inputAssistantItem trailingBarButtonGroups];
    [v13 addObjectsFromArray:trailingBarButtonGroups];

    [v13 addObject:v12];
    [inputAssistantItem setTrailingBarButtonGroups:v13];
  }

  else
  {
    inputAssistantItem = objc_alloc_init(MEMORY[0x277D75C58]);
    systemFillColor = [MEMORY[0x277D75348] systemFillColor];
    [inputAssistantItem setBackgroundColor:systemFillColor];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [inputAssistantItem setTintColor:labelColor];

    flexibleSpaceItem = [MEMORY[0x277D751E0] flexibleSpaceItem];
    [v18 insertObject:flexibleSpaceItem atIndex:0];

    [inputAssistantItem setItems:v18];
    [inputAssistantItem sizeToFit];
    textView2 = [(QLTextItemViewController *)self textView];
    [textView2 setInputAccessoryView:inputAssistantItem];
  }
}

- (id)_textInputShortcutsBarButtons
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(QLTextItemViewController *)self shouldAllowEditingContents])
  {
    textDocument = [(QLTextItemViewController *)self textDocument];
    hasRichContent = [textDocument hasRichContent];

    if (hasRichContent)
    {
      v6 = [MEMORY[0x277D755B8] systemImageNamed:@"pencil.tip"];
      v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v6 style:0 target:self action:sel_presentColorPicker];
      [v7 setAccessibilityIdentifier:@"QLTextItemViewControllerBarColorPickerRightButtonAccessibilityIdentifier"];
      [v3 addObject:v7];
      v8 = [MEMORY[0x277D755B8] systemImageNamed:@"textformat.size"];
      v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v8 style:0 target:self action:sel_presentTextSizePicker];
      [v9 setAccessibilityIdentifier:@"QLTextItemViewControllerBarTextSizePickerRightButtonAccessibilityIdentifier"];
      [v3 addObject:v9];
      v10 = [MEMORY[0x277D755B8] systemImageNamed:@"textformat"];
      v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v10 style:0 target:self action:sel_presentFontPicker];
      [v11 setAccessibilityIdentifier:@"QLTextItemViewControllerBarFontPickerRightButtonAccessibilityIdentifier"];
      [v3 addObject:v11];
    }
  }

  return v3;
}

- (void)updateTypingAttributesWithFont:(id)font color:(id)color
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D740C0];
  v13[0] = *MEMORY[0x277D740A8];
  v13[1] = v6;
  v14[0] = font;
  v14[1] = color;
  v7 = MEMORY[0x277CBEAC0];
  colorCopy = color;
  fontCopy = font;
  v10 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];

  textView = [(QLTextItemViewController *)self textView];
  [textView setTypingAttributes:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateSelectionAttributesWithFont:(id)font oldFont:(id)oldFont range:(_NSRange)range undoable:(BOOL)undoable
{
  undoableCopy = undoable;
  length = range.length;
  location = range.location;
  v24[1] = *MEMORY[0x277D85DE8];
  fontCopy = font;
  oldFontCopy = oldFont;
  v23 = *MEMORY[0x277D740A8];
  v24[0] = fontCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  textView = [(QLTextItemViewController *)self textView];
  textStorage = [textView textStorage];
  [textStorage addAttributes:v13 range:{location, length}];

  if (undoableCopy)
  {
    textView2 = [(QLTextItemViewController *)self textView];
    undoManager = [textView2 undoManager];
    v18 = [undoManager prepareWithInvocationTarget:self];
    [v18 updateSelectionAttributesWithFont:oldFontCopy oldFont:fontCopy range:location undoable:{length, 1}];

    textView3 = [(QLTextItemViewController *)self textView];
    undoManager2 = [textView3 undoManager];
    v21 = QLLocalizedString();
    [undoManager2 setActionName:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateSelectionAttributesWithColor:(id)color oldColor:(id)oldColor range:(_NSRange)range undoable:(BOOL)undoable
{
  undoableCopy = undoable;
  length = range.length;
  location = range.location;
  v24[1] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  oldColorCopy = oldColor;
  v23 = *MEMORY[0x277D740C0];
  v24[0] = colorCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  textView = [(QLTextItemViewController *)self textView];
  textStorage = [textView textStorage];
  [textStorage addAttributes:v13 range:{location, length}];

  if (undoableCopy)
  {
    textView2 = [(QLTextItemViewController *)self textView];
    undoManager = [textView2 undoManager];
    v18 = [undoManager prepareWithInvocationTarget:self];
    [v18 updateSelectionAttributesWithColor:oldColorCopy oldColor:colorCopy range:location undoable:{length, 1}];

    textView3 = [(QLTextItemViewController *)self textView];
    undoManager2 = [textView3 undoManager];
    v21 = QLLocalizedString();
    [undoManager2 setActionName:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)presentFontPicker
{
  v4 = objc_alloc_init(MEMORY[0x277D75538]);
  [v4 setIncludeFaces:1];
  v3 = [objc_alloc(MEMORY[0x277D75530]) initWithConfiguration:v4];
  [v3 setDelegate:self];
  [(QLTextItemViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)fontPickerViewControllerDidPickFont:(id)font
{
  selectedFontDescriptor = [font selectedFontDescriptor];
  if (selectedFontDescriptor)
  {
    v5 = MEMORY[0x277D74300];
    v9 = selectedFontDescriptor;
    textView = [(QLTextItemViewController *)self textView];
    font = [textView font];
    [font pointSize];
    v8 = [v5 fontWithDescriptor:v9 size:?];

    [(QLTextItemViewController *)self updateTextWithFont:v8 undoable:1];
    selectedFontDescriptor = v9;
  }
}

- (void)presentTextSizePicker
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75840]);
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v3 setBackgroundColor:secondarySystemBackgroundColor];

  [v3 setDataSource:self];
  [v3 setDelegate:self];
  v5 = objc_alloc_init(MEMORY[0x277D75D28]);
  [v5 setView:v3];
  v6 = QLLocalizedString();
  navigationItem = [v5 navigationItem];
  [navigationItem setTitle:v6];

  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_textSizePickerDidCancel];
  navigationItem2 = [v5 navigationItem];
  [navigationItem2 setRightBarButtonItem:v8];

  v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v10 setModalPresentationStyle:2];
  mediumDetent = [MEMORY[0x277D75A28] mediumDetent];
  v15[0] = mediumDetent;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  sheetPresentationController = [v10 sheetPresentationController];
  [sheetPresentationController setDetents:v12];

  [(QLTextItemViewController *)self presentViewController:v10 animated:1 completion:0];
  v14 = *MEMORY[0x277D85DE8];
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = [(QLTextItemViewController *)self availableTextSizes:view];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v6 = [(QLTextItemViewController *)self availableTextSizes:view];
  v7 = [v6 objectAtIndexedSubscript:row];
  stringValue = [v7 stringValue];

  return stringValue;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v7 = MEMORY[0x277D74300];
  v8 = [(QLTextItemViewController *)self textView:view];
  font = [v8 font];
  fontDescriptor = [font fontDescriptor];
  availableTextSizes = [(QLTextItemViewController *)self availableTextSizes];
  v12 = [availableTextSizes objectAtIndexedSubscript:row];
  [v12 floatValue];
  v14 = [v7 fontWithDescriptor:fontDescriptor size:v13];

  [(QLTextItemViewController *)self updateTextWithFont:v14 undoable:1];
}

- (void)textSizePickerDidCancel
{
  presentedViewController = [(QLTextItemViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)presentColorPicker
{
  v5 = objc_alloc_init(MEMORY[0x277D75360]);
  textView = [(QLTextItemViewController *)self textView];
  textColor = [textView textColor];
  [v5 setSelectedColor:textColor];

  [v5 setDelegate:self];
  [(QLTextItemViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  continuouslyCopy = continuously;
  selectedColor = [controller selectedColor];
  [(QLTextItemViewController *)self updateTextWithColor:selectedColor undoable:!continuouslyCopy];
}

@end