@interface CNVisualIdentityEditablePrimaryAvatarViewController
- (BOOL)exceedsMaxCharacterCount:(int64_t)count containsEmoji:(BOOL)emoji;
- (BOOL)hasValidInputTypeForText:(id)text;
- (BOOL)isEmojiProviderItemType;
- (BOOL)isMonogramProviderItemType;
- (BOOL)primaryAvatarShouldDisplay;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (CNVisualIdentityEditablePrimaryAvatarViewController)initWithProviderItem:(id)item variantsManager:(id)manager;
- (CNVisualIdentityEditablePrimaryAvatarViewControllerDelegate)delegate;
- (NSString)text;
- (double)maxTextFieldSize;
- (id)updatedProviderItem;
- (id)updatedProviderItemWithText:(id)text;
- (void)adjustFontSizeToFitWidthForText:(id)text;
- (void)beginEditing;
- (void)endEditing;
- (void)populateViewWithTextEditableProviderItem:(id)item imageType:(unint64_t)type;
- (void)setUpFirstResponderForProviderItem:(id)item;
- (void)setupImageContainerView;
- (void)setupTextField;
- (void)textViewDidEndEditing:(id)editing;
- (void)trimTextFieldTextIfNeeded:(id)needed;
- (void)trimTextFieldTextIfNeeded:(id)needed containsEmoji:(BOOL)emoji;
- (void)updateContainerViewMask;
- (void)updatePrimaryAvatarForVisualIdentity:(id)identity;
- (void)updateTextFieldFontSize:(double)size;
- (void)updateViewWithProviderItem:(id)item;
- (void)updateWithProviderItem:(id)item;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNVisualIdentityEditablePrimaryAvatarViewController

- (CNVisualIdentityEditablePrimaryAvatarViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)primaryAvatarShouldDisplay
{
  providerItem = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  v3 = providerItem != 0;

  return v3;
}

- (void)updatePrimaryAvatarForVisualIdentity:(id)identity
{
  identityCopy = identity;
  providerItem = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  if (!providerItem)
  {
    imageData = [identityCopy imageData];

    if (!imageData)
    {
      goto LABEL_5;
    }

    v6 = [CNPhotoPickerProviderItem alloc];
    imageData2 = [identityCopy imageData];
    thumbnailImageData = [identityCopy thumbnailImageData];
    fullscreenImageData = [identityCopy fullscreenImageData];
    [identityCopy cropRect];
    providerItem = [(CNPhotoPickerProviderItem *)v6 initWithImageData:imageData2 thumbnailImageData:thumbnailImageData fullscreenImageData:fullscreenImageData cropRect:?];

    [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updateWithProviderItem:providerItem];
  }

LABEL_5:
}

- (double)maxTextFieldSize
{
  imageContainerView = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [imageContainerView bounds];
  v4 = v3 + -20.0;

  return v4;
}

- (BOOL)exceedsMaxCharacterCount:(int64_t)count containsEmoji:(BOOL)emoji
{
  v4 = 1;
  if (!emoji)
  {
    v4 = 2;
  }

  return v4 < count;
}

- (BOOL)hasValidInputTypeForText:(id)text
{
  textCopy = text;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    isEmojiProviderItemType = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self isEmojiProviderItemType];
    v6 = [CNUIStringUtilities stringContainsEmoji:textCopy];
    v7 = isEmojiProviderItemType && v6 || !isEmojiProviderItemType && !v6;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (void)trimTextFieldTextIfNeeded:(id)needed containsEmoji:(BOOL)emoji
{
  if (!emoji)
  {
    v7 = [needed _cn_take:2];
    textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
    [textField setText:v7];
  }
}

- (void)trimTextFieldTextIfNeeded:(id)needed
{
  neededCopy = needed;
  v6 = 0;
  v5 = [CNUIStringUtilities composedCharacterCountForString:neededCopy containsEmoji:&v6];
  if ([(CNVisualIdentityEditablePrimaryAvatarViewController *)self exceedsMaxCharacterCount:v5 containsEmoji:v6])
  {
    [(CNVisualIdentityEditablePrimaryAvatarViewController *)self trimTextFieldTextIfNeeded:neededCopy containsEmoji:v6];
  }
}

- (void)adjustFontSizeToFitWidthForText:(id)text
{
  v42[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCBF0];
  textCopy = text;
  sharedInputModeController = [v4 sharedInputModeController];
  currentInputMode = [sharedInputModeController currentInputMode];
  isDefaultRightToLeft = [currentInputMode isDefaultRightToLeft];

  v9 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v9 setMaximumNumberOfLines:1];
  v10 = isDefaultRightToLeft;
  imageContainerView = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [imageContainerView bounds];
  v13 = v12;
  v15 = v14;
  v41[0] = *MEMORY[0x1E69DB648];
  originalFont = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self originalFont];
  v42[0] = originalFont;
  v41[1] = *MEMORY[0x1E69DB778];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v40 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v42[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  [textCopy boundingRectWithSize:33 options:v19 attributes:v9 context:{v13, v15}];
  v21 = v20;
  v23 = v22;

  textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField contentOffset];
  v26 = v25;

  textField2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField2 bounds];
  v29 = v28 + -20.0;
  textField3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField3 zoomScale];
  v32 = v29 - v23 * v31;

  if (v32 * 0.5 <= 0.0)
  {
    v33 = -0.0;
  }

  else
  {
    v33 = -(v32 * 0.5);
  }

  textField4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField4 setContentOffset:{v26, v33}];

  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self maxTextFieldSize];
  if (v21 <= v35)
  {
    originalFont2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self originalFont];
    textField5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
    [textField5 setFont:originalFont2];
  }

  else
  {
    originalFont2 = +[CNUIFontRepository visualIdentityEditorTextFont];
    [(CNVisualIdentityEditablePrimaryAvatarViewController *)self desiredFontSize];
    textField5 = [originalFont2 fontWithSize:v37 * 0.8];
    textField6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
    [textField6 setFont:textField5];
  }
}

- (void)textViewDidEndEditing:(id)editing
{
  delegate = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self delegate];
    [delegate2 editableAvatarViewControllerDidEndEditing:self];
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  textCopy = text;
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v12 = [textCopy _cn_containsCharacterInSet:newlineCharacterSet];

  if (v12)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    markedTextRange = [viewCopy markedTextRange];
    beginningOfDocument = [viewCopy beginningOfDocument];
    start = [markedTextRange start];
    v17 = [viewCopy offsetFromPosition:beginningOfDocument toPosition:start];

    start2 = [markedTextRange start];
    v19 = [markedTextRange end];
    v20 = [viewCopy offsetFromPosition:start2 toPosition:v19];

    v22 = v17 == location && v20 == length;
    if (!markedTextRange || v22)
    {
      text = [viewCopy text];
      v24 = [text stringByReplacingCharactersInRange:location withString:{length, textCopy}];

      if ([(CNVisualIdentityEditablePrimaryAvatarViewController *)self hasValidInputTypeForText:v24])
      {
        v29 = 0;
        v25 = [CNUIStringUtilities composedCharacterCountForString:v24 containsEmoji:&v29];
        v13 = ![(CNVisualIdentityEditablePrimaryAvatarViewController *)self exceedsMaxCharacterCount:v25 containsEmoji:v29];
        if (v13)
        {
          [(CNVisualIdentityEditablePrimaryAvatarViewController *)self adjustFontSizeToFitWidthForText:v24];
          delegate = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self delegate];
          v27 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updatedProviderItemWithText:v24];
          [delegate editableAvatarViewController:self didUpdateWithProviderItem:v27];
        }

        else if ((v29 & 1) == 0)
        {
          [(CNVisualIdentityEditablePrimaryAvatarViewController *)self trimTextFieldTextIfNeeded:v24 containsEmoji:0];
        }
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 1;
    }
  }

  return v13;
}

- (id)updatedProviderItemWithText:(id)text
{
  textCopy = text;
  providerItem = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  if ([providerItem conformsToProtocol:&unk_1F0DD51E0])
  {
    v6 = providerItem;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 updatedProviderItemWithText:textCopy];
  }

  else
  {
    providerItem2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
    v8 = [providerItem2 copy];
  }

  return v8;
}

- (id)updatedProviderItem
{
  textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  text = [textField text];
  v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updatedProviderItemWithText:text];

  return v5;
}

- (void)updateContainerViewMask
{
  imageContainerView = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [imageContainerView bounds];
  v5 = v4;

  imageContainerView2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [imageContainerView2 bounds];
  v8 = v7;

  if (v5 >= v8)
  {
    v5 = v8;
  }

  imageContainerView3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [imageContainerView3 bounds];
  v11 = v10;
  imageContainerView4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [imageContainerView4 bounds];
  v14 = v13;

  v18 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v11, v14, v5, v5}];
  v15 = v18;
  cGPath = [v18 CGPath];
  clippingLayer = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self clippingLayer];
  [clippingLayer setPath:cGPath];
}

- (BOOL)isMonogramProviderItemType
{
  providerItem = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  v3 = [providerItem imageType] == 2;

  return v3;
}

- (BOOL)isEmojiProviderItemType
{
  providerItem = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  v3 = [providerItem imageType] == 4;

  return v3;
}

- (void)updateTextFieldFontSize:(double)size
{
  textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  font = [textField font];
  [font pointSize];
  v8 = v7;

  if (v8 != size)
  {
    v9 = +[CNUIFontRepository visualIdentityEditorTextFont];
    v10 = [v9 fontWithSize:size];
    [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setOriginalFont:v10];

    originalFont = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self originalFont];
    textField2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
    [textField2 setFont:originalFont];

    [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setDesiredFontSize:size];
  }
}

- (void)setupTextField
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = [CNVisualIdentityEditablePrimaryAvatarTextField alloc];
  v4 = [(CNVisualIdentityEditablePrimaryAvatarTextField *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setTextField:v4];

  textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField setTranslatesAutoresizingMaskIntoConstraints:0];

  imageContainerView = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  textField2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [imageContainerView addSubview:textField2];

  v30 = MEMORY[0x1E696ACD8];
  textField3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  centerXAnchor = [textField3 centerXAnchor];
  imageContainerView2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  centerXAnchor2 = [imageContainerView2 centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v33[0] = v10;
  textField4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  centerYAnchor = [textField4 centerYAnchor];
  imageContainerView3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  centerYAnchor2 = [imageContainerView3 centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v33[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v30 activateConstraints:v16];

  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self desiredFontSize];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updateTextFieldFontSize:?];
  v17 = +[CNUIColorRepository visualIdentityEditorMonogramTextColor];
  textField5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField5 setTextColor:v17];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  textField6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField6 setBackgroundColor:clearColor];

  textField7 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField7 setScrollEnabled:0];

  v22 = +[CNUIColorRepository visualIdentityEditorMonogramTextColor];
  textField8 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField8 setTintColor:v22];

  textField9 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField9 setTextAlignment:1];

  textField10 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField10 setAutocapitalizationType:3];

  textField11 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField11 setDelegate:self];

  if ([(CNVisualIdentityEditablePrimaryAvatarViewController *)self isEmojiProviderItemType])
  {
    v27 = 124;
  }

  else
  {
    v27 = 13;
  }

  textField12 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField12 setKeyboardType:v27];

  textField13 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField13 setAutocorrectionType:1];
}

- (void)setupImageContainerView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  view = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setImageContainerView:v5];

  imageContainerView = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [imageContainerView setAutoresizingMask:18];

  view2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self view];
  imageContainerView2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [view2 addSubview:imageContainerView2];

  v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setClippingLayer:v9];

  clippingLayer = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self clippingLayer];
  imageContainerView3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  layer = [imageContainerView3 layer];
  [layer setMask:clippingLayer];
}

- (void)populateViewWithTextEditableProviderItem:(id)item imageType:(unint64_t)type
{
  itemCopy = item;
  backgroundColor = [itemCopy backgroundColor];
  v7 = backgroundColor;
  if (backgroundColor)
  {
    color = backgroundColor;
  }

  else
  {
    variantsManager = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self variantsManager];
    avatarBackgrounds = [variantsManager avatarBackgrounds];
    firstObject = [avatarBackgrounds firstObject];
    color = [firstObject color];
  }

  itemText = [itemCopy itemText];
  textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField setText:itemText];

  textField2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  text = [textField2 text];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self adjustFontSizeToFitWidthForText:text];

  if (type == 2)
  {
    v16 = [CNPhotoPickerVariantsManager monogramColorGradientBackground:color];
    itemText2 = [itemCopy itemText];
    v18 = [CNUIStringUtilities stringIsSingleEmoji:itemText2];

    if (v18)
    {
      textField3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
      [textField3 setText:0];
    }
  }

  else
  {
    v16 = [CNPhotoPickerVariantsManager colorGradientBackground:color];
  }

  imageContainerView = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  imageContainerView2 = imageContainerView;
  if (v16)
  {
    [imageContainerView setImage:v16];
  }

  else
  {
    [imageContainerView setImage:0];

    imageContainerView2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
    [imageContainerView2 setBackgroundColor:color];
  }
}

- (void)updateViewWithProviderItem:(id)item
{
  itemCopy = item;
  providerItem = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  if ([providerItem conformsToProtocol:&unk_1F0DD51E0])
  {
    v6 = providerItem;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    imageContentView = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContentView];
    [imageContentView removeFromSuperview];

    -[CNVisualIdentityEditablePrimaryAvatarViewController populateViewWithTextEditableProviderItem:imageType:](self, "populateViewWithTextEditableProviderItem:imageType:", v7, [itemCopy imageType]);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__CNVisualIdentityEditablePrimaryAvatarViewController_updateViewWithProviderItem___block_invoke;
    v9[3] = &unk_1E74E73E8;
    v9[4] = self;
    [itemCopy fullSizeViewWithCompletion:v9];
  }
}

void __82__CNVisualIdentityEditablePrimaryAvatarViewController_updateViewWithProviderItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 imageContentView];

  if (v5)
  {
    v6 = [*(a1 + 32) imageContentView];
    [v6 removeFromSuperview];
  }

  v7 = [*(a1 + 32) imageContainerView];
  v8 = [v7 image];

  if (v8)
  {
    v9 = [*(a1 + 32) imageContainerView];
    [v9 setImage:0];
  }

  [*(a1 + 32) setImageContentView:v4];
  v10 = [*(a1 + 32) imageContainerView];
  [v10 bounds];
  [v4 setFrame:?];

  v11 = [*(a1 + 32) imageContainerView];
  [v11 addSubview:v4];
}

- (void)setUpFirstResponderForProviderItem:(id)item
{
  providerItem = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  if ([providerItem conformsToProtocol:&unk_1F0DD51E0])
  {
    v5 = providerItem;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    delegate = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0 || (-[CNVisualIdentityEditablePrimaryAvatarViewController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 editableAvatarViewControllerShouldBecomeFirstResponder:self], v8, v9))
    {
      textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
      [textField becomeFirstResponder];
    }
  }
}

- (void)endEditing
{
  textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  text = [textField text];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self trimTextFieldTextIfNeeded:text];

  textField2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField2 resignFirstResponder];
}

- (void)beginEditing
{
  textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField becomeFirstResponder];
}

- (void)updateWithProviderItem:(id)item
{
  itemCopy = item;
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setProviderItem:itemCopy];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updateViewWithProviderItem:itemCopy];
}

- (NSString)text
{
  textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  text = [textField text];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self trimTextFieldTextIfNeeded:text];

  textField2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  text2 = [textField2 text];

  return text2;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityEditablePrimaryAvatarViewController;
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)&v5 viewDidAppear:appear];
  providerItem = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setUpFirstResponderForProviderItem:providerItem];
}

- (void)viewDidLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = CNVisualIdentityEditablePrimaryAvatarViewController;
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)&v27 viewDidLayoutSubviews];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updateContainerViewMask];
  textField = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField frame];
  if (CGRectEqualToRect(v28, *MEMORY[0x1E695F058]))
  {
    goto LABEL_4;
  }

  textField2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField2 frame];
  if (CGRectEqualToRect(v29, *MEMORY[0x1E695F050]))
  {

LABEL_4:
LABEL_5:
    imageContainerView = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
    [imageContainerView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    textField3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
    [textField3 setFrame:{v7, v9, v11, v13}];

    goto LABEL_6;
  }

  textField4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [textField4 bounds];
  v19 = v18;
  v21 = v20;
  imageContainerView2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [imageContainerView2 bounds];
  v24 = v23;
  v26 = v25;

  if (v19 != v24 || v21 != v26)
  {
    goto LABEL_5;
  }

LABEL_6:
  textField5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  text = [textField5 text];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self adjustFontSizeToFitWidthForText:text];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CNVisualIdentityEditablePrimaryAvatarViewController;
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)&v8 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self view];
  [view setBackgroundColor:clearColor];

  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setupImageContainerView];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setupTextField];
  providerItem = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updateViewWithProviderItem:providerItem];

  v6 = +[CNUIColorRepository visualIdentityEditorBackgroundColor];
  view2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self view];
  [view2 setBackgroundColor:v6];
}

- (CNVisualIdentityEditablePrimaryAvatarViewController)initWithProviderItem:(id)item variantsManager:(id)manager
{
  itemCopy = item;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = CNVisualIdentityEditablePrimaryAvatarViewController;
  v9 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_providerItem, item);
    objc_storeStrong(&v10->_variantsManager, manager);
    v11 = v10;
  }

  return v10;
}

@end