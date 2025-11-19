@interface EKUIVirtualConferenceSearchResultCell
+ (id)_boldTitleFont;
- (void)updateWithCustomVirtualConference:(id)a3;
- (void)updateWithRoomType:(id)a3;
@end

@implementation EKUIVirtualConferenceSearchResultCell

- (void)updateWithRoomType:(id)a3
{
  v5 = a3;
  if (([(EKVirtualConferenceRoomType *)self->_currentRoomType isEqual:v5]& 1) == 0)
  {
    currentCustomVirtualConference = self->_currentCustomVirtualConference;
    self->_currentCustomVirtualConference = 0;

    objc_storeStrong(&self->_currentRoomType, a3);
    v7 = [(EKUILocationSearchResultCell *)self defaultContentConfiguration];
    [v7 setDirectionalLayoutMargins:{15.0, 0.0, 15.0, 0.0}];
    [MEMORY[0x1E69669E0] conferenceImageSize];
    v9 = v8;
    v10 = [v7 imageProperties];
    [v10 setReservedLayoutSize:{v9, v9}];

    v11 = [v7 imageProperties];
    [v11 setMaximumSize:{v9, v9}];

    if (updateWithRoomType__onceToken != -1)
    {
      [EKUIVirtualConferenceSearchResultCell updateWithRoomType:];
    }

    v12 = [updateWithRoomType__cache objectForKey:v5];
    if (v12)
    {
      v13 = [v5 title];
      [v7 setText:v13];

      [v7 setImage:v12];
      [(EKUIVirtualConferenceSearchResultCell *)self setContentConfiguration:v7];
    }

    else
    {
      [v7 setText:@" "];
      v14 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
      [v7 setImage:v14];

      [(EKUIVirtualConferenceSearchResultCell *)self setContentConfiguration:v7];
      v15 = MEMORY[0x1E69933C0];
      currentRoomType = self->_currentRoomType;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __60__EKUIVirtualConferenceSearchResultCell_updateWithRoomType___block_invoke_2;
      v17[3] = &unk_1E8441728;
      v17[4] = self;
      v18 = v7;
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

- (void)updateWithCustomVirtualConference:(id)a3
{
  v5 = a3;
  currentRoomType = self->_currentRoomType;
  self->_currentRoomType = 0;

  objc_storeStrong(&self->_currentCustomVirtualConference, a3);
  v7 = [(EKVirtualConference *)self->_currentCustomVirtualConference joinMethods];
  v8 = [v7 firstObject];
  v9 = [v8 URL];

  v10 = [(EKUILocationSearchResultCell *)self defaultContentConfiguration];
  [v10 setDirectionalLayoutMargins:{15.0, 0.0, 15.0, 0.0}];
  v11 = [MEMORY[0x1E69DC888] systemGray2Color];
  v12 = [v10 imageProperties];
  [v12 setTintColor:v11];

  v13 = [objc_opt_class() _boldTitleFont];
  v14 = [v10 textProperties];
  [v14 setFont:v13];

  [v10 setText:@" "];
  [v10 setSecondaryText:@" "];
  v15 = [(EKUIVirtualConferenceSearchResultCell *)self contentConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 secondaryText];
    v17 = [v9 absoluteString];
    v18 = v17;
    if (v16 && v17)
    {
      if ([v16 rangeOfString:v17] != 0x7FFFFFFFFFFFFFFFLL)
      {

        goto LABEL_9;
      }

      v19 = [v18 rangeOfString:v16];

      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  [(EKUIVirtualConferenceSearchResultCell *)self setContentConfiguration:v10];
LABEL_9:
  v20 = MEMORY[0x1E69933C0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__EKUIVirtualConferenceSearchResultCell_updateWithCustomVirtualConference___block_invoke;
  v22[3] = &unk_1E843EF00;
  v22[4] = self;
  v23 = v10;
  v21 = v10;
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