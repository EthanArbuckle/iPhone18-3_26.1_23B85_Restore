@interface CNContactListCollectionViewCell
- (BOOL)isContactBlocked;
- (CNContactListCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)applyAccessories;
- (void)cancelAsyncOperations;
- (void)dealloc;
- (void)fetchBlockedStatus;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContact:(id)a3;
- (void)setContactMatchInfo:(id)a3 completionBlock:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsEmergencyContact:(BOOL)a3;
- (void)setIsMeCard:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSubtitleAttributedText:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation CNContactListCollectionViewCell

- (void)applyAccessories
{
  if ([(CNContactListCollectionViewCell *)self allowsMultiSelection])
  {
    v3 = ![(CNContactListCollectionViewCell *)self allowsMultiSelectContextMenus];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(CNContactListCollectionViewCell *)self traitCollection];
  if ([v5 _splitViewControllerContext])
  {
    v6 = 14.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (v3)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DC7C0]);
    [v4 addObject:v7];
  }

  if ([(CNContactListCollectionViewCell *)self isMeCard])
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"ME_CELL_INDICATOR" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [v9 initWithString:v11];
    [v8 setAttributedText:v12];

    v13 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];
    [v13 applyContactListStyleToMeContactLabel:v8 ofCell:self];

    [v8 sizeToFit];
    v14 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v8 placement:1];
    [v8 bounds];
    [v14 setReservedLayoutWidth:v6 + v15];
    [v4 addObject:v14];
  }

  if ([(CNContactListCollectionViewCell *)self isContactBlocked])
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v17 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];

    if (v17)
    {
      v18 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];
      [v18 applyContactListStyleToBlockedIcon:v16 ofCell:self];
    }

    else
    {
      v19 = MEMORY[0x1E69DCAB8];
      v20 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
      v18 = [v19 cnui_symbolImageNamed:@"nosign" scale:1 withColor:v20 useFixedSize:0];

      v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v18];
      v16 = v21;
    }

    v22 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v16 placement:0];
    [v4 addObject:v22];
  }

  if ([(CNContactListCollectionViewCell *)self isEmergencyContact])
  {
    v23 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v24 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];

    if (v24)
    {
      v25 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];
      [v25 applyContactListStyleToEmergencyIcon:v23 ofCell:self];
    }

    else
    {
      v26 = MEMORY[0x1E69DCAB8];
      v27 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
      v25 = [v26 cnui_symbolImageNamed:@"staroflife.fill" scale:3 withColor:v27 useFixedSize:0];

      v28 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v25];
      v23 = v28;
    }

    v29 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v23 placement:1];
    [v23 bounds];
    [v29 setReservedLayoutWidth:v6 + v30];
    [v4 addObject:v29];
  }

  v31 = [MEMORY[0x1E69966E8] currentEnvironment];
  v32 = [v31 featureFlags];
  v33 = [v32 isFeatureEnabled:29];

  if (v33)
  {
    v34 = [(CNContactListCollectionViewCell *)self traitCollection];
    if ([v34 _splitViewControllerContext])
    {
      v35 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v35 userInterfaceIdiom] == 3)
      {
        v36 = 4.0;
      }

      else
      {
        v36 = 3.0;
      }
    }

    else
    {
      v36 = 0.0;
    }

    v37 = [(CNContactListCollectionViewCell *)self avatarAccessoryView];
    if (v37 && (v38 = v37, [(CNContactListCollectionViewCell *)self avatarView], v39 = objc_claimAutoreleasedReturnValue(), v39, v38, v39))
    {
      v40 = [(CNContactListCollectionViewCell *)self avatarView];
      v41 = [(CNContactListCollectionViewCell *)self contact];
      [v40 setContact:v41];

      v42 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v42 userInterfaceIdiom] == 3)
      {
        v43 = 8.0;
      }

      else
      {
        v43 = 10.0;
      }

      v44 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v44 userInterfaceIdiom] == 3)
      {
        v45 = 30.0;
      }

      else
      {
        v45 = 40.0;
      }

      v46 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v46 userInterfaceIdiom] == 3)
      {
        v47 = 30.0;
      }

      else
      {
        v47 = 40.0;
      }

      v48 = [(CNContactListCollectionViewCell *)self avatarView];
      [v48 setFrame:{v36, v43, v45, v47}];

      v49 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v49 userInterfaceIdiom] == 3)
      {
        v50 = 30.0;
      }

      else
      {
        v50 = 40.0;
      }

      v51 = v36 + v50;
      v52 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v52 userInterfaceIdiom] == 3)
      {
        v53 = 8.0;
      }

      else
      {
        v53 = 10.0;
      }

      v54 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v54 userInterfaceIdiom] == 3)
      {
        v55 = 30.0;
      }

      else
      {
        v55 = 40.0;
      }

      v56 = v53 + v55;
      v57 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v57 userInterfaceIdiom] == 3)
      {
        v58 = 8.0;
      }

      else
      {
        v58 = 10.0;
      }

      v59 = v56 + v58;
      v60 = [(CNContactListCollectionViewCell *)self avatarContainerView];
      [v60 setFrame:{0.0, 0.0, v51, v59}];

      v61 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v61 userInterfaceIdiom] == 3)
      {
        v62 = 30.0;
      }

      else
      {
        v62 = 40.0;
      }

      v63 = v36 + v62;
      v64 = [(CNContactListCollectionViewCell *)self avatarAccessoryView];
      [v64 setReservedLayoutWidth:v63];

      v65 = [(CNContactListCollectionViewCell *)self avatarAccessoryView];
      [v4 addObject:v65];
    }

    else
    {
      v66 = objc_alloc(MEMORY[0x1E69DD250]);
      v67 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v67 userInterfaceIdiom] == 3)
      {
        v68 = 30.0;
      }

      else
      {
        v68 = 40.0;
      }

      v69 = v36 + v68;
      v70 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v70 userInterfaceIdiom] == 3)
      {
        v71 = 8.0;
      }

      else
      {
        v71 = 10.0;
      }

      v72 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v72 userInterfaceIdiom] == 3)
      {
        v73 = 30.0;
      }

      else
      {
        v73 = 40.0;
      }

      v74 = v71 + v73;
      v75 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v75 userInterfaceIdiom] == 3)
      {
        v76 = 8.0;
      }

      else
      {
        v76 = 10.0;
      }

      v65 = [v66 initWithFrame:{0.0, 0.0, v69, v74 + v76}];

      v77 = [CNAvatarView alloc];
      v78 = [(CNContactListCollectionViewCell *)self contact];
      v79 = [(CNAvatarView *)v77 initWithContact:v78];

      v80 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v80 userInterfaceIdiom] == 3)
      {
        v81 = 8.0;
      }

      else
      {
        v81 = 10.0;
      }

      v82 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v82 userInterfaceIdiom] == 3)
      {
        v83 = 30.0;
      }

      else
      {
        v83 = 40.0;
      }

      v84 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v84 userInterfaceIdiom] == 3)
      {
        v85 = 30.0;
      }

      else
      {
        v85 = 40.0;
      }

      [(CNAvatarView *)v79 setFrame:v36, v81, v83, v85];

      [v65 addSubview:v79];
      v86 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v65 placement:0];
      [v86 setMaintainsFixedSize:1];
      v87 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([v87 userInterfaceIdiom] == 3)
      {
        v88 = 30.0;
      }

      else
      {
        v88 = 40.0;
      }

      [v86 setReservedLayoutWidth:v36 + v88];

      [v4 addObject:v86];
      [(CNContactListCollectionViewCell *)self setAvatarView:v79];
      [(CNContactListCollectionViewCell *)self setAvatarContainerView:v65];
      [(CNContactListCollectionViewCell *)self setAvatarAccessoryView:v86];
    }

    v89 = MEMORY[0x1E69DD250];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __51__CNContactListCollectionViewCell_applyAccessories__block_invoke;
    v90[3] = &unk_1E74E77C0;
    v90[4] = self;
    v91 = v4;
    [v89 performWithoutAnimation:v90];
  }

  else
  {
    [(CNContactListCollectionViewCell *)self setAccessories:v4];
    [(CNContactListCollectionViewCell *)self setIndentsAccessories:1];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CNContactListCollectionViewCell;
  [(CNContactListCollectionViewCell *)&v3 layoutSubviews];
  [(CNContactListCollectionViewCell *)self setHasBeenDisplayed:1];
}

- (void)cancelAsyncOperations
{
  v3 = [(CNContactListCollectionViewCell *)self summaryCancelationToken];
  [v3 cancel];

  [(CNContactListCollectionViewCell *)self setSummaryCancelationToken:0];
}

- (void)dealloc
{
  [(CNCancelable *)self->_summaryCancelationToken cancel];
  v3.receiver = self;
  v3.super_class = CNContactListCollectionViewCell;
  [(CNContactListCollectionViewCell *)&v3 dealloc];
}

- (void)prepareForReuse
{
  v3 = [(CNContactListCollectionViewCell *)self summaryCancelationToken];
  [v3 cancel];

  [(CNContactListCollectionViewCell *)self setSummaryCancelationToken:0];
  [(CNContactListCollectionViewCell *)self setContactMatchInfo:0];
  [(CNContactListCollectionViewCell *)self setSubtitleAttributedText:0];
  [(CNContactListCollectionViewCell *)self setIsEmergencyContact:0];
  [(CNContactListCollectionViewCell *)self setDidFetchBlockStatus:0];
  [(CNContactListCollectionViewCell *)self setIsMeCard:0];
  [(CNContactListCollectionViewCell *)self setContactListStyleApplier:0];
  [(CNContactListCollectionViewCell *)self setAccessories:MEMORY[0x1E695E0F0]];
  [(CNContactListCollectionViewCell *)self setHasBeenDisplayed:0];
  [(UIView *)self provideOnscreenContactToAppItents:0];
  v4.receiver = self;
  v4.super_class = CNContactListCollectionViewCell;
  [(CNContactListCollectionViewCell *)&v4 prepareForReuse];
}

- (void)fetchBlockedStatus
{
  v3 = [MEMORY[0x1E695CD60] sharedAnalyzer];
  v4 = [(CNContactListCollectionViewCell *)self contact];
  self->_isContactBlocked = [v3 isBlockedContact:v4];

  self->_didFetchBlockStatus = 1;
}

- (BOOL)isContactBlocked
{
  if (!self->_didFetchBlockStatus)
  {
    [(CNContactListCollectionViewCell *)self fetchBlockedStatus];
  }

  return self->_isContactBlocked;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CNContactListCollectionViewCell;
  v5 = [(CNContactListCollectionViewCell *)&v23 preferredLayoutAttributesFittingAttributes:v4];
  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 featureFlags];
  v8 = [v7 isFeatureEnabled:29];

  if (v8)
  {
    [v4 frame];
    v10 = v9;
    v11 = [(CNContactListCollectionViewCell *)self contentView];
    LODWORD(v12) = 1148846080;
    LODWORD(v13) = 1112014848;
    [v11 systemLayoutSizeFittingSize:v10 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v12, v13}];
    v15 = v14;

    [v5 size];
    v17 = v16;
    v18 = [(CNContactListCollectionViewCell *)self avatarContainerView];
    [v18 bounds];
    v20 = v19;

    if (v17 >= v20)
    {
      v21 = v17;
    }

    else
    {
      v21 = v20;
    }

    [v5 setSize:{v15, v21}];
  }

  return v5;
}

- (void)setIsEmergencyContact:(BOOL)a3
{
  if (self->_isEmergencyContact != a3)
  {
    self->_isEmergencyContact = a3;
    [(CNContactListCollectionViewCell *)self applyAccessories];
  }
}

- (void)setIsMeCard:(BOOL)a3
{
  if (self->_isMeCard != a3)
  {
    self->_isMeCard = a3;
    [(CNContactListCollectionViewCell *)self applyAccessories];
  }
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(CNContactListCollectionViewCell *)self contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(CNContactListCollectionViewCell *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 3)
  {
    v10 = [MEMORY[0x1E69DC888] labelColor];
    if (([v4 isHighlighted] & 1) != 0 || (objc_msgSend(v4, "isFocused") & 1) != 0 || objc_msgSend(v4, "isSelected"))
    {
      v11 = +[CNUIColorRepository carPlayTableViewCellTitleTextHighlightedColor];

      v10 = v11;
    }

    v12 = objc_alloc(MEMORY[0x1E696AD40]);
    v13 = [v7 attributedText];
    v14 = [v12 initWithAttributedString:v13];

    v15 = [v14 length];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __65__CNContactListCollectionViewCell_updateConfigurationUsingState___block_invoke;
    v21 = &unk_1E74E2CA0;
    v22 = v10;
    v23 = v14;
    v16 = v10;
    v17 = v14;
    [v17 enumerateAttributesInRange:0 options:v15 usingBlock:{0, &v18}];
    [v7 setAttributedText:{v17, v18, v19, v20, v21}];
    [(CNContactListCollectionViewCell *)self setContentConfiguration:v7];
  }
}

void __65__CNContactListCollectionViewCell_updateConfigurationUsingState___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 mutableCopy];
  [v7 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB650]];
  [*(a1 + 40) setAttributes:v7 range:{a3, a4}];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNContactListCollectionViewCell;
  [(CNContactListCollectionViewCell *)&v4 setHighlighted:a3];
  [(CNContactListCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)setSelected:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CNContactListCollectionViewCell;
  [(CNContactListCollectionViewCell *)&v6 setSelected:a3];
  v4 = [(CNContactListCollectionViewCell *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 3)
  {
    [(CNContactListCollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setSubtitleAttributedText:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = [(CNContactListCollectionViewCell *)self contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v7 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  }

  [v7 setSecondaryText:&stru_1F0CE7398];
  [v7 setSecondaryAttributedText:v4];

  [(CNContactListCollectionViewCell *)self setContentConfiguration:v7];
}

- (void)setContactMatchInfo:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_contactMatchInfo != v7)
  {
    objc_storeStrong(&self->_contactMatchInfo, a3);
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69967A0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__CNContactListCollectionViewCell_setContactMatchInfo_completionBlock___block_invoke;
    v18[3] = &unk_1E74E2C78;
    objc_copyWeak(&v20, &location);
    v19 = v8;
    v10 = [v9 observerWithResultBlock:v18];
    v11 = MEMORY[0x1E6996798];
    v12 = [(CNContactMatchInfo *)v7 excerpt];
    v13 = [v12 future];
    v14 = [v11 observableWithFuture:v13];
    v15 = [MEMORY[0x1E6996818] mainThreadScheduler];
    v16 = [v14 observeOn:v15];
    v17 = [v16 subscribe:v10];
    [(CNContactListCollectionViewCell *)self setSummaryCancelationToken:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __71__CNContactListCollectionViewCell_setContactMatchInfo_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained summaryCancelationToken];

  if (!v4)
  {
    goto LABEL_10;
  }

  if ([v11 length])
  {
    v5 = [WeakRetained contactListStyleApplier];

    v6 = WeakRetained;
    if (v5)
    {
      v7 = [WeakRetained contactListStyleApplier];
      [v7 applyContactListStyleToSubtitleText:v11 ofSearchResultCell:WeakRetained];

      goto LABEL_8;
    }

    v8 = v11;
  }

  else
  {
    v6 = WeakRetained;
    v8 = 0;
  }

  [v6 setSubtitleAttributedText:v8];
LABEL_8:
  v9 = [WeakRetained hasBeenDisplayed];
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9);
  }

LABEL_10:
}

- (void)setContact:(id)a3
{
  v5 = a3;
  if (self->_contact != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_contact, a3);
    v6 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];

    if (v6)
    {
      v7 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];
      v8 = [(CNContactListCollectionViewCell *)self contactFormatter];
      [v7 applyContactListStyleToContact:v10 usingFormatter:v8 ofCell:self wantsInlineBlockIcon:0];

      [(UIView *)self provideOnscreenContactToAppItents:v10];
    }

    else
    {
      v9 = [(CNContactListCollectionViewCell *)self contactFormatter];
      [CNContactListStyleApplier applyDefaultStyleToContact:v10 usingFormatter:v9 ofCell:self];
    }

    v5 = v10;
  }
}

- (CNContactListCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CNContactListCollectionViewCell;
  v3 = [(CNContactListCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end