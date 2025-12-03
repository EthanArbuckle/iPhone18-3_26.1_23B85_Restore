@interface CNAssistantSnippetView
+ (id)descriptorForRequiredKeys;
- (BOOL)_deviceIsLockedWithPassword;
- (BOOL)_dragInteraction:(id)interaction competingGestureRecognizerShouldDelayLift:(id)lift;
- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
- (CNAssistantSnippetView)initWithFrame:(CGRect)frame contact:(id)contact displayedProperties:(id)properties viewController:(id)controller;
- (SiriUISnippetViewController)viewController;
- (double)desiredHeightForWidth:(double)width;
- (id)_displayIdentifier;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (void)_preventMoreSelections;
- (void)configureForCompact;
- (void)configureForExpanded;
- (void)contactViewControllerDidDismissDisambiguationUI:(id)i;
- (void)contactViewControllerWillPresentDisambiguationUI:(id)i;
- (void)dealloc;
- (void)openContact:(id)contact;
- (void)setSnippetSizeClass:(int64_t)class;
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

- (CNAssistantSnippetView)initWithFrame:(CGRect)frame contact:(id)contact displayedProperties:(id)properties viewController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contactCopy = contact;
  propertiesCopy = properties;
  controllerCopy = controller;
  v45.receiver = self;
  v45.super_class = CNAssistantSnippetView;
  height = [(CNAssistantSnippetView *)&v45 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    v43 = controllerCopy;
    objc_storeWeak(&height->_viewController, controllerCopy);
    [UIFont ab_setIgnoreUserFontSize:1];
    CNUISetUseSiriLocalization();
    v18 = +[CNContactStyle siriStyle];
    [CNContactStyle setCurrentStyle:v18];

    v17->_allowsSelection = 1;
    _deviceIsLockedWithPassword = [(CNAssistantSnippetView *)v17 _deviceIsLockedWithPassword];
    v17->_snippetSizeClass = 0;
    compactContactView = v17->_compactContactView;
    v17->_compactContactView = 0;

    [(CNAssistantSnippetView *)v17 setContact:contactCopy];
    v21 = [[CNContactContentViewController alloc] initWithContact:contactCopy];
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
    v44 = propertiesCopy;
    [(CNContactContentViewController *)v17->_contactViewController setDisplayedProperties:propertiesCopy];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsActionsModel:_deviceIsLockedWithPassword ^ 1];
    [(CNContactContentViewController *)v17->_contactViewController setAllowsDisplayModePickerActions:0];
    displayedProperties = [(CNContactContentViewController *)v17->_contactViewController displayedProperties];
    v24 = [displayedProperties mutableCopy];

    [v24 removeObject:CNContactTextAlertKey];
    [v24 removeObject:CNContactCallAlertKey];
    note = [contactCopy note];
    if ([note length])
    {
    }

    else
    {
      displayedProperties2 = [(CNContactContentViewController *)v17->_contactViewController displayedProperties];
      v27 = [displayedProperties2 containsObject:CNContactNoteKey];

      if (v27)
      {
        [v24 removeObject:CNContactNoteKey];
      }
    }

    [(CNContactContentViewController *)v17->_contactViewController setDisplayedProperties:v24];
    contactView = [(CNContactContentViewController *)v17->_contactViewController contactView];
    displayHeaderView = [(CNContactContentViewController *)v17->_contactViewController displayHeaderView];
    [contactView setLayoutMargins:{SiriUIDefaultEdgePadding, SiriUIDefaultEdgePadding, 0.0, SiriUIDefaultEdgePadding}];
    [contactView setScrollEnabled:0];
    v30 = +[CNUIColorRepository siriTintColor];
    [contactView setTintColor:v30];

    v46 = NSFontAttributeName;
    valueTextAttributes = [contactView valueTextAttributes];
    v32 = [valueTextAttributes objectForKeyedSubscript:NSFontAttributeName];
    v47 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    [contactView setValueTextAttributes:v33];

    [contactView setShouldUseMapTiles:0];
    [contactView setLayoutMarginsFollowReadableWidth:0];
    [displayHeaderView disablePhotoTapGesture];
    [displayHeaderView setVisibleToScrollViews:1];
    if (_deviceIsLockedWithPassword)
    {
      photoView = [displayHeaderView photoView];
      avatarView = [photoView avatarView];
      [avatarView setThreeDTouchEnabled:0];
    }

    v36 = [[UITapGestureRecognizer alloc] initWithTarget:v17 action:"openContact:"];
    [displayHeaderView addGestureRecognizer:v36];
    v37 = +[AFPreferences sharedPreferences];
    enableDragAndDrop = [v37 enableDragAndDrop];

    if (enableDragAndDrop)
    {
      v39 = [[UIDragInteraction alloc] initWithDelegate:v17];
      view = [(CNContactContentViewController *)v17->_contactViewController view];
      [view addInteraction:v39];
    }

    [(CNAssistantSnippetView *)v17 configureForExpanded];
    v41 = +[UIColor clearColor];
    [(CNAssistantSnippetView *)v17 setBackgroundColor:v41];

    controllerCopy = v43;
    propertiesCopy = v44;
  }

  return v17;
}

- (void)setSnippetSizeClass:(int64_t)class
{
  if (self->_snippetSizeClass != class)
  {
    self->_snippetSizeClass = class;
    if (class == 1 && (-[CNContactContentViewController displayedProperties](self->_contactViewController, "displayedProperties"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5 >= 2))
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
  subviews = [(CNAssistantSnippetView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v22 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  v8 = objc_alloc_init(SFActionItem);
  identifier = [(CNContact *)self->_contact identifier];
  [v8 setContactIdentifier:identifier];

  v10 = objc_alloc_init(SFContactImage);
  identifier2 = [(CNContact *)self->_contact identifier];
  v27 = identifier2;
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
  firstObject = [v17 firstObject];
  compactContactView = self->_compactContactView;
  self->_compactContactView = firstObject;

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
  subviews = [(CNAssistantSnippetView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v9 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  view = [(CNContactContentViewController *)self->_contactViewController view];
  [(CNAssistantSnippetView *)self bounds];
  [view setFrame:?];
  [view setAutoresizingMask:18];
  [(CNAssistantSnippetView *)self addSubview:view];
}

- (void)dealloc
{
  [(CNContactContentViewController *)self->_contactViewController setContactDelegate:0];
  v3.receiver = self;
  v3.super_class = CNAssistantSnippetView;
  [(CNAssistantSnippetView *)&v3 dealloc];
}

- (double)desiredHeightForWidth:(double)width
{
  if (self->_compactContactView)
  {
    [(UIView *)self->_compactContactView sizeThatFits:width, 1.79769313e308];
    return v4;
  }

  else
  {
    contactViewController = self->_contactViewController;

    [(CNContactContentViewController *)contactViewController desiredHeightForWidth:width];
  }

  return result;
}

- (void)openContact:(id)contact
{
  if (self->_allowsSelection)
  {
    _displayIdentifier = [(CNAssistantSnippetView *)self _displayIdentifier];
    contact = [(CNContactContentViewController *)self->_contactViewController contact];
    v10 = +[NSURL URLWithDisplayIdentifier:forSearchResultDomain:andIdentifier:](NSURL, "URLWithDisplayIdentifier:forSearchResultDomain:andIdentifier:", _displayIdentifier, 2, [contact iOSLegacyIdentifier]);

    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    delegate = [WeakRetained delegate];
    v9 = objc_loadWeakRetained(&self->_viewController);
    [delegate siriViewController:v9 openURL:v10 completion:&stru_C3A8];

    [(CNAssistantSnippetView *)self _preventMoreSelections];
  }
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v4 = [(CNContactContentViewController *)self->_contactViewController contact:interaction];
  v5 = [CNUIDraggingContacts dragItemForContact:v4 withContactStore:0];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  v5 = [(CNContactContentViewController *)self->_contactViewController contact:interaction];
  v6 = [CNUIDraggingContacts dragItemForContact:v5 withContactStore:0];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (BOOL)_dragInteraction:(id)interaction competingGestureRecognizerShouldDelayLift:(id)lift
{
  view = [lift view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  keyCopy = key;
  v8 = [keyCopy isEqualToString:CNContactSocialProfilesKey];
  if (([keyCopy isEqualToString:CNContactRelationsKey] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", CNContactInstantMessageAddressesKey))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 ^ 1;
  }

  v10 = ([keyCopy isEqualToString:CNContactNoteKey] ^ 1) & v9;
  if (v10 == 1)
  {
    [(CNAssistantSnippetView *)self _preventMoreSelections];
  }

  return v10;
}

- (void)contactViewControllerWillPresentDisambiguationUI:(id)i
{
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    delegate = [WeakRetained delegate];
    v7 = objc_loadWeakRetained(&self->_viewController);
    [delegate siriSnippetViewController:v7 setStatusViewHidden:1];
  }
}

- (void)contactViewControllerDidDismissDisambiguationUI:(id)i
{
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    delegate = [WeakRetained delegate];
    v7 = objc_loadWeakRetained(&self->_viewController);
    [delegate siriSnippetViewController:v7 setStatusViewHidden:0];
  }
}

- (void)_preventMoreSelections
{
  contactView = [(CNAssistantSnippetView *)self contactView];
  [contactView setAllowsSelection:0];

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