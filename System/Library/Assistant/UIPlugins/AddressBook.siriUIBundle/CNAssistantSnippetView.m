@interface CNAssistantSnippetView
+ (id)descriptorForRequiredKeys;
- (BOOL)_deviceIsLockedWithPassword;
- (BOOL)_dragInteraction:(id)a3 competingGestureRecognizerShouldDelayLift:(id)a4;
- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContact:(id)a4 propertyKey:(id)a5 propertyIdentifier:(id)a6;
- (CNAssistantSnippetView)initWithFrame:(CGRect)a3 contact:(id)a4 displayedProperties:(id)a5 viewController:(id)a6;
- (SiriUISnippetViewController)viewController;
- (double)desiredHeightForWidth:(double)a3;
- (id)_displayIdentifier;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (void)_preventMoreSelections;
- (void)configureForCompact;
- (void)configureForExpanded;
- (void)contactViewControllerDidDismissDisambiguationUI:(id)a3;
- (void)contactViewControllerWillPresentDisambiguationUI:(id)a3;
- (void)dealloc;
- (void)openContact:(id)a3;
- (void)setSnippetSizeClass:(int64_t)a3;
@end

@implementation CNAssistantSnippetView

+ (id)descriptorForRequiredKeys
{
  v2 = +[CNContactContentViewController descriptorForRequiredKeys];
  v8[0] = v2;
  v8[1] = CNContactNoteKey;
  v3 = [NSArray arrayWithObjects:v8 count:2];
  v4 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CNAssistantSnippetView descriptorForRequiredKeys]");
  v5 = [CNContact descriptorWithKeyDescriptors:v3 description:v4];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  return v6;
}

- (CNAssistantSnippetView)initWithFrame:(CGRect)a3 contact:(id)a4 displayedProperties:(id)a5 viewController:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v45.receiver = self;
  v45.super_class = CNAssistantSnippetView;
  v16 = [(CNAssistantSnippetView *)&v45 initWithFrame:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    v43 = v15;
    objc_storeWeak(&v16->_viewController, v15);
    [UIFont ab_setIgnoreUserFontSize:1];
    CNUISetUseSiriLocalization();
    v18 = +[CNContactStyle siriStyle];
    [CNContactStyle setCurrentStyle:v18];

    v17->_allowsSelection = 1;
    v19 = [(CNAssistantSnippetView *)v17 _deviceIsLockedWithPassword];
    v17->_snippetSizeClass = 0;
    compactContactView = v17->_compactContactView;
    v17->_compactContactView = 0;

    [(CNAssistantSnippetView *)v17 setContact:v13];
    v21 = [[CNContactContentViewController alloc] initWithContact:v13];
    contactViewController = v17->_contactViewController;
    v17->_contactViewController = v21;

    [(CNContactContentViewController *)v17->_contactViewController setContactDelegate:v17];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsActions:1];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsCardActions:0];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsEditing:0];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsSharing:0];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsConferencing:0];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsAddToFavorites:0];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsSendMessage:0];
    v44 = v14;
    [(CNContactContentViewController *)v17->_contactViewController setDisplayedProperties:v14];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsActionsModel:v19 ^ 1];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsDisplayModePickerActions:0];
    v23 = [(CNContactContentViewController *)v17->_contactViewController displayedProperties];
    v24 = [v23 mutableCopy];

    [v24 removeObject:CNContactTextAlertKey];
    [v24 removeObject:CNContactCallAlertKey];
    v25 = [v13 note];
    if ([v25 length])
    {
    }

    else
    {
      v26 = [(CNContactContentViewController *)v17->_contactViewController displayedProperties];
      v27 = [v26 containsObject:CNContactNoteKey];

      if (v27)
      {
        [v24 removeObject:CNContactNoteKey];
      }
    }

    [(CNContactContentViewController *)v17->_contactViewController setDisplayedProperties:v24];
    v28 = [(CNContactContentViewController *)v17->_contactViewController contactView];
    v29 = [(CNContactContentViewController *)v17->_contactViewController displayHeaderView];
    [v28 setLayoutMargins:{SiriUIDefaultEdgePadding, SiriUIDefaultEdgePadding, 0.0, SiriUIDefaultEdgePadding}];
    [v28 setScrollEnabled:0];
    v30 = +[CNUIColorRepository siriTintColor];
    [v28 setTintColor:v30];

    v46 = NSFontAttributeName;
    v31 = [v28 valueTextAttributes];
    v32 = [v31 objectForKeyedSubscript:NSFontAttributeName];
    v47 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    [v28 setValueTextAttributes:v33];

    [v28 setShouldUseMapTiles:0];
    [v28 setLayoutMarginsFollowReadableWidth:0];
    [v29 disablePhotoTapGesture];
    [v29 setVisibleToScrollViews:1];
    if (v19)
    {
      v34 = [v29 photoView];
      v35 = [v34 avatarView];
      [v35 setThreeDTouchEnabled:0];
    }

    v36 = [[UITapGestureRecognizer alloc] initWithTarget:v17 action:"openContact:"];
    [v29 addGestureRecognizer:v36];
    v37 = +[AFPreferences sharedPreferences];
    v38 = [v37 enableDragAndDrop];

    if (v38)
    {
      v39 = [[UIDragInteraction alloc] initWithDelegate:v17];
      v40 = [(CNContactContentViewController *)v17->_contactViewController view];
      [v40 addInteraction:v39];
    }

    [(CNAssistantSnippetView *)v17 configureForExpanded];
    v41 = +[UIColor clearColor];
    [(CNAssistantSnippetView *)v17 setBackgroundColor:v41];

    v15 = v43;
    v14 = v44;
  }

  return v17;
}

- (void)setSnippetSizeClass:(int64_t)a3
{
  if (self->_snippetSizeClass != a3)
  {
    self->_snippetSizeClass = a3;
    if (a3 == 1 && (-[CNContactContentViewController displayedProperties](self->_contactViewController, "displayedProperties"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5 >= 2))
    {

      [(CNAssistantSnippetView *)self configureForCompact];
    }

    else
    {

      [(CNAssistantSnippetView *)self configureForExpanded];
    }
  }
}

- (void)configureForCompact
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(CNAssistantSnippetView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v22 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  v8 = objc_alloc_init(SFActionItem);
  v9 = [(CNContact *)self->_contact identifier];
  [v8 setContactIdentifier:v9];

  v10 = objc_alloc_init(SFContactImage);
  v11 = [(CNContact *)self->_contact identifier];
  v27 = v11;
  v12 = [NSArray arrayWithObjects:&v27 count:1];
  [v10 setContactIdentifiers:v12];

  v13 = objc_alloc_init(SFDetailedRowCardSection);
  v14 = [CNContactFormatter stringFromContact:self->_contact style:0];
  v15 = [SFRichText textWithString:v14];
  [v13 setTitle:v15];

  [v13 setAction:v8];
  [v13 setThumbnail:v10];
  v26 = v13;
  v16 = [NSArray arrayWithObjects:&v26 count:1];
  v17 = [SearchUI viewsForCardSections:v16 feedbackListener:self];
  v18 = [v17 firstObject];
  compactContactView = self->_compactContactView;
  self->_compactContactView = v18;

  if (self->_compactContactView)
  {
    v20 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"openContact:"];
    [(UIView *)self->_compactContactView addGestureRecognizer:v20];
    v21 = self->_compactContactView;
    [(CNAssistantSnippetView *)self bounds];
    [(UIView *)v21 setFrame:?];
    [(UIView *)self->_compactContactView setAutoresizingMask:18];
    [(CNAssistantSnippetView *)self addSubview:self->_compactContactView];
  }
}

- (void)configureForExpanded
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CNAssistantSnippetView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(CNContactContentViewController *)self->_contactViewController view];
  [(CNAssistantSnippetView *)self bounds];
  [v8 setFrame:?];
  [v8 setAutoresizingMask:18];
  [(CNAssistantSnippetView *)self addSubview:v8];
}

- (void)dealloc
{
  [(CNContactContentViewController *)self->_contactViewController setContactDelegate:0];
  v3.receiver = self;
  v3.super_class = CNAssistantSnippetView;
  [(CNAssistantSnippetView *)&v3 dealloc];
}

- (double)desiredHeightForWidth:(double)a3
{
  if (self->_compactContactView)
  {
    [(UIView *)self->_compactContactView sizeThatFits:a3, 1.79769313e308];
    return v4;
  }

  else
  {
    contactViewController = self->_contactViewController;

    [(CNContactContentViewController *)contactViewController desiredHeightForWidth:a3];
  }

  return result;
}

- (void)openContact:(id)a3
{
  if (self->_allowsSelection)
  {
    v5 = [(CNAssistantSnippetView *)self _displayIdentifier];
    v6 = [(CNContactContentViewController *)self->_contactViewController contact];
    v10 = +[NSURL URLWithDisplayIdentifier:forSearchResultDomain:andIdentifier:](NSURL, "URLWithDisplayIdentifier:forSearchResultDomain:andIdentifier:", v5, 2, [v6 iOSLegacyIdentifier]);

    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v8 = [WeakRetained delegate];
    v9 = objc_loadWeakRetained(&self->_viewController);
    [v8 siriViewController:v9 openURL:v10 completion:&stru_C3A8];

    [(CNAssistantSnippetView *)self _preventMoreSelections];
  }
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v4 = [(CNContactContentViewController *)self->_contactViewController contact:a3];
  v5 = [CNUIDraggingContacts dragItemForContact:v4 withContactStore:0];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  v5 = [(CNContactContentViewController *)self->_contactViewController contact:a3];
  v6 = [CNUIDraggingContacts dragItemForContact:v5 withContactStore:0];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (BOOL)_dragInteraction:(id)a3 competingGestureRecognizerShouldDelayLift:(id)a4
{
  v4 = [a4 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContact:(id)a4 propertyKey:(id)a5 propertyIdentifier:(id)a6
{
  v7 = a5;
  v8 = [v7 isEqualToString:CNContactSocialProfilesKey];
  if (([v7 isEqualToString:CNContactRelationsKey] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", CNContactInstantMessageAddressesKey))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 ^ 1;
  }

  v10 = ([v7 isEqualToString:CNContactNoteKey] ^ 1) & v9;
  if (v10 == 1)
  {
    [(CNAssistantSnippetView *)self _preventMoreSelections];
  }

  return v10;
}

- (void)contactViewControllerWillPresentDisambiguationUI:(id)a3
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v6 = [WeakRetained delegate];
    v7 = objc_loadWeakRetained(&self->_viewController);
    [v6 siriSnippetViewController:v7 setStatusViewHidden:1];
  }
}

- (void)contactViewControllerDidDismissDisambiguationUI:(id)a3
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v6 = [WeakRetained delegate];
    v7 = objc_loadWeakRetained(&self->_viewController);
    [v6 siriSnippetViewController:v7 setStatusViewHidden:0];
  }
}

- (void)_preventMoreSelections
{
  v3 = [(CNAssistantSnippetView *)self contactView];
  [v3 setAllowsSelection:0];

  self->_allowsSelection = 0;
}

- (id)_displayIdentifier
{
  if (MGGetSInt32Answer() == 1)
  {
    return @"com.apple.mobilephone";
  }

  else
  {
    return @"com.apple.MobileAddressBook";
  }
}

- (BOOL)_deviceIsLockedWithPassword
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == kCFBooleanTrue;
}

- (SiriUISnippetViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end