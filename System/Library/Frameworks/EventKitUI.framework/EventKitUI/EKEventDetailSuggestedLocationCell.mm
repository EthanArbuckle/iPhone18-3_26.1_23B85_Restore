@interface EKEventDetailSuggestedLocationCell
- (CGRect)bannerPopoverSourceRect;
- (EKEventDetailSuggestedLocationCell)initWithFrame:(CGRect)a3;
- (EKEventDetailSuggestedLocationCell)initWithInlineStyle:(BOOL)a3;
- (EKEventDetailSuggestedLocationCellDelegate)delegate;
- (void)_disambiguateIfNeeded;
- (void)_setIcon;
- (void)commonInit;
- (void)dismissAction;
- (void)setEvent:(id)a3;
@end

@implementation EKEventDetailSuggestedLocationCell

- (EKEventDetailSuggestedLocationCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = EKEventDetailSuggestedLocationCell;
  v3 = [(EKEventDetailSuggestedLocationCell *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    [(EKEventDetailSuggestedLocationCell *)v3 commonInit];
  }

  return v4;
}

- (EKEventDetailSuggestedLocationCell)initWithInlineStyle:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = EKEventDetailSuggestedLocationCell;
  v4 = [(EKEventDetailSuggestedLocationCell *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_inlineStyle = a3;
    [(EKEventDetailSuggestedLocationCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  EKWeakLinkClass();
  v3 = EKWeakLinkClass();
  v4 = EKWeakLinkClass();
  v5 = objc_opt_new();
  v6 = EventKitUIBundle();
  v7 = [v6 localizedStringForKey:@"Suggested Location" value:&stru_1F4EF6790 table:0];
  [v5 setTitle:v7];

  [v5 setAccessoryType:1];
  [v5 setActionButtonType:0];
  v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  if (MEMORY[0x1D38B98D0]())
  {
    v9 = [MEMORY[0x1E69DC888] clearColor];

    [v5 setIgnoreSafeAreaInsets:1];
  }

  else
  {
    if (!self->_inlineStyle)
    {
      v10 = 3;
      goto LABEL_7;
    }

    v9 = EKHalfSystemGroupedBackgroundColor();

    +[EKUIClearButton trailingOffsetToMarginForTextFieldClearButtonAlignment];
    [v5 setCloseButtonXAnchorOffset:?];
  }

  v10 = 0;
  v8 = v9;
LABEL_7:
  [v5 setBackgroundColor:v8];
  v11 = [v3 alloc];
  v12 = [MEMORY[0x1E69DC888] separatorColor];
  v13 = [v11 initWithPosition:v10 color:v12];
  [v5 setBannerDivider:v13];

  v14 = EventKitUIBundle();
  v15 = [v14 localizedStringForKey:@"Title for suggested location banner primary action button" value:@"Add" table:0];

  [v5 setActionTitle:v15];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __48__EKEventDetailSuggestedLocationCell_commonInit__block_invoke;
  v27[3] = &unk_1E843F458;
  v27[4] = self;
  v16 = [v4 actionWithTitle:v15 handler:v27];
  [v5 setPrimaryAction:v16];
  v17 = EventKitUIBundle();
  v18 = [v17 localizedStringForKey:@"Dismiss" value:&stru_1F4EF6790 table:0];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __48__EKEventDetailSuggestedLocationCell_commonInit__block_invoke_2;
  v26[3] = &unk_1E843F458;
  v26[4] = self;
  v19 = [v4 actionWithTitle:v18 handler:v26];
  [v5 setDismissAction:v19];
  [(EKEventDetailSuggestedLocationCell *)self setBanner:v5];
  v20 = [(EKEventDetailSuggestedLocationCell *)self contentView];
  [v20 addSubview:v5];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = _NSDictionaryOfVariableBindings(&cfstr_Bannerview.isa, v5, 0);
  v22 = MEMORY[0x1E696ACD8];
  v23 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[bannerView]|" options:0 metrics:0 views:v21];
  [v22 activateConstraints:v23];

  v24 = MEMORY[0x1E696ACD8];
  v25 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[bannerView]|" options:0 metrics:0 views:v21];
  [v24 activateConstraints:v25];

  [v5 reload];
}

- (CGRect)bannerPopoverSourceRect
{
  v2 = [(EKEventDetailSuggestedLocationCell *)self banner];
  [v2 popoverSourceRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setEvent:(id)a3
{
  objc_storeStrong(&self->_event, a3);
  v5 = a3;
  v6 = [v5 preferredLocation];
  location = self->_location;
  self->_location = v6;

  [(EKEventDetailSuggestedLocationCell *)self _setIcon];
  v10 = [MEMORY[0x1E6993408] locationStringForEvent:v5 options:25];

  v8 = [v10 string];
  v9 = [(EKEventDetailSuggestedLocationCell *)self banner];
  [v9 setSubtitle:v8];
}

- (void)_setIcon
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"mappin.and.ellipse"];
  v4 = [v3 imageWithRenderingMode:2];

  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, 28.0, 28.0}];
  [v5 setImage:v4];
  [v5 setContentMode:1];
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v5 setTintColor:v6];

  v10[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [(EKEventDetailSuggestedLocationCell *)self banner];
  [v8 setImageSGViews:v7];

  v9 = [(EKEventDetailSuggestedLocationCell *)self banner];
  [v9 reload];
}

- (void)_disambiguateIfNeeded
{
  v71[1] = *MEMORY[0x1E69E9840];
  v3 = [(EKEventDetailSuggestedLocationCell *)self window];
  v4 = [v3 rootViewController];

  v5 = [v4 presentedViewController];

  if (v5)
  {
    do
    {
      v6 = [v4 presentedViewController];

      v7 = [v6 presentedViewController];

      v4 = v6;
    }

    while (v7);
  }

  else
  {
    v6 = v4;
  }

  v8 = [(EKStructuredLocation *)self->_location geoLocation];
  [v8 coordinate];
  v10 = v9;
  v12 = v11;

  [(EKStructuredLocation *)self->_location radius];
  v14 = v13;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  v70 = 0;
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v16 = objc_opt_new();
  v17 = EKWeakLinkClass();
  v18 = [objc_alloc(MEMORY[0x1E69A25A0]) initWithCoordinate:0 radius:v10 categories:{v12, fmax(v14 * 1.5, 25.0)}];
  v19 = [MEMORY[0x1E69A2208] sharedService];
  v71[0] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
  v21 = [v19 ticketForSpatialLookupParameters:v20 traits:0];

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke;
  v62[3] = &unk_1E843FB50;
  v67 = v69;
  v22 = v15;
  v63 = v22;
  v64 = v21;
  v38 = v18;
  v65 = v38;
  v68 = v17;
  v23 = v16;
  v66 = v23;
  v39 = v64;
  [v64 submitWithHandler:v62 networkActivity:0];
  dispatch_group_enter(v22);
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__1;
  v60[4] = __Block_byref_object_dispose__1;
  v61 = 0;
  v24 = MEMORY[0x1E6992FD8];
  v25 = [(EKStructuredLocation *)self->_location title];
  v26 = [(EKStructuredLocation *)self->_location address];
  v27 = [v24 fullDisplayStringWithTitle:v25 address:v26];

  v28 = MEMORY[0x1E6992FB8];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_67;
  v54[3] = &unk_1E843FBA0;
  group = v22;
  v55 = group;
  v58 = v69;
  v29 = v27;
  v56 = v29;
  v59 = v60;
  v30 = v23;
  v57 = v30;
  [v28 geocodeLocationString:v29 withCompletionBlock:v54];
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_70;
  aBlock[3] = &unk_1E843EC38;
  aBlock[4] = self;
  v50 = v30;
  v51 = v6;
  v37 = v6;
  v36 = v30;
  v31 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_4;
  block[3] = &unk_1E843FC18;
  v47 = v69;
  v48 = v52;
  v32 = v31;
  v46 = v32;
  v33 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);
  v34 = dispatch_time(0, 1000000000);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_5;
  v41[3] = &unk_1E843FC18;
  v43 = v52;
  v44 = v69;
  v42 = v32;
  v35 = v32;
  dispatch_after(v34, v33, v41);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(v69, 8);
}

void __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_2;
  block[3] = &unk_1E843FB28;
  v4 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v15 = *(a1 + 72);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v13 = v8;
  v14 = v7;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);

    dispatch_group_leave(v2);
  }

  else if (*(a1 + 40))
  {
    v3 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = [v4 localizedDescription];
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_ERROR, "Failed to run spacial lookup for suggested location disambiguation: %@", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = [*(a1 + 48) mapItemsForParameters:*(a1 + 56)];
    v8 = [v7 count];

    if (v8)
    {
      v9 = objc_opt_new();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = [*(a1 + 48) mapItemsForParameters:*(a1 + 56)];
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v27;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v26 + 1) + 8 * i) _identifier];
            [v9 addObject:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v12);
      }

      v16 = [MEMORY[0x1E69A2208] sharedService];
      v17 = [v16 ticketForIdentifiers:v9 traits:0];

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_56;
      v22[3] = &unk_1E843FB00;
      v18 = *(a1 + 32);
      v19 = *(a1 + 80);
      v23 = v18;
      v25 = v19;
      v21 = *(a1 + 64);
      v20 = v21;
      v24 = v21;
      [v17 submitWithHandler:v22 networkActivity:0];
    }
  }
}

void __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_2_57;
  block[3] = &unk_1E843FAD8;
  v13 = *(a1 + 32);
  v14 = v6;
  v7 = *(a1 + 56);
  v15 = v5;
  v17 = v7;
  v11 = *(a1 + 40);
  v8 = v11;
  v16 = v11;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_2_57(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_group_leave(*(a1 + 32));
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v2 = kEKUILogHandle;
      if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v3 = *(a1 + 40);
      v4 = v2;
      v5 = [v3 localizedDescription];
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, "Failed to run place lookup for suggested location disambiguation: %@", buf, 0xCu);
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = *(a1 + 48);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          v9 = 0;
          do
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v14 + 1) + 8 * v9);
            v11 = objc_alloc(*(a1 + 72));
            v12 = [v11 initWithGeoMapItem:v10 isPlaceHolderPlace:{0, v14}];
            v13 = [MEMORY[0x1E6966B08] locationWithMapItem:v12];
            [*(a1 + 56) addObject:v13];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }
    }
  }
}

void __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_2_68;
  block[3] = &unk_1E843FB78;
  v7 = *(a1 + 32);
  v16 = *(a1 + 56);
  v11 = v7;
  v12 = v6;
  v13 = *(a1 + 40);
  v14 = v5;
  v17 = *(a1 + 64);
  v15 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_2_68(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_group_leave(*(a1 + 32));
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v2 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        v3 = *(a1 + 40);
        v4 = *(a1 + 48);
        v5 = v2;
        v6 = [v3 localizedDescription];
        v10 = 138412546;
        v11 = v4;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_ERROR, "Error geocoding %@: %@", &v10, 0x16u);
      }
    }

    if (*(a1 + 56))
    {
      v7 = [MEMORY[0x1E6966B08] locationWithMapItem:?];
      v8 = *(*(a1 + 80) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      [*(a1 + 64) addObject:*(*(*(a1 + 80) + 8) + 40)];
    }
  }
}

void __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_70(uint64_t a1)
{
  v2 = [EKEventDetailLocationDisambiguationViewController alloc];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 1032);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_2_72;
  v11 = &unk_1E843FBF0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v7 = [(EKEventDetailLocationDisambiguationViewController *)v2 initWithLocation:v4 pois:v3 completionBlock:&v8];
  [*(a1 + 48) presentViewController:v7 animated:1 completion:{0, v8, v9, v10, v11}];
}

void __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_2_72(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_3;
  v8[3] = &unk_1E843FBC8;
  v10 = a2;
  v6 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v9 = v5;
  v7 = v5;
  [v6 dismissViewControllerAnimated:1 completion:v8];
}

void __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 didTapAddSuggestedLocationCell:*(a1 + 32) disambiguatedLocation:*(a1 + 40)];
  }
}

void *__59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_4(void *result)
{
  if ((*(*(result[5] + 8) + 24) & 1) == 0)
  {
    *(*(result[6] + 8) + 24) = 1;
    return (*(result[4] + 16))();
  }

  return result;
}

uint64_t __59__EKEventDetailSuggestedLocationCell__disambiguateIfNeeded__block_invoke_5(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    *(*(*(result + 48) + 8) + 24) = 1;
    v2 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_ERROR, "Timed out fetching POIs for location disambiguation", v3, 2u);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

- (void)dismissAction
{
  v3 = [(EKEventDetailSuggestedLocationCell *)self delegate];
  [v3 didTapDismissSuggestedLocationCell:self];
}

- (EKEventDetailSuggestedLocationCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end