@interface CNVisualIdentityEditablePrimaryAvatarViewController
- (BOOL)exceedsMaxCharacterCount:(int64_t)a3 containsEmoji:(BOOL)a4;
- (BOOL)hasValidInputTypeForText:(id)a3;
- (BOOL)isEmojiProviderItemType;
- (BOOL)isMonogramProviderItemType;
- (BOOL)primaryAvatarShouldDisplay;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CNVisualIdentityEditablePrimaryAvatarViewController)initWithProviderItem:(id)a3 variantsManager:(id)a4;
- (CNVisualIdentityEditablePrimaryAvatarViewControllerDelegate)delegate;
- (NSString)text;
- (double)maxTextFieldSize;
- (id)updatedProviderItem;
- (id)updatedProviderItemWithText:(id)a3;
- (void)adjustFontSizeToFitWidthForText:(id)a3;
- (void)beginEditing;
- (void)endEditing;
- (void)populateViewWithTextEditableProviderItem:(id)a3 imageType:(unint64_t)a4;
- (void)setUpFirstResponderForProviderItem:(id)a3;
- (void)setupImageContainerView;
- (void)setupTextField;
- (void)textViewDidEndEditing:(id)a3;
- (void)trimTextFieldTextIfNeeded:(id)a3;
- (void)trimTextFieldTextIfNeeded:(id)a3 containsEmoji:(BOOL)a4;
- (void)updateContainerViewMask;
- (void)updatePrimaryAvatarForVisualIdentity:(id)a3;
- (void)updateTextFieldFontSize:(double)a3;
- (void)updateViewWithProviderItem:(id)a3;
- (void)updateWithProviderItem:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
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
  v2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  v3 = v2 != 0;

  return v3;
}

- (void)updatePrimaryAvatarForVisualIdentity:(id)a3
{
  v10 = a3;
  v4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  if (!v4)
  {
    v5 = [v10 imageData];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = [CNPhotoPickerProviderItem alloc];
    v7 = [v10 imageData];
    v8 = [v10 thumbnailImageData];
    v9 = [v10 fullscreenImageData];
    [v10 cropRect];
    v4 = [(CNPhotoPickerProviderItem *)v6 initWithImageData:v7 thumbnailImageData:v8 fullscreenImageData:v9 cropRect:?];

    [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updateWithProviderItem:v4];
  }

LABEL_5:
}

- (double)maxTextFieldSize
{
  v2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [v2 bounds];
  v4 = v3 + -20.0;

  return v4;
}

- (BOOL)exceedsMaxCharacterCount:(int64_t)a3 containsEmoji:(BOOL)a4
{
  v4 = 1;
  if (!a4)
  {
    v4 = 2;
  }

  return v4 < a3;
}

- (BOOL)hasValidInputTypeForText:(id)a3
{
  v4 = a3;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self isEmojiProviderItemType];
    v6 = [CNUIStringUtilities stringContainsEmoji:v4];
    v7 = v5 && v6 || !v5 && !v6;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (void)trimTextFieldTextIfNeeded:(id)a3 containsEmoji:(BOOL)a4
{
  if (!a4)
  {
    v7 = [a3 _cn_take:2];
    v6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
    [v6 setText:v7];
  }
}

- (void)trimTextFieldTextIfNeeded:(id)a3
{
  v4 = a3;
  v6 = 0;
  v5 = [CNUIStringUtilities composedCharacterCountForString:v4 containsEmoji:&v6];
  if ([(CNVisualIdentityEditablePrimaryAvatarViewController *)self exceedsMaxCharacterCount:v5 containsEmoji:v6])
  {
    [(CNVisualIdentityEditablePrimaryAvatarViewController *)self trimTextFieldTextIfNeeded:v4 containsEmoji:v6];
  }
}

- (void)adjustFontSizeToFitWidthForText:(id)a3
{
  v42[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCBF0];
  v5 = a3;
  v6 = [v4 sharedInputModeController];
  v7 = [v6 currentInputMode];
  v8 = [v7 isDefaultRightToLeft];

  v9 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v9 setMaximumNumberOfLines:1];
  v10 = v8;
  v11 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v41[0] = *MEMORY[0x1E69DB648];
  v16 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self originalFont];
  v42[0] = v16;
  v41[1] = *MEMORY[0x1E69DB778];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v40 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v42[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  [v5 boundingRectWithSize:33 options:v19 attributes:v9 context:{v13, v15}];
  v21 = v20;
  v23 = v22;

  v24 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v24 contentOffset];
  v26 = v25;

  v27 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v27 bounds];
  v29 = v28 + -20.0;
  v30 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v30 zoomScale];
  v32 = v29 - v23 * v31;

  if (v32 * 0.5 <= 0.0)
  {
    v33 = -0.0;
  }

  else
  {
    v33 = -(v32 * 0.5);
  }

  v34 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v34 setContentOffset:{v26, v33}];

  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self maxTextFieldSize];
  if (v21 <= v35)
  {
    v36 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self originalFont];
    v38 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
    [v38 setFont:v36];
  }

  else
  {
    v36 = +[CNUIFontRepository visualIdentityEditorTextFont];
    [(CNVisualIdentityEditablePrimaryAvatarViewController *)self desiredFontSize];
    v38 = [v36 fontWithSize:v37 * 0.8];
    v39 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
    [v39 setFont:v38];
  }
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self delegate];
    [v6 editableAvatarViewControllerDidEndEditing:self];
  }
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v12 = [v10 _cn_containsCharacterInSet:v11];

  if (v12)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v14 = [v9 markedTextRange];
    v15 = [v9 beginningOfDocument];
    v16 = [v14 start];
    v17 = [v9 offsetFromPosition:v15 toPosition:v16];

    v18 = [v14 start];
    v19 = [v14 end];
    v20 = [v9 offsetFromPosition:v18 toPosition:v19];

    v22 = v17 == location && v20 == length;
    if (!v14 || v22)
    {
      v23 = [v9 text];
      v24 = [v23 stringByReplacingCharactersInRange:location withString:{length, v10}];

      if ([(CNVisualIdentityEditablePrimaryAvatarViewController *)self hasValidInputTypeForText:v24])
      {
        v29 = 0;
        v25 = [CNUIStringUtilities composedCharacterCountForString:v24 containsEmoji:&v29];
        v13 = ![(CNVisualIdentityEditablePrimaryAvatarViewController *)self exceedsMaxCharacterCount:v25 containsEmoji:v29];
        if (v13)
        {
          [(CNVisualIdentityEditablePrimaryAvatarViewController *)self adjustFontSizeToFitWidthForText:v24];
          v26 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self delegate];
          v27 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updatedProviderItemWithText:v24];
          [v26 editableAvatarViewController:self didUpdateWithProviderItem:v27];
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

- (id)updatedProviderItemWithText:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  if ([v5 conformsToProtocol:&unk_1F0DD51E0])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 updatedProviderItemWithText:v4];
  }

  else
  {
    v9 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
    v8 = [v9 copy];
  }

  return v8;
}

- (id)updatedProviderItem
{
  v3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  v4 = [v3 text];
  v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updatedProviderItemWithText:v4];

  return v5;
}

- (void)updateContainerViewMask
{
  v3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [v3 bounds];
  v5 = v4;

  v6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [v6 bounds];
  v8 = v7;

  if (v5 >= v8)
  {
    v5 = v8;
  }

  v9 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [v9 bounds];
  v11 = v10;
  v12 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [v12 bounds];
  v14 = v13;

  v18 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v11, v14, v5, v5}];
  v15 = v18;
  v16 = [v18 CGPath];
  v17 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self clippingLayer];
  [v17 setPath:v16];
}

- (BOOL)isMonogramProviderItemType
{
  v2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  v3 = [v2 imageType] == 2;

  return v3;
}

- (BOOL)isEmojiProviderItemType
{
  v2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  v3 = [v2 imageType] == 4;

  return v3;
}

- (void)updateTextFieldFontSize:(double)a3
{
  v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  v6 = [v5 font];
  [v6 pointSize];
  v8 = v7;

  if (v8 != a3)
  {
    v9 = +[CNUIFontRepository visualIdentityEditorTextFont];
    v10 = [v9 fontWithSize:a3];
    [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setOriginalFont:v10];

    v11 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self originalFont];
    v12 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
    [v12 setFont:v11];

    [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setDesiredFontSize:a3];
  }
}

- (void)setupTextField
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = [CNVisualIdentityEditablePrimaryAvatarTextField alloc];
  v4 = [(CNVisualIdentityEditablePrimaryAvatarTextField *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setTextField:v4];

  v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  v7 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v6 addSubview:v7];

  v30 = MEMORY[0x1E696ACD8];
  v32 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  v31 = [v32 centerXAnchor];
  v8 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  v9 = [v8 centerXAnchor];
  v10 = [v31 constraintEqualToAnchor:v9];
  v33[0] = v10;
  v11 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  v12 = [v11 centerYAnchor];
  v13 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  v14 = [v13 centerYAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v33[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v30 activateConstraints:v16];

  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self desiredFontSize];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updateTextFieldFontSize:?];
  v17 = +[CNUIColorRepository visualIdentityEditorMonogramTextColor];
  v18 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v18 setTextColor:v17];

  v19 = [MEMORY[0x1E69DC888] clearColor];
  v20 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v20 setBackgroundColor:v19];

  v21 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v21 setScrollEnabled:0];

  v22 = +[CNUIColorRepository visualIdentityEditorMonogramTextColor];
  v23 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v23 setTintColor:v22];

  v24 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v24 setTextAlignment:1];

  v25 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v25 setAutocapitalizationType:3];

  v26 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v26 setDelegate:self];

  if ([(CNVisualIdentityEditablePrimaryAvatarViewController *)self isEmojiProviderItemType])
  {
    v27 = 124;
  }

  else
  {
    v27 = 13;
  }

  v28 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v28 setKeyboardType:v27];

  v29 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v29 setAutocorrectionType:1];
}

- (void)setupImageContainerView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setImageContainerView:v5];

  v6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [v6 setAutoresizingMask:18];

  v7 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self view];
  v8 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [v7 addSubview:v8];

  v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setClippingLayer:v9];

  v12 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self clippingLayer];
  v10 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  v11 = [v10 layer];
  [v11 setMask:v12];
}

- (void)populateViewWithTextEditableProviderItem:(id)a3 imageType:(unint64_t)a4
{
  v22 = a3;
  v6 = [v22 backgroundColor];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self variantsManager];
    v10 = [v9 avatarBackgrounds];
    v11 = [v10 firstObject];
    v8 = [v11 color];
  }

  v12 = [v22 itemText];
  v13 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v13 setText:v12];

  v14 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  v15 = [v14 text];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self adjustFontSizeToFitWidthForText:v15];

  if (a4 == 2)
  {
    v16 = [CNPhotoPickerVariantsManager monogramColorGradientBackground:v8];
    v17 = [v22 itemText];
    v18 = [CNUIStringUtilities stringIsSingleEmoji:v17];

    if (v18)
    {
      v19 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
      [v19 setText:0];
    }
  }

  else
  {
    v16 = [CNPhotoPickerVariantsManager colorGradientBackground:v8];
  }

  v20 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  v21 = v20;
  if (v16)
  {
    [v20 setImage:v16];
  }

  else
  {
    [v20 setImage:0];

    v21 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
    [v21 setBackgroundColor:v8];
  }
}

- (void)updateViewWithProviderItem:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  if ([v5 conformsToProtocol:&unk_1F0DD51E0])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContentView];
    [v8 removeFromSuperview];

    -[CNVisualIdentityEditablePrimaryAvatarViewController populateViewWithTextEditableProviderItem:imageType:](self, "populateViewWithTextEditableProviderItem:imageType:", v7, [v4 imageType]);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__CNVisualIdentityEditablePrimaryAvatarViewController_updateViewWithProviderItem___block_invoke;
    v9[3] = &unk_1E74E73E8;
    v9[4] = self;
    [v4 fullSizeViewWithCompletion:v9];
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

- (void)setUpFirstResponderForProviderItem:(id)a3
{
  v4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  if ([v4 conformsToProtocol:&unk_1F0DD51E0])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0 || (-[CNVisualIdentityEditablePrimaryAvatarViewController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 editableAvatarViewControllerShouldBecomeFirstResponder:self], v8, v9))
    {
      v10 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
      [v10 becomeFirstResponder];
    }
  }
}

- (void)endEditing
{
  v3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  v4 = [v3 text];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self trimTextFieldTextIfNeeded:v4];

  v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v5 resignFirstResponder];
}

- (void)beginEditing
{
  v2 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v2 becomeFirstResponder];
}

- (void)updateWithProviderItem:(id)a3
{
  v4 = a3;
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setProviderItem:v4];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updateViewWithProviderItem:v4];
}

- (NSString)text
{
  v3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  v4 = [v3 text];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self trimTextFieldTextIfNeeded:v4];

  v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  v6 = [v5 text];

  return v6;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityEditablePrimaryAvatarViewController;
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)&v5 viewDidAppear:a3];
  v4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setUpFirstResponderForProviderItem:v4];
}

- (void)viewDidLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = CNVisualIdentityEditablePrimaryAvatarViewController;
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)&v27 viewDidLayoutSubviews];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updateContainerViewMask];
  v3 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v3 frame];
  if (CGRectEqualToRect(v28, *MEMORY[0x1E695F058]))
  {
    goto LABEL_4;
  }

  v4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v4 frame];
  if (CGRectEqualToRect(v29, *MEMORY[0x1E695F050]))
  {

LABEL_4:
LABEL_5:
    v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
    [v14 setFrame:{v7, v9, v11, v13}];

    goto LABEL_6;
  }

  v17 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v22 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self imageContainerView];
  [v22 bounds];
  v24 = v23;
  v26 = v25;

  if (v19 != v24 || v21 != v26)
  {
    goto LABEL_5;
  }

LABEL_6:
  v15 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self textField];
  v16 = [v15 text];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self adjustFontSizeToFitWidthForText:v16];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CNVisualIdentityEditablePrimaryAvatarViewController;
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setupImageContainerView];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self setupTextField];
  v5 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self providerItem];
  [(CNVisualIdentityEditablePrimaryAvatarViewController *)self updateViewWithProviderItem:v5];

  v6 = +[CNUIColorRepository visualIdentityEditorBackgroundColor];
  v7 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)self view];
  [v7 setBackgroundColor:v6];
}

- (CNVisualIdentityEditablePrimaryAvatarViewController)initWithProviderItem:(id)a3 variantsManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNVisualIdentityEditablePrimaryAvatarViewController;
  v9 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_providerItem, a3);
    objc_storeStrong(&v10->_variantsManager, a4);
    v11 = v10;
  }

  return v10;
}

@end