@interface MFMailComposeRecipientTextView
- (BOOL)becomeFirstResponder;
- (CGRect)pointerRectForLineContainingGlyphIndex:(unint64_t)a3;
- (MFMailComposeRecipientTextView)initWithFrame:(CGRect)a3;
- (NSArray)people;
- (double)beamHeight;
- (id)nextResponder;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_displayMetricsDidChange;
- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6;
- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
- (void)_textInputDidChange:(id)a3;
- (void)addRecipient:(id)a3;
- (void)appendText:(id)a3;
- (void)dealloc;
- (void)layoutMarginsDidChange;
- (void)setDisplayMetrics:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MFMailComposeRecipientTextView

- (MFMailComposeRecipientTextView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = MFMailComposeRecipientTextView;
  v3 = [(CNComposeRecipientTextView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFMailComposeRecipientTextView *)v3 setNeedsInputAssistantItemUpdate:1];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__textInputDidChange_ name:*MEMORY[0x1E69DE6B8] object:0];

    v6 = objc_alloc_init(MEMORY[0x1E69784C8]);
    [v6 setDelegate:v4];
    [v6 setElementSource:v4];
    [(MFMailComposeRecipientTextView *)v4 addInteraction:v6];
    v7 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
    [(MFMailComposeRecipientTextView *)v4 addInteraction:v7];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MFMailComposeRecipientTextView;
  [(CNComposeRecipientTextView *)&v4 dealloc];
}

- (BOOL)becomeFirstResponder
{
  if ([(MFMailComposeRecipientTextView *)self needsInputAssistantItemUpdate])
  {
    v3 = [(MFMailComposeRecipientTextView *)self inputAssistantItem];
    [v3 _setShowsBarButtonItemsInline:0];

    [(MFMailComposeRecipientTextView *)self setNeedsInputAssistantItemUpdate:0];
  }

  v5.receiver = self;
  v5.super_class = MFMailComposeRecipientTextView;
  return [(CNComposeRecipientTextView *)&v5 becomeFirstResponder];
}

- (id)nextResponder
{
  v3 = [(MFMailComposeRecipientTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 nextResponderForRecipientView:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MFMailComposeRecipientTextView;
    v4 = [(MFMailComposeRecipientTextView *)&v7 nextResponder];
  }

  v5 = v4;

  return v5;
}

- (void)setDisplayMetrics:(id)a3
{
  v5 = a3;
  if (self->_displayMetrics != v5)
  {
    objc_storeStrong(&self->_displayMetrics, a3);
    [(MFMailComposeRecipientTextView *)self _displayMetricsDidChange];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v17 = [(MFMailComposeRecipientTextView *)self traitCollection];
  [(MFMailComposeRecipientTextView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFMailComposeRecipientTextView *)self safeAreaInsets];
  v16 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:v17 layoutMargins:v5 safeAreaInsets:v7, v9, v11, v12, v13, v14, v15];
  [(MFMailComposeRecipientTextView *)self setDisplayMetrics:v16];
}

- (void)layoutMarginsDidChange
{
  v17.receiver = self;
  v17.super_class = MFMailComposeRecipientTextView;
  [(MFMailComposeRecipientTextView *)&v17 layoutMarginsDidChange];
  v3 = [(MFMailComposeRecipientTextView *)self traitCollection];
  [(MFMailComposeRecipientTextView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFMailComposeRecipientTextView *)self safeAreaInsets];
  v16 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:v3 layoutMargins:v5 safeAreaInsets:v7, v9, v11, v12, v13, v14, v15];
  [(MFMailComposeRecipientTextView *)self setDisplayMetrics:v16];
}

- (void)_displayMetricsDidChange
{
  v3 = [(MFMailComposeRecipientTextView *)self displayMetrics];
  [v3 headerViewSeparatorInset];
  [(MFMailComposeRecipientTextView *)self setSeparatorDirectionalEdgeInsets:?];

  v4 = [(MFMailComposeRecipientTextView *)self displayMetrics];
  [v4 trailingButtonMidlineOffset];
  [(CNComposeRecipientTextView *)self setTrailingButtonMidlineInsetFromLayoutMargin:?];
}

- (void)_textInputDidChange:(id)a3
{
  v7 = [(CNComposeRecipientTextView *)self textView];
  v4 = [v7 text];
  v5 = [v4 length];

  if (!v5)
  {
    v6 = [(UIResponder *)self mf_textAlignmentForActiveInputLanguage];
    v8 = [(CNComposeRecipientTextView *)self textView];
    [v8 setTextAlignment:v6];
  }
}

- (void)addRecipient:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MFMailComposeRecipientTextView;
  [(CNComposeRecipientTextView *)&v6 addRecipient:v4];
  v5 = [(MFMailComposeRecipientTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 composeRecipientView:self didFinishAddingRecipient:v4];
  }
}

- (void)appendText:(id)a3
{
  v5 = a3;
  [(MFMailComposeRecipientTextView *)self becomeFirstResponder];
  v4 = [(CNComposeRecipientTextView *)self textView];
  [v4 insertText:v5];
}

- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a5;
  if ([(CNComposeRecipientTextView *)self isFirstResponder])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [(MFMailComposeRecipientTextView *)self label];
  v10[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6[2](v6, v9, v7);
}

- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6
{
  v8 = a6;
  [(MFMailComposeRecipientTextView *)self becomeFirstResponder];
  v7 = [(CNComposeRecipientTextView *)self textView];
  v8[2](v8, v7);
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  if ([(CNComposeRecipientTextView *)self usingActiveAppearance])
  {
    v7 = [(CNComposeRecipientTextView *)self textView];
    [v6 location];
    [(MFMailComposeRecipientTextView *)self convertPoint:v7 toView:?];
    v9 = v8;
    v11 = v10;
    v12 = [v7 layoutManager];
    v13 = [v7 textContainer];
    v14 = [v12 glyphIndexForPoint:v13 inTextContainer:{v9, v11}];
  }

  else
  {
    v14 = 0;
  }

  [(MFMailComposeRecipientTextView *)self pointerRectForLineContainingGlyphIndex:v14];
  v15 = [MEMORY[0x1E69DCDC0] regionWithRect:0 identifier:?];

  return v15;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = MEMORY[0x1E69DCDC8];
  [(MFMailComposeRecipientTextView *)self beamHeight:a3];
  v5 = [v4 beamWithPreferredLength:2 axis:?];
  v6 = [MEMORY[0x1E69DCDD0] styleWithShape:v5 constrainedAxes:2];

  return v6;
}

- (CGRect)pointerRectForLineContainingGlyphIndex:(unint64_t)a3
{
  v5 = [(CNComposeRecipientTextView *)self textView];
  v6 = [v5 layoutManager];
  [v6 lineFragmentRectForGlyphAtIndex:a3 effectiveRange:0];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v33.origin.x = v8;
  v33.origin.y = v10;
  v33.size.width = v12;
  v33.size.height = v14;
  if (CGRectIsEmpty(v33))
  {
    v15 = [v5 layoutManager];
    [v15 extraLineFragmentRect];
    v8 = v16;
    v10 = v17;
    v12 = v18;
  }

  [(MFMailComposeRecipientTextView *)self beamHeight];
  v20 = v19;
  [v5 textContainerInset];
  v22 = v21;
  [v5 textContainerInset];
  v24 = v23;
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v20;
  v35 = CGRectOffset(v34, v22, v24);
  [(MFMailComposeRecipientTextView *)self convertRect:v5 fromView:v35.origin.x, v35.origin.y, v35.size.width, v35.size.height];
  v37 = CGRectInset(v36, 0.0, v20 * -0.75);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (double)beamHeight
{
  v3 = [(CNComposeRecipientTextView *)self textView];
  v4 = [(CNComposeRecipientTextView *)self textView];
  v5 = [v4 endOfDocument];
  [v3 caretRectForPosition:v5];
  Height = CGRectGetHeight(v8);

  return Height;
}

- (NSArray)people
{
  v3 = [(CNComposeRecipientTextView *)self addresses];
  if (v3)
  {
    v4 = [(CNComposeRecipientTextView *)self addresses];
    v5 = [v4 ef_compactMap:&__block_literal_global_23];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

id __40__MFMailComposeRecipientTextView_people__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddressValue];
  v3 = [v2 em_person];

  return v3;
}

@end