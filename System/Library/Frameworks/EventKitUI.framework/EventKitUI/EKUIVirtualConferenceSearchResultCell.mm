@interface EKUIVirtualConferenceSearchResultCell
+ (id)_boldTitleFont;
- (void)updateWithCustomVirtualConference:(id)conference;
- (void)updateWithRoomType:(id)type;
@end

@implementation EKUIVirtualConferenceSearchResultCell

- (void)updateWithRoomType:(id)type
{
  typeCopy = type;
  if (([(EKVirtualConferenceRoomType *)self->_currentRoomType isEqual:typeCopy]& 1) == 0)
  {
    currentCustomVirtualConference = self->_currentCustomVirtualConference;
    self->_currentCustomVirtualConference = 0;

    objc_storeStrong(&self->_currentRoomType, type);
    defaultContentConfiguration = [(EKUILocationSearchResultCell *)self defaultContentConfiguration];
    [defaultContentConfiguration setDirectionalLayoutMargins:{15.0, 0.0, 15.0, 0.0}];
    [MEMORY[0x1E69669E0] conferenceImageSize];
    v9 = v8;
    imageProperties = [defaultContentConfiguration imageProperties];
    [imageProperties setReservedLayoutSize:{v9, v9}];

    imageProperties2 = [defaultContentConfiguration imageProperties];
    [imageProperties2 setMaximumSize:{v9, v9}];

    if (updateWithRoomType__onceToken != -1)
    {
      [EKUIVirtualConferenceSearchResultCell updateWithRoomType:];
    }

    v12 = [updateWithRoomType__cache objectForKey:typeCopy];
    if (v12)
    {
      title = [typeCopy title];
      [defaultContentConfiguration setText:title];

      [defaultContentConfiguration setImage:v12];
      [(EKUIVirtualConferenceSearchResultCell *)self setContentConfiguration:defaultContentConfiguration];
    }

    else
    {
      [defaultContentConfiguration setText:@" "];
      v14 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
      [defaultContentConfiguration setImage:v14];

      [(EKUIVirtualConferenceSearchResultCell *)self setContentConfiguration:defaultContentConfiguration];
      v15 = MEMORY[0x1E69933C0];
      currentRoomType = self->_currentRoomType;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __60__EKUIVirtualConferenceSearchResultCell_updateWithRoomType___block_invoke_2;
      v17[3] = &unk_1E8441728;
      v17[4] = self;
      v18 = defaultContentConfiguration;
      [v15 imageForRoomType:currentRoomType completionHandler:v17];
    }
  }
}

void __60__EKUIVirtualConferenceSearchResultCell_updateWithRoomType___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = updateWithRoomType__cache;
  updateWithRoomType__cache = v0;
}

void __60__EKUIVirtualConferenceSearchResultCell_updateWithRoomType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [updateWithRoomType__cache setObject:v5 forKey:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__EKUIVirtualConferenceSearchResultCell_updateWithRoomType___block_invoke_3;
  v10[3] = &unk_1E8440C00;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __60__EKUIVirtualConferenceSearchResultCell_updateWithRoomType___block_invoke_3(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1024) isEqual:*(a1 + 40)];
  if (result)
  {
    v3 = [*(a1 + 40) title];
    [*(a1 + 48) setText:v3];

    [*(a1 + 48) setImage:*(a1 + 56)];
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);

    return [v5 setContentConfiguration:v4];
  }

  return result;
}

- (void)updateWithCustomVirtualConference:(id)conference
{
  conferenceCopy = conference;
  currentRoomType = self->_currentRoomType;
  self->_currentRoomType = 0;

  objc_storeStrong(&self->_currentCustomVirtualConference, conference);
  joinMethods = [(EKVirtualConference *)self->_currentCustomVirtualConference joinMethods];
  firstObject = [joinMethods firstObject];
  v9 = [firstObject URL];

  defaultContentConfiguration = [(EKUILocationSearchResultCell *)self defaultContentConfiguration];
  [defaultContentConfiguration setDirectionalLayoutMargins:{15.0, 0.0, 15.0, 0.0}];
  systemGray2Color = [MEMORY[0x1E69DC888] systemGray2Color];
  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setTintColor:systemGray2Color];

  _boldTitleFont = [objc_opt_class() _boldTitleFont];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setFont:_boldTitleFont];

  [defaultContentConfiguration setText:@" "];
  [defaultContentConfiguration setSecondaryText:@" "];
  contentConfiguration = [(EKUIVirtualConferenceSearchResultCell *)self contentConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    secondaryText = [contentConfiguration secondaryText];
    absoluteString = [v9 absoluteString];
    v18 = absoluteString;
    if (secondaryText && absoluteString)
    {
      if ([secondaryText rangeOfString:absoluteString] != 0x7FFFFFFFFFFFFFFFLL)
      {

        goto LABEL_9;
      }

      v19 = [v18 rangeOfString:secondaryText];

      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  [(EKUIVirtualConferenceSearchResultCell *)self setContentConfiguration:defaultContentConfiguration];
LABEL_9:
  v20 = MEMORY[0x1E69933C0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__EKUIVirtualConferenceSearchResultCell_updateWithCustomVirtualConference___block_invoke;
  v22[3] = &unk_1E843EF00;
  v22[4] = self;
  v23 = defaultContentConfiguration;
  v21 = defaultContentConfiguration;
  [v20 displayDetailsForURL:v9 completionHandler:v22];
}

void __75__EKUIVirtualConferenceSearchResultCell_updateWithCustomVirtualConference___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__EKUIVirtualConferenceSearchResultCell_updateWithCustomVirtualConference___block_invoke_2;
  block[3] = &unk_1E8440D68;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v8;
  v21 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __75__EKUIVirtualConferenceSearchResultCell_updateWithCustomVirtualConference___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 1032) joinMethods];
  v4 = [v3 firstObject];
  v5 = [v4 URL];
  LODWORD(v2) = [v2 isEqual:v5];

  if (v2)
  {
    [*(a1 + 48) setImage:*(a1 + 56)];
    [*(a1 + 48) setText:*(a1 + 64)];
    v6 = MEMORY[0x1E696AEC0];
    v7 = EventKitUIBundle();
    v8 = [v7 localizedStringForKey:@"“%@”" value:&stru_1F4EF6790 table:0];
    v9 = [*(a1 + 32) absoluteString];
    v10 = [v6 localizedStringWithFormat:v8, v9];
    [*(a1 + 48) setSecondaryText:v10];

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);

    [v11 setContentConfiguration:v12];
  }
}

+ (id)_boldTitleFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:2 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

@end