@interface CNSyndicationViewController
+ (id)descriptorForRequiredKeys;
- (CNSyndicationViewController)initWithGroup:(id)group senderContact:(id)contact actionsViewConfiguration:(id)configuration;
- (id)subtitleTextForSenderContact:(id)contact;
- (void)didSelectAction:(id)action withSourceView:(id)view longPress:(BOOL)press;
- (void)setSubtitleText:(id)text;
- (void)setupActionViews;
- (void)setupContainerViews;
- (void)setupNameViews;
- (void)viewDidLoad;
@end

@implementation CNSyndicationViewController

- (void)didSelectAction:(id)action withSourceView:(id)view longPress:(BOOL)press
{
  actionCopy = action;
  actionsViewConfiguration = [(CNSyndicationViewController *)self actionsViewConfiguration];
  actionsPerType = [actionsViewConfiguration actionsPerType];
  type = [actionCopy type];

  v13 = [actionsPerType objectForKeyedSubscript:type];

  if (v13)
  {
    actionBlock = [v13 actionBlock];

    if (actionBlock)
    {
      actionBlock2 = [v13 actionBlock];
      actionType = [v13 actionType];
      (actionBlock2)[2](actionBlock2, actionType);
    }
  }
}

- (void)setupActionViews
{
  v44 = *MEMORY[0x1E69E9840];
  actionsContainerView = [(CNSyndicationViewController *)self actionsContainerView];
  v3 = objc_alloc_init(CNActionsView);
  [(CNActionsView *)v3 setActionsDelegate:self];
  v4 = v3;
  [(CNActionsView *)v3 setStyle:5];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  actionsViewConfiguration = [(CNSyndicationViewController *)self actionsViewConfiguration];
  supportedActionTypes = [actionsViewConfiguration supportedActionTypes];

  obj = supportedActionTypes;
  v7 = [supportedActionTypes countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        actionsViewConfiguration2 = [(CNSyndicationViewController *)self actionsViewConfiguration];
        actionsPerType = [actionsViewConfiguration2 actionsPerType];
        v14 = [actionsPerType objectForKeyedSubscript:v11];

        image = [v14 image];
        v16 = image;
        if (image)
        {
          v17 = image;
        }

        else
        {
          v17 = [MEMORY[0x1E69DCAB8] cnui_userActionSymbolImageForActionType:v11 scale:2 withColor:0];
        }

        v18 = v17;

        v19 = [[CNActionItem alloc] initWithImage:v18 type:v11];
        [(CNActionsView *)v4 addActionItem:v19];
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v21 = v4;
  [(CNActionsView *)v4 setTintColor:labelColor];

  [(CNActionsView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [actionsContainerView addSubview:v4];
  v30 = MEMORY[0x1E696ACD8];
  obja = [(CNActionsView *)v4 leadingAnchor];
  leadingAnchor = [actionsContainerView leadingAnchor];
  v33 = [obja constraintEqualToAnchor:leadingAnchor];
  v42[0] = v33;
  topAnchor = [(CNActionsView *)v4 topAnchor];
  topAnchor2 = [actionsContainerView topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[1] = v22;
  bottomAnchor = [(CNActionsView *)v4 bottomAnchor];
  bottomAnchor2 = [actionsContainerView bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[2] = v25;
  trailingAnchor = [(CNActionsView *)v4 trailingAnchor];
  trailingAnchor2 = [actionsContainerView trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v42[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  [v30 activateConstraints:v29];
}

- (void)setupNameViews
{
  v74[16] = *MEMORY[0x1E69E9840];
  nameContainerView = [(CNSyndicationViewController *)self nameContainerView];
  groupAvatarViewController = [(CNSyndicationViewController *)self groupAvatarViewController];
  view = [groupAvatarViewController view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  groupAvatarViewController2 = [(CNSyndicationViewController *)self groupAvatarViewController];
  [(CNSyndicationViewController *)self addChildViewController:groupAvatarViewController2];

  [nameContainerView addSubview:view];
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [nameContainerView addSubview:v7];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  contactFormatter = [(CNSyndicationViewController *)self contactFormatter];
  group = [(CNSyndicationViewController *)self group];
  v11 = [contactFormatter stringFromGroupIdentity:group];
  [v8 setText:v11];

  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v13 = v8;
  [v8 setFont:v12];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v8 setTextColor:labelColor];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:v8];
  [(CNSyndicationViewController *)self setTitleLabel:v8];
  v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleText = [(CNSyndicationViewController *)self subtitleText];
  [v15 setText:subtitleText];

  v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v15 setFont:v17];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v15 setTextColor:secondaryLabelColor];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:v15];
  [(CNSyndicationViewController *)self setSubtitleLabel:v15];
  v52 = MEMORY[0x1E696ACD8];
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [nameContainerView leadingAnchor];
  v71 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v74[0] = v71;
  centerYAnchor = [view centerYAnchor];
  centerYAnchor2 = [nameContainerView centerYAnchor];
  v68 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v74[1] = v68;
  heightAnchor = [view heightAnchor];
  v65 = [heightAnchor constraintEqualToConstant:40.0];
  v74[2] = v65;
  widthAnchor = [view widthAnchor];
  v67 = view;
  heightAnchor2 = [view heightAnchor];
  v62 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  v74[3] = v62;
  v19 = v7;
  leadingAnchor3 = [v7 leadingAnchor];
  trailingAnchor = [view trailingAnchor];
  v58 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v74[4] = v58;
  trailingAnchor2 = [v7 trailingAnchor];
  trailingAnchor3 = [nameContainerView trailingAnchor];
  v55 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v74[5] = v55;
  centerYAnchor3 = [v7 centerYAnchor];
  centerYAnchor4 = [nameContainerView centerYAnchor];
  v51 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v74[6] = v51;
  topAnchor = [v7 topAnchor];
  v61 = nameContainerView;
  topAnchor2 = [nameContainerView topAnchor];
  v48 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v74[7] = v48;
  bottomAnchor = [v7 bottomAnchor];
  bottomAnchor2 = [nameContainerView bottomAnchor];
  v42 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v74[8] = v42;
  leadingAnchor4 = [v13 leadingAnchor];
  leadingAnchor5 = [v7 leadingAnchor];
  v39 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v74[9] = v39;
  trailingAnchor4 = [v13 trailingAnchor];
  trailingAnchor5 = [v7 trailingAnchor];
  v36 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v74[10] = v36;
  topAnchor3 = [v13 topAnchor];
  v44 = v7;
  topAnchor4 = [v7 topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v74[11] = v33;
  topAnchor5 = [v15 topAnchor];
  bottomAnchor3 = [v13 bottomAnchor];
  v30 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
  v74[12] = v30;
  leadingAnchor6 = [v15 leadingAnchor];
  v47 = v13;
  leadingAnchor7 = [v13 leadingAnchor];
  v22 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v74[13] = v22;
  v43 = v15;
  trailingAnchor6 = [v15 trailingAnchor];
  trailingAnchor7 = [v13 trailingAnchor];
  v25 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v74[14] = v25;
  bottomAnchor4 = [v15 bottomAnchor];
  bottomAnchor5 = [v19 bottomAnchor];
  v28 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v74[15] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:16];
  [v52 activateConstraints:v29];
}

- (void)setupContainerViews
{
  v37[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  view = [(CNSyndicationViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CNSyndicationViewController *)self view];
  [view2 addSubview:v5];

  [(CNSyndicationViewController *)self setNameContainerView:v5];
  v7 = objc_alloc(MEMORY[0x1E69DD250]);
  view3 = [(CNSyndicationViewController *)self view];
  [view3 bounds];
  v9 = [v7 initWithFrame:?];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  view4 = [(CNSyndicationViewController *)self view];
  [view4 addSubview:v9];

  [(CNSyndicationViewController *)self setActionsContainerView:v9];
  view5 = [(CNSyndicationViewController *)self view];
  layoutMarginsGuide = [view5 layoutMarginsGuide];

  v26 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v37[0] = v34;
  topAnchor = [v5 topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v37[1] = v30;
  v32 = v5;
  bottomAnchor = [v5 bottomAnchor];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v37[2] = v27;
  leadingAnchor3 = [v9 leadingAnchor];
  trailingAnchor = [v5 trailingAnchor];
  v23 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor];
  v37[3] = v23;
  topAnchor3 = [v9 topAnchor];
  topAnchor4 = [layoutMarginsGuide topAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v37[4] = v13;
  bottomAnchor3 = [v9 bottomAnchor];
  bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
  v16 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v37[5] = v16;
  trailingAnchor2 = [v9 trailingAnchor];
  trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
  v19 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v37[6] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:7];
  [v26 activateConstraints:v20];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNSyndicationViewController;
  [(CNSyndicationViewController *)&v3 viewDidLoad];
  [(CNSyndicationViewController *)self setupContainerViews];
  [(CNSyndicationViewController *)self setupNameViews];
  [(CNSyndicationViewController *)self setupActionViews];
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  if (self->_subtitleText != textCopy)
  {
    v7 = textCopy;
    objc_storeStrong(&self->_subtitleText, text);
    subtitleLabel = [(CNSyndicationViewController *)self subtitleLabel];
    [subtitleLabel setText:v7];

    textCopy = v7;
  }
}

- (id)subtitleTextForSenderContact:(id)contact
{
  v4 = MEMORY[0x1E696AEC0];
  contactCopy = contact;
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SYNDICATION_SHARED_BY_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
  contactFormatter = [(CNSyndicationViewController *)self contactFormatter];
  v9 = [contactFormatter stringFromContact:contactCopy];

  v10 = [v4 stringWithFormat:v7, v9];

  return v10;
}

- (CNSyndicationViewController)initWithGroup:(id)group senderContact:(id)contact actionsViewConfiguration:(id)configuration
{
  groupCopy = group;
  contactCopy = contact;
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = CNSyndicationViewController;
  v12 = [(CNSyndicationViewController *)&v22 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, group);
    objc_storeStrong(&v13->_senderContact, contact);
    objc_storeStrong(&v13->_actionsViewConfiguration, configuration);
    v14 = [[CNGroupAvatarViewController alloc] initWithGroup:groupCopy];
    groupAvatarViewController = v13->_groupAvatarViewController;
    v13->_groupAvatarViewController = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695CD80]);
    v17 = 1016;
    contactFormatter = v13->_contactFormatter;
    v13->_contactFormatter = v16;

    [(CNContactFormatter *)v13->_contactFormatter setStyle:1000];
    [(CNContactFormatter *)v13->_contactFormatter setFallbackStyle:-1];
    if (contactCopy)
    {
      [(CNSyndicationViewController *)v13 subtitleTextForSenderContact:contactCopy];
    }

    else
    {
      v17 = CNContactsUIBundle();
      [v17 localizedStringForKey:@"SYNDICATION_SHARED_WITH_YOU" value:&stru_1F0CE7398 table:@"Localized"];
    }
    v19 = ;
    objc_storeStrong(&v13->_subtitleText, v19);
    if (!contactCopy)
    {

      v19 = v17;
    }

    v20 = v13;
  }

  return v13;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1, &__block_literal_global_4363);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1;

  return v3;
}

void __56__CNSyndicationViewController_descriptorForRequiredKeys__block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v6[0] = *MEMORY[0x1E695C240];
  v1 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSyndicationViewController descriptorForRequiredKeys]_block_invoke"];
  v4 = [v0 descriptorWithKeyDescriptors:v2 description:v3];
  v5 = descriptorForRequiredKeys_cn_once_object_1;
  descriptorForRequiredKeys_cn_once_object_1 = v4;
}

@end