@interface EKEventURLDetailItem
+ (id)titleForCell;
+ (id)titleForExtendedViewController;
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (id)_createEventDetailCell;
- (id)attributedTextFromEventBlock;
- (id)linkWithLaunchInfo;
- (id)linkWithURL;
- (id)textForCopyAction;
- (id)textForExtendedViewController;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)reset;
@end

@implementation EKEventURLDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

+ (id)titleForExtendedViewController
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"URL" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)titleForCell
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"URL" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)attributedTextFromEventBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__EKEventURLDetailItem_attributedTextFromEventBlock__block_invoke;
  v4[3] = &unk_1E843F5D8;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

id __52__EKEventURLDetailItem_attributedTextFromEventBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained linkWithLaunchInfo];
  if (!v2)
  {
    v2 = [WeakRetained linkWithURL];
  }

  return v2;
}

- (id)linkWithURL
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(EKEvent *)self->super.super._event URL];

  if (v3)
  {
    v4 = [(EKEvent *)self->super.super._event URL];
    v5 = CUIKGetAttributedStringForEventDetailWithURL();

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E696AD40]);
      v7 = [(EKEvent *)self->super.super._event URL];
      v8 = CUIKGetAttributedStringForEventDetailWithURL();
      v9 = [v6 initWithAttributedString:v8];

      v13 = *MEMORY[0x1E69DB648];
      v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      v14[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [v9 addAttributes:v11 range:{0, objc_msgSend(v9, "length")}];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)linkWithLaunchInfo
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (self->_launchInfo)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"calshow://launchSuggestedEvent"];
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    localizedShowInString = [(SGSuggestedEventLaunchInfo *)self->_launchInfo localizedShowInString];
    v7 = *MEMORY[0x1E69DB670];
    v14[0] = v4;
    v8 = *MEMORY[0x1E69DB648];
    v13[0] = v7;
    v13[1] = v8;
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v14[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v11 = [v5 initWithString:localizedShowInString attributes:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)textForCopyAction
{
  v2 = [(EKEvent *)self->super.super._event URL];
  absoluteString = [v2 absoluteString];

  return absoluteString;
}

- (id)textForExtendedViewController
{
  v2 = [(EKEvent *)self->super.super._event URL];
  absoluteString = [v2 absoluteString];

  return absoluteString;
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  v38 = *MEMORY[0x1E69E9840];
  if (([(EKEvent *)self->super.super._event isBirthday:event]& 1) != 0)
  {
    return 0;
  }

  v7 = [(EKEvent *)self->super.super._event URL];
  absoluteString = [v7 absoluteString];
  v9 = [absoluteString length];

  if (v9)
  {
    v10 = [(EKEvent *)self->super.super._event URL];
    url = self->_url;
    self->_url = v10;
  }

  if (![MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp])
  {
    return self->_url != 0;
  }

  suggestionInfo = [(EKEvent *)self->super.super._event suggestionInfo];

  if (!suggestionInfo)
  {
    return self->_url != 0;
  }

  suggestionInfo2 = [(EKEvent *)self->super.super._event suggestionInfo];
  uniqueKey = [suggestionInfo2 uniqueKey];

  if (!uniqueKey)
  {
    v22 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      event = self->super.super._event;
      v24 = v22;
      calendarItemExternalIdentifier = [(EKEvent *)event calendarItemExternalIdentifier];
      suggestionInfo3 = [(EKEvent *)self->super.super._event suggestionInfo];
      *buf = 138543618;
      v35 = calendarItemExternalIdentifier;
      v36 = 2112;
      v37 = suggestionInfo3;
      _os_log_impl(&dword_1D3400000, v24, OS_LOG_TYPE_ERROR, "We found an event with suggestionInfo but no unique key [id: %{public}@ suggestionInfo:%@]", buf, 0x16u);
    }

    return 0;
  }

  v15 = self->_url;
  v16 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
  suggestionInfo4 = [(EKEvent *)self->super.super._event suggestionInfo];
  uniqueKey2 = [suggestionInfo4 uniqueKey];
  v19 = self->_url;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  if (v15)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __60__EKEventURLDetailItem_configureWithEvent_calendar_preview___block_invoke;
    v32[3] = &unk_1E843F600;
    v32[4] = self;
    [v16 launchInfoForSuggestedEventWithUniqueIdentifier:uniqueKey2 sourceURL:v19 clientLocale:currentLocale withCompletion:v32];

    return 1;
  }

  else
  {
    v33 = 0;
    v27 = [v16 launchInfoForSuggestedEventWithUniqueIdentifier:uniqueKey2 sourceURL:v19 clientLocale:currentLocale error:&v33];
    v28 = v33;
    launchInfo = self->_launchInfo;
    self->_launchInfo = v27;

    v30 = self->_launchInfo;
    v6 = v30 != 0;
    if (!v30)
    {
      v31 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v28;
        _os_log_impl(&dword_1D3400000, v31, OS_LOG_TYPE_ERROR, "Could not find synchronous launch info for suggested event: %@", buf, 0xCu);
      }
    }
  }

  return v6;
}

void __60__EKEventURLDetailItem_configureWithEvent_calendar_preview___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__EKEventURLDetailItem_configureWithEvent_calendar_preview___block_invoke_2;
  block[3] = &unk_1E843EC38;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__EKEventURLDetailItem_configureWithEvent_calendar_preview___block_invoke_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    objc_storeStrong((a1[6] + 104), v2);
  }

  else
  {
    v3 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v4 = a1[5];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_ERROR, "Could not find async launch info for suggested event: %@", &v5, 0xCu);
    }
  }
}

- (id)_createEventDetailCell
{
  v3 = [EKEventDetailTextCell alloc];
  event = self->super.super._event;
  titleForCell = [objc_opt_class() titleForCell];
  attributedTextFromEventBlock = [(EKEventURLDetailItem *)self attributedTextFromEventBlock];
  v7 = [(EKEventDetailTextCell *)v3 initWithEvent:event title:titleForCell attributedTextFromEventBlock:attributedTextFromEventBlock textViewDelegate:self axTextView:@"event-details-url-link"];

  [(EKEventDetailTextCell *)v7 setAccessibilityIdentifier:@"event-details-url-cell"];

  return v7;
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  actionCopy = action;
  link = [item link];
  v9 = link;
  v10 = actionCopy;
  if (link)
  {
    absoluteString = [link absoluteString];
    v12 = [absoluteString isEqualToString:@"calshow://launchSuggestedEvent"];

    if (v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__EKEventURLDetailItem_textView_primaryActionForTextItem_defaultAction___block_invoke;
      v17[3] = &unk_1E843F648;
      v17[4] = self;
      v10 = [MEMORY[0x1E69DC628] actionWithHandler:v17];
    }

    else
    {
      v10 = actionCopy;
      if (+[SwappableViewControllerImplementationFactory shouldUseOutOfProcessUI])
      {
        v13 = MEMORY[0x1E69DC628];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __72__EKEventURLDetailItem_textView_primaryActionForTextItem_defaultAction___block_invoke_43;
        v15[3] = &unk_1E843F648;
        v16 = v9;
        v10 = [v13 actionWithHandler:v15];
      }
    }
  }

  return v10;
}

void __72__EKEventURLDetailItem_textView_primaryActionForTextItem_defaultAction___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
  [v2 launchAppForSuggestedEventUsingLaunchInfo:*(*(a1 + 32) + 104) withCompletion:&__block_literal_global_6];
}

void __72__EKEventURLDetailItem_textView_primaryActionForTextItem_defaultAction___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_ERROR, "Failed to open suggested event: %@", &v4, 0xCu);
    }
  }
}

void __72__EKEventURLDetailItem_textView_primaryActionForTextItem_defaultAction___block_invoke_43(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openURL:*(a1 + 32) configuration:0 completionHandler:&__block_literal_global_48];
}

void __72__EKEventURLDetailItem_textView_primaryActionForTextItem_defaultAction___block_invoke_2_45(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Failed to open URL in OOP UI: %@", &v7, 0xCu);
    }
  }
}

@end