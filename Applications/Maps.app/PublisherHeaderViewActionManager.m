@interface PublisherHeaderViewActionManager
- (PublisherHeaderActionDelegate)actionDelegate;
- (PublisherHeaderViewActionManager)initWithAttribution:(id)a3 withActionsDelegate:(id)a4 usingAnalyticsManager:(id)a5 shouldHideAppIcon:(BOOL)a6;
- (id)createRowActionsWithStyle:(unint64_t)a3;
- (id)headerEllipsis;
- (id)menuForPublisher;
- (void)didTapAppButton;
- (void)didTapShareButton:(id)a3;
- (void)didTapWebsiteButton;
- (void)performAction:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation PublisherHeaderViewActionManager

- (PublisherHeaderActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)didTapShareButton:(id)a3
{
  v4 = a3;
  v5 = [(PublisherHeaderViewActionManager *)self actionDelegate];
  [v5 didSelectShareFromView:v4];

  v6 = [(PublisherHeaderViewActionManager *)self analyticsManager];
  [v6 publisherHeaderShareButtonTapped];
}

- (void)didTapWebsiteButton
{
  v3 = [(PublisherHeaderViewActionManager *)self actionDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PublisherHeaderViewActionManager *)self actionDelegate];
    [v5 didSelectWebsiteItem];

    v6 = [(PublisherHeaderViewActionManager *)self analyticsManager];
    [v6 publisherHeaderWebsiteButtonTapped];
  }
}

- (void)didTapAppButton
{
  v3 = [(PublisherHeaderViewActionManager *)self actionDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PublisherHeaderViewActionManager *)self actionDelegate];
    [v5 didSelectAppItem];

    v6 = [(PublisherHeaderViewActionManager *)self analyticsManager];
    [v6 publisherHeaderAppButtonTapped];
  }
}

- (void)performAction:(id)a3 options:(id)a4 completion:(id)a5
{
  v9 = a4;
  v7 = [a3 type];
  if (v7 == 7)
  {
    [(PublisherHeaderViewActionManager *)self didTapWebsiteButton];
  }

  else if (v7 == 26)
  {
    [(PublisherHeaderViewActionManager *)self didTapAppButton];
  }

  else if (v7 == 16)
  {
    v8 = [v9 objectForKeyedSubscript:@"view"];
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
  v7 = [(PublisherHeaderViewActionManager *)self publisherMenu];
  [v3 setMenu:v7];

  v8 = [v3 heightAnchor];
  v9 = [v8 constraintEqualToConstant:24.0];
  v14[0] = v9;
  v10 = [v3 widthAnchor];
  v11 = [v10 constraintEqualToConstant:24.0];
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint activateConstraints:v12];

  [(PublisherHeaderViewActionManager *)self setEllipsis:v3];

  return v3;
}

- (id)createRowActionsWithStyle:(unint64_t)a3
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(PublisherHeaderViewActionManager *)self attribution];
  v6 = [v5 applicationAdamId];
  if ([v6 length])
  {
    v7 = !self->_shouldHideApp;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PublisherHeaderViewActionManager *)self attribution];
  v9 = [v8 websiteURL];
  v10 = [v9 absoluteString];
  v11 = [v10 length];

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
  v3 = [(PublisherHeaderViewActionManager *)self attribution];
  v4 = [v3 websiteURL];
  v5 = v4 == 0;

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

- (PublisherHeaderViewActionManager)initWithAttribution:(id)a3 withActionsDelegate:(id)a4 usingAnalyticsManager:(id)a5 shouldHideAppIcon:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = PublisherHeaderViewActionManager;
  v14 = [(PublisherHeaderViewActionManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_attribution, a3);
    objc_storeWeak(&v15->_actionDelegate, v12);
    objc_storeStrong(&v15->_analyticsManager, a5);
    v15->_shouldHideApp = a6;
    v16 = [(PublisherHeaderViewActionManager *)v15 menuForPublisher];
    publisherMenu = v15->_publisherMenu;
    v15->_publisherMenu = v16;
  }

  return v15;
}

@end