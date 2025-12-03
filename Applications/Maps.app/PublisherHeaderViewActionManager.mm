@interface PublisherHeaderViewActionManager
- (PublisherHeaderActionDelegate)actionDelegate;
- (PublisherHeaderViewActionManager)initWithAttribution:(id)attribution withActionsDelegate:(id)delegate usingAnalyticsManager:(id)manager shouldHideAppIcon:(BOOL)icon;
- (id)createRowActionsWithStyle:(unint64_t)style;
- (id)headerEllipsis;
- (id)menuForPublisher;
- (void)didTapAppButton;
- (void)didTapShareButton:(id)button;
- (void)didTapWebsiteButton;
- (void)performAction:(id)action options:(id)options completion:(id)completion;
@end

@implementation PublisherHeaderViewActionManager

- (PublisherHeaderActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)didTapShareButton:(id)button
{
  buttonCopy = button;
  actionDelegate = [(PublisherHeaderViewActionManager *)self actionDelegate];
  [actionDelegate didSelectShareFromView:buttonCopy];

  analyticsManager = [(PublisherHeaderViewActionManager *)self analyticsManager];
  [analyticsManager publisherHeaderShareButtonTapped];
}

- (void)didTapWebsiteButton
{
  actionDelegate = [(PublisherHeaderViewActionManager *)self actionDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    actionDelegate2 = [(PublisherHeaderViewActionManager *)self actionDelegate];
    [actionDelegate2 didSelectWebsiteItem];

    analyticsManager = [(PublisherHeaderViewActionManager *)self analyticsManager];
    [analyticsManager publisherHeaderWebsiteButtonTapped];
  }
}

- (void)didTapAppButton
{
  actionDelegate = [(PublisherHeaderViewActionManager *)self actionDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    actionDelegate2 = [(PublisherHeaderViewActionManager *)self actionDelegate];
    [actionDelegate2 didSelectAppItem];

    analyticsManager = [(PublisherHeaderViewActionManager *)self analyticsManager];
    [analyticsManager publisherHeaderAppButtonTapped];
  }
}

- (void)performAction:(id)action options:(id)options completion:(id)completion
{
  optionsCopy = options;
  type = [action type];
  if (type == 7)
  {
    [(PublisherHeaderViewActionManager *)self didTapWebsiteButton];
  }

  else if (type == 26)
  {
    [(PublisherHeaderViewActionManager *)self didTapAppButton];
  }

  else if (type == 16)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"view"];
    [(PublisherHeaderViewActionManager *)self didTapShareButton:v8];
  }
}

- (id)headerEllipsis
{
  v3 = [UIButton buttonWithType:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:15.0];
  v5 = [UIImage systemImageNamed:@"ellipsis" withConfiguration:v4];

  v6 = [v5 imageWithRenderingMode:2];

  [v3 setImage:v6 forState:0];
  [v3 setContextMenuInteractionEnabled:1];
  [v3 setShowsMenuAsPrimaryAction:1];
  publisherMenu = [(PublisherHeaderViewActionManager *)self publisherMenu];
  [v3 setMenu:publisherMenu];

  heightAnchor = [v3 heightAnchor];
  v9 = [heightAnchor constraintEqualToConstant:24.0];
  v14[0] = v9;
  widthAnchor = [v3 widthAnchor];
  v11 = [widthAnchor constraintEqualToConstant:24.0];
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint activateConstraints:v12];

  [(PublisherHeaderViewActionManager *)self setEllipsis:v3];

  return v3;
}

- (id)createRowActionsWithStyle:(unint64_t)style
{
  v4 = objc_alloc_init(NSMutableArray);
  attribution = [(PublisherHeaderViewActionManager *)self attribution];
  applicationAdamId = [attribution applicationAdamId];
  if ([applicationAdamId length])
  {
    v7 = !self->_shouldHideApp;
  }

  else
  {
    v7 = 0;
  }

  attribution2 = [(PublisherHeaderViewActionManager *)self attribution];
  websiteURL = [attribution2 websiteURL];
  absoluteString = [websiteURL absoluteString];
  v11 = [absoluteString length];

  if (v7)
  {
    v12 = [MKPlaceCardActionItem alloc];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Publishers_App_Store_Action_Row" value:@"localized string not found" table:0];
    v15 = [v12 initWithType:26 displayString:v14 glyph:@"appstore" enabled:1];

    [v4 addObject:v15];
  }

  if (v11)
  {
    v16 = [MKPlaceCardActionItem alloc];
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Publishers_Website_Action_Row" value:@"localized string not found" table:0];
    v19 = [v16 initWithType:7 displayString:v18 glyph:@"safari" enabled:1];

    [v4 addObject:v19];
  }

  v20 = [MKPlaceCardActionItem alloc];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"Publishers_Share_Action_Row" value:@"localized string not found" table:0];
  v23 = [v20 initWithType:16 displayString:v22 glyph:@"square.and.arrow.up" enabled:1];

  [v4 addObject:v23];
  v24 = [v4 copy];

  return v24;
}

- (id)menuForPublisher
{
  attribution = [(PublisherHeaderViewActionManager *)self attribution];
  websiteURL = [attribution websiteURL];
  v5 = websiteURL == 0;

  v6 = +[NSMutableArray array];
  if (!v5)
  {
    objc_initWeak(&location, self);
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Publishers_Website_Mac_Menu_Item" value:@"localized string not found" table:0];
    v9 = [UIImage systemImageNamed:@"rectangle.grid.2x2"];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100AB2CFC;
    v27[3] = &unk_101661900;
    objc_copyWeak(&v28, &location);
    v10 = [UIAction actionWithTitle:v8 image:v9 identifier:0 handler:v27];

    v31 = v10;
    v11 = [NSArray arrayWithObjects:&v31 count:1];
    v12 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v11];

    [v6 addObject:v12];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"All_Guides_Mac_Menu_Item" value:@"localized string not found" table:0];
  v15 = [UIImage systemImageNamed:@"rectangle.grid.2x2"];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100AB2D3C;
  v25 = &unk_101661900;
  objc_copyWeak(&v26, &location);
  v16 = [UIAction actionWithTitle:v14 image:v15 identifier:0 handler:&v22];

  v30 = v16;
  v17 = [NSArray arrayWithObjects:&v30 count:1, v22, v23, v24, v25];
  v18 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v17];

  [v6 addObject:v18];
  v19 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:0];
  [v6 addObject:v19];

  v20 = [UIMenu menuWithChildren:v6];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v20;
}

- (PublisherHeaderViewActionManager)initWithAttribution:(id)attribution withActionsDelegate:(id)delegate usingAnalyticsManager:(id)manager shouldHideAppIcon:(BOOL)icon
{
  attributionCopy = attribution;
  delegateCopy = delegate;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = PublisherHeaderViewActionManager;
  v14 = [(PublisherHeaderViewActionManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_attribution, attribution);
    objc_storeWeak(&v15->_actionDelegate, delegateCopy);
    objc_storeStrong(&v15->_analyticsManager, manager);
    v15->_shouldHideApp = icon;
    menuForPublisher = [(PublisherHeaderViewActionManager *)v15 menuForPublisher];
    publisherMenu = v15->_publisherMenu;
    v15->_publisherMenu = menuForPublisher;
  }

  return v15;
}

@end