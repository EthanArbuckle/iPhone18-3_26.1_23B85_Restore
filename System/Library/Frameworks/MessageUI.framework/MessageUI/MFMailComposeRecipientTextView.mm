@interface MFMailComposeRecipientTextView
- (BOOL)becomeFirstResponder;
- (CGRect)pointerRectForLineContainingGlyphIndex:(unint64_t)index;
- (MFMailComposeRecipientTextView)initWithFrame:(CGRect)frame;
- (NSArray)people;
- (double)beamHeight;
- (id)nextResponder;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_displayMetricsDidChange;
- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)_textInputDidChange:(id)change;
- (void)addRecipient:(id)recipient;
- (void)appendText:(id)text;
- (void)dealloc;
- (void)layoutMarginsDidChange;
- (void)setDisplayMetrics:(id)metrics;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MFMailComposeRecipientTextView

- (MFMailComposeRecipientTextView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = MFMailComposeRecipientTextView;
  v3 = [(CNComposeRecipientTextView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFMailComposeRecipientTextView *)v3 setNeedsInputAssistantItemUpdate:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__textInputDidChange_ name:*MEMORY[0x1E69DE6B8] object:0];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MFMailComposeRecipientTextView;
  [(CNComposeRecipientTextView *)&v4 dealloc];
}

- (BOOL)becomeFirstResponder
{
  if ([(MFMailComposeRecipientTextView *)self needsInputAssistantItemUpdate])
  {
    inputAssistantItem = [(MFMailComposeRecipientTextView *)self inputAssistantItem];
    [inputAssistantItem _setShowsBarButtonItemsInline:0];

    [(MFMailComposeRecipientTextView *)self setNeedsInputAssistantItemUpdate:0];
  }

  v5.receiver = self;
  v5.super_class = MFMailComposeRecipientTextView;
  return [(CNComposeRecipientTextView *)&v5 becomeFirstResponder];
}

- (id)nextResponder
{
  delegate = [(MFMailComposeRecipientTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    nextResponder = [delegate nextResponderForRecipientView:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MFMailComposeRecipientTextView;
    nextResponder = [(MFMailComposeRecipientTextView *)&v7 nextResponder];
  }

  v5 = nextResponder;

  return v5;
}

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_displayMetrics != metricsCopy)
  {
    objc_storeStrong(&self->_displayMetrics, metrics);
    [(MFMailComposeRecipientTextView *)self _displayMetricsDidChange];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(MFMailComposeRecipientTextView *)self traitCollection];
  [(MFMailComposeRecipientTextView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFMailComposeRecipientTextView *)self safeAreaInsets];
  v16 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:traitCollection layoutMargins:v5 safeAreaInsets:v7, v9, v11, v12, v13, v14, v15];
  [(MFMailComposeRecipientTextView *)self setDisplayMetrics:v16];
}

- (void)layoutMarginsDidChange
{
  v17.receiver = self;
  v17.super_class = MFMailComposeRecipientTextView;
  [(MFMailComposeRecipientTextView *)&v17 layoutMarginsDidChange];
  traitCollection = [(MFMailComposeRecipientTextView *)self traitCollection];
  [(MFMailComposeRecipientTextView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFMailComposeRecipientTextView *)self safeAreaInsets];
  v16 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:traitCollection layoutMargins:v5 safeAreaInsets:v7, v9, v11, v12, v13, v14, v15];
  [(MFMailComposeRecipientTextView *)self setDisplayMetrics:v16];
}

- (void)_displayMetricsDidChange
{
  displayMetrics = [(MFMailComposeRecipientTextView *)self displayMetrics];
  [displayMetrics headerViewSeparatorInset];
  [(MFMailComposeRecipientTextView *)self setSeparatorDirectionalEdgeInsets:?];

  displayMetrics2 = [(MFMailComposeRecipientTextView *)self displayMetrics];
  [displayMetrics2 trailingButtonMidlineOffset];
  [(CNComposeRecipientTextView *)self setTrailingButtonMidlineInsetFromLayoutMargin:?];
}

- (void)_textInputDidChange:(id)change
{
  textView = [(CNComposeRecipientTextView *)self textView];
  text = [textView text];
  v5 = [text length];

  if (!v5)
  {
    mf_textAlignmentForActiveInputLanguage = [(UIResponder *)self mf_textAlignmentForActiveInputLanguage];
    textView2 = [(CNComposeRecipientTextView *)self textView];
    [textView2 setTextAlignment:mf_textAlignmentForActiveInputLanguage];
  }
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  v6.receiver = self;
  v6.super_class = MFMailComposeRecipientTextView;
  [(CNComposeRecipientTextView *)&v6 addRecipient:recipientCopy];
  delegate = [(MFMailComposeRecipientTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate composeRecipientView:self didFinishAddingRecipient:recipientCopy];
  }
}

- (void)appendText:(id)text
{
  textCopy = text;
  [(MFMailComposeRecipientTextView *)self becomeFirstResponder];
  textView = [(CNComposeRecipientTextView *)self textView];
  [textView insertText:textCopy];
}

- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  v10[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(CNComposeRecipientTextView *)self isFirstResponder])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  label = [(MFMailComposeRecipientTextView *)self label];
  v10[0] = label;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  completionCopy[2](completionCopy, v9, v7);
}

- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  completionCopy = completion;
  [(MFMailComposeRecipientTextView *)self becomeFirstResponder];
  textView = [(CNComposeRecipientTextView *)self textView];
  completionCopy[2](completionCopy, textView);
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  if ([(CNComposeRecipientTextView *)self usingActiveAppearance])
  {
    textView = [(CNComposeRecipientTextView *)self textView];
    [requestCopy location];
    [(MFMailComposeRecipientTextView *)self convertPoint:textView toView:?];
    v9 = v8;
    v11 = v10;
    layoutManager = [textView layoutManager];
    textContainer = [textView textContainer];
    v14 = [layoutManager glyphIndexForPoint:textContainer inTextContainer:{v9, v11}];
  }

  else
  {
    v14 = 0;
  }

  [(MFMailComposeRecipientTextView *)self pointerRectForLineContainingGlyphIndex:v14];
  v15 = [MEMORY[0x1E69DCDC0] regionWithRect:0 identifier:?];

  return v15;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = MEMORY[0x1E69DCDC8];
  [(MFMailComposeRecipientTextView *)self beamHeight:interaction];
  v5 = [v4 beamWithPreferredLength:2 axis:?];
  v6 = [MEMORY[0x1E69DCDD0] styleWithShape:v5 constrainedAxes:2];

  return v6;
}

- (CGRect)pointerRectForLineContainingGlyphIndex:(unint64_t)index
{
  textView = [(CNComposeRecipientTextView *)self textView];
  layoutManager = [textView layoutManager];
  [layoutManager lineFragmentRectForGlyphAtIndex:index effectiveRange:0];
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
    layoutManager2 = [textView layoutManager];
    [layoutManager2 extraLineFragmentRect];
    v8 = v16;
    v10 = v17;
    v12 = v18;
  }

  [(MFMailComposeRecipientTextView *)self beamHeight];
  v20 = v19;
  [textView textContainerInset];
  v22 = v21;
  [textView textContainerInset];
  v24 = v23;
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v20;
  v35 = CGRectOffset(v34, v22, v24);
  [(MFMailComposeRecipientTextView *)self convertRect:textView fromView:v35.origin.x, v35.origin.y, v35.size.width, v35.size.height];
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
  textView = [(CNComposeRecipientTextView *)self textView];
  textView2 = [(CNComposeRecipientTextView *)self textView];
  endOfDocument = [textView2 endOfDocument];
  [textView caretRectForPosition:endOfDocument];
  Height = CGRectGetHeight(v8);

  return Height;
}

- (NSArray)people
{
  addresses = [(CNComposeRecipientTextView *)self addresses];
  if (addresses)
  {
    addresses2 = [(CNComposeRecipientTextView *)self addresses];
    v5 = [addresses2 ef_compactMap:&__block_literal_global_23];
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