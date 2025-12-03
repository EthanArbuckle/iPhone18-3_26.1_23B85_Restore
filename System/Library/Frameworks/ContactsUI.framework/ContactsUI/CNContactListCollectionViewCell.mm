@interface CNContactListCollectionViewCell
- (BOOL)isContactBlocked;
- (CNContactListCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)applyAccessories;
- (void)cancelAsyncOperations;
- (void)dealloc;
- (void)fetchBlockedStatus;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContact:(id)contact;
- (void)setContactMatchInfo:(id)info completionBlock:(id)block;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsEmergencyContact:(BOOL)contact;
- (void)setIsMeCard:(BOOL)card;
- (void)setSelected:(BOOL)selected;
- (void)setSubtitleAttributedText:(id)text;
- (void)updateConfigurationUsingState:(id)state;
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

  array = [MEMORY[0x1E695DF70] array];
  traitCollection = [(CNContactListCollectionViewCell *)self traitCollection];
  if ([traitCollection _splitViewControllerContext])
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
    [array addObject:v7];
  }

  if ([(CNContactListCollectionViewCell *)self isMeCard])
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"ME_CELL_INDICATOR" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [v9 initWithString:v11];
    [v8 setAttributedText:v12];

    contactListStyleApplier = [(CNContactListCollectionViewCell *)self contactListStyleApplier];
    [contactListStyleApplier applyContactListStyleToMeContactLabel:v8 ofCell:self];

    [v8 sizeToFit];
    v14 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v8 placement:1];
    [v8 bounds];
    [v14 setReservedLayoutWidth:v6 + v15];
    [array addObject:v14];
  }

  if ([(CNContactListCollectionViewCell *)self isContactBlocked])
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    contactListStyleApplier2 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];

    if (contactListStyleApplier2)
    {
      contactListStyleApplier3 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];
      [contactListStyleApplier3 applyContactListStyleToBlockedIcon:v16 ofCell:self];
    }

    else
    {
      v19 = MEMORY[0x1E69DCAB8];
      v20 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
      contactListStyleApplier3 = [v19 cnui_symbolImageNamed:@"nosign" scale:1 withColor:v20 useFixedSize:0];

      v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:contactListStyleApplier3];
      v16 = v21;
    }

    v22 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v16 placement:0];
    [array addObject:v22];
  }

  if ([(CNContactListCollectionViewCell *)self isEmergencyContact])
  {
    v23 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    contactListStyleApplier4 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];

    if (contactListStyleApplier4)
    {
      contactListStyleApplier5 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];
      [contactListStyleApplier5 applyContactListStyleToEmergencyIcon:v23 ofCell:self];
    }

    else
    {
      v26 = MEMORY[0x1E69DCAB8];
      v27 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
      contactListStyleApplier5 = [v26 cnui_symbolImageNamed:@"staroflife.fill" scale:3 withColor:v27 useFixedSize:0];

      v28 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:contactListStyleApplier5];
      v23 = v28;
    }

    v29 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v23 placement:1];
    [v23 bounds];
    [v29 setReservedLayoutWidth:v6 + v30];
    [array addObject:v29];
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v33 = [featureFlags isFeatureEnabled:29];

  if (v33)
  {
    traitCollection2 = [(CNContactListCollectionViewCell *)self traitCollection];
    if ([traitCollection2 _splitViewControllerContext])
    {
      traitCollection3 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection3 userInterfaceIdiom] == 3)
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

    avatarAccessoryView = [(CNContactListCollectionViewCell *)self avatarAccessoryView];
    if (avatarAccessoryView && (v38 = avatarAccessoryView, [(CNContactListCollectionViewCell *)self avatarView], v39 = objc_claimAutoreleasedReturnValue(), v39, v38, v39))
    {
      avatarView = [(CNContactListCollectionViewCell *)self avatarView];
      contact = [(CNContactListCollectionViewCell *)self contact];
      [avatarView setContact:contact];

      traitCollection4 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection4 userInterfaceIdiom] == 3)
      {
        v43 = 8.0;
      }

      else
      {
        v43 = 10.0;
      }

      traitCollection5 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection5 userInterfaceIdiom] == 3)
      {
        v45 = 30.0;
      }

      else
      {
        v45 = 40.0;
      }

      traitCollection6 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection6 userInterfaceIdiom] == 3)
      {
        v47 = 30.0;
      }

      else
      {
        v47 = 40.0;
      }

      avatarView2 = [(CNContactListCollectionViewCell *)self avatarView];
      [avatarView2 setFrame:{v36, v43, v45, v47}];

      traitCollection7 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection7 userInterfaceIdiom] == 3)
      {
        v50 = 30.0;
      }

      else
      {
        v50 = 40.0;
      }

      v51 = v36 + v50;
      traitCollection8 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection8 userInterfaceIdiom] == 3)
      {
        v53 = 8.0;
      }

      else
      {
        v53 = 10.0;
      }

      traitCollection9 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection9 userInterfaceIdiom] == 3)
      {
        v55 = 30.0;
      }

      else
      {
        v55 = 40.0;
      }

      v56 = v53 + v55;
      traitCollection10 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection10 userInterfaceIdiom] == 3)
      {
        v58 = 8.0;
      }

      else
      {
        v58 = 10.0;
      }

      v59 = v56 + v58;
      avatarContainerView = [(CNContactListCollectionViewCell *)self avatarContainerView];
      [avatarContainerView setFrame:{0.0, 0.0, v51, v59}];

      traitCollection11 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection11 userInterfaceIdiom] == 3)
      {
        v62 = 30.0;
      }

      else
      {
        v62 = 40.0;
      }

      v63 = v36 + v62;
      avatarAccessoryView2 = [(CNContactListCollectionViewCell *)self avatarAccessoryView];
      [avatarAccessoryView2 setReservedLayoutWidth:v63];

      avatarAccessoryView3 = [(CNContactListCollectionViewCell *)self avatarAccessoryView];
      [array addObject:avatarAccessoryView3];
    }

    else
    {
      v66 = objc_alloc(MEMORY[0x1E69DD250]);
      traitCollection12 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection12 userInterfaceIdiom] == 3)
      {
        v68 = 30.0;
      }

      else
      {
        v68 = 40.0;
      }

      v69 = v36 + v68;
      traitCollection13 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection13 userInterfaceIdiom] == 3)
      {
        v71 = 8.0;
      }

      else
      {
        v71 = 10.0;
      }

      traitCollection14 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection14 userInterfaceIdiom] == 3)
      {
        v73 = 30.0;
      }

      else
      {
        v73 = 40.0;
      }

      v74 = v71 + v73;
      traitCollection15 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection15 userInterfaceIdiom] == 3)
      {
        v76 = 8.0;
      }

      else
      {
        v76 = 10.0;
      }

      avatarAccessoryView3 = [v66 initWithFrame:{0.0, 0.0, v69, v74 + v76}];

      v77 = [CNAvatarView alloc];
      contact2 = [(CNContactListCollectionViewCell *)self contact];
      v79 = [(CNAvatarView *)v77 initWithContact:contact2];

      traitCollection16 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection16 userInterfaceIdiom] == 3)
      {
        v81 = 8.0;
      }

      else
      {
        v81 = 10.0;
      }

      traitCollection17 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection17 userInterfaceIdiom] == 3)
      {
        v83 = 30.0;
      }

      else
      {
        v83 = 40.0;
      }

      traitCollection18 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection18 userInterfaceIdiom] == 3)
      {
        v85 = 30.0;
      }

      else
      {
        v85 = 40.0;
      }

      [(CNAvatarView *)v79 setFrame:v36, v81, v83, v85];

      [avatarAccessoryView3 addSubview:v79];
      v86 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:avatarAccessoryView3 placement:0];
      [v86 setMaintainsFixedSize:1];
      traitCollection19 = [(CNContactListCollectionViewCell *)self traitCollection];
      if ([traitCollection19 userInterfaceIdiom] == 3)
      {
        v88 = 30.0;
      }

      else
      {
        v88 = 40.0;
      }

      [v86 setReservedLayoutWidth:v36 + v88];

      [array addObject:v86];
      [(CNContactListCollectionViewCell *)self setAvatarView:v79];
      [(CNContactListCollectionViewCell *)self setAvatarContainerView:avatarAccessoryView3];
      [(CNContactListCollectionViewCell *)self setAvatarAccessoryView:v86];
    }

    v89 = MEMORY[0x1E69DD250];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __51__CNContactListCollectionViewCell_applyAccessories__block_invoke;
    v90[3] = &unk_1E74E77C0;
    v90[4] = self;
    v91 = array;
    [v89 performWithoutAnimation:v90];
  }

  else
  {
    [(CNContactListCollectionViewCell *)self setAccessories:array];
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
  summaryCancelationToken = [(CNContactListCollectionViewCell *)self summaryCancelationToken];
  [summaryCancelationToken cancel];

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
  summaryCancelationToken = [(CNContactListCollectionViewCell *)self summaryCancelationToken];
  [summaryCancelationToken cancel];

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
  mEMORY[0x1E695CD60] = [MEMORY[0x1E695CD60] sharedAnalyzer];
  contact = [(CNContactListCollectionViewCell *)self contact];
  self->_isContactBlocked = [mEMORY[0x1E695CD60] isBlockedContact:contact];

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

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  v23.receiver = self;
  v23.super_class = CNContactListCollectionViewCell;
  v5 = [(CNContactListCollectionViewCell *)&v23 preferredLayoutAttributesFittingAttributes:attributesCopy];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v8 = [featureFlags isFeatureEnabled:29];

  if (v8)
  {
    [attributesCopy frame];
    v10 = v9;
    contentView = [(CNContactListCollectionViewCell *)self contentView];
    LODWORD(v12) = 1148846080;
    LODWORD(v13) = 1112014848;
    [contentView systemLayoutSizeFittingSize:v10 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v12, v13}];
    v15 = v14;

    [v5 size];
    v17 = v16;
    avatarContainerView = [(CNContactListCollectionViewCell *)self avatarContainerView];
    [avatarContainerView bounds];
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

- (void)setIsEmergencyContact:(BOOL)contact
{
  if (self->_isEmergencyContact != contact)
  {
    self->_isEmergencyContact = contact;
    [(CNContactListCollectionViewCell *)self applyAccessories];
  }
}

- (void)setIsMeCard:(BOOL)card
{
  if (self->_isMeCard != card)
  {
    self->_isMeCard = card;
    [(CNContactListCollectionViewCell *)self applyAccessories];
  }
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  objc_opt_class();
  contentConfiguration = [(CNContactListCollectionViewCell *)self contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v6 = contentConfiguration;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  traitCollection = [(CNContactListCollectionViewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    if (([stateCopy isHighlighted] & 1) != 0 || (objc_msgSend(stateCopy, "isFocused") & 1) != 0 || objc_msgSend(stateCopy, "isSelected"))
    {
      v11 = +[CNUIColorRepository carPlayTableViewCellTitleTextHighlightedColor];

      labelColor = v11;
    }

    v12 = objc_alloc(MEMORY[0x1E696AD40]);
    attributedText = [v7 attributedText];
    v14 = [v12 initWithAttributedString:attributedText];

    v15 = [v14 length];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __65__CNContactListCollectionViewCell_updateConfigurationUsingState___block_invoke;
    v21 = &unk_1E74E2CA0;
    v22 = labelColor;
    v23 = v14;
    v16 = labelColor;
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

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = CNContactListCollectionViewCell;
  [(CNContactListCollectionViewCell *)&v4 setHighlighted:highlighted];
  [(CNContactListCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)setSelected:(BOOL)selected
{
  v6.receiver = self;
  v6.super_class = CNContactListCollectionViewCell;
  [(CNContactListCollectionViewCell *)&v6 setSelected:selected];
  traitCollection = [(CNContactListCollectionViewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    [(CNContactListCollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (void)setSubtitleAttributedText:(id)text
{
  textCopy = text;
  objc_opt_class();
  contentConfiguration = [(CNContactListCollectionViewCell *)self contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v5 = contentConfiguration;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    contentConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  }

  [contentConfiguration setSecondaryText:&stru_1F0CE7398];
  [contentConfiguration setSecondaryAttributedText:textCopy];

  [(CNContactListCollectionViewCell *)self setContentConfiguration:contentConfiguration];
}

- (void)setContactMatchInfo:(id)info completionBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  if (self->_contactMatchInfo != infoCopy)
  {
    objc_storeStrong(&self->_contactMatchInfo, info);
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69967A0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__CNContactListCollectionViewCell_setContactMatchInfo_completionBlock___block_invoke;
    v18[3] = &unk_1E74E2C78;
    objc_copyWeak(&v20, &location);
    v19 = blockCopy;
    v10 = [v9 observerWithResultBlock:v18];
    v11 = MEMORY[0x1E6996798];
    excerpt = [(CNContactMatchInfo *)infoCopy excerpt];
    future = [excerpt future];
    v14 = [v11 observableWithFuture:future];
    mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
    v16 = [v14 observeOn:mainThreadScheduler];
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

- (void)setContact:(id)contact
{
  contactCopy = contact;
  if (self->_contact != contactCopy)
  {
    v10 = contactCopy;
    objc_storeStrong(&self->_contact, contact);
    contactListStyleApplier = [(CNContactListCollectionViewCell *)self contactListStyleApplier];

    if (contactListStyleApplier)
    {
      contactListStyleApplier2 = [(CNContactListCollectionViewCell *)self contactListStyleApplier];
      contactFormatter = [(CNContactListCollectionViewCell *)self contactFormatter];
      [contactListStyleApplier2 applyContactListStyleToContact:v10 usingFormatter:contactFormatter ofCell:self wantsInlineBlockIcon:0];

      [(UIView *)self provideOnscreenContactToAppItents:v10];
    }

    else
    {
      contactFormatter2 = [(CNContactListCollectionViewCell *)self contactFormatter];
      [CNContactListStyleApplier applyDefaultStyleToContact:v10 usingFormatter:contactFormatter2 ofCell:self];
    }

    contactCopy = v10;
  }
}

- (CNContactListCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CNContactListCollectionViewCell;
  v3 = [(CNContactListCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end