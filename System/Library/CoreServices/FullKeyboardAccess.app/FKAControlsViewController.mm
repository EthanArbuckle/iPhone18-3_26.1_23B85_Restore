@interface FKAControlsViewController
- (FKAControlsViewController)init;
- (id)_addButtonWithTitle:(id)title action:(SEL)action toView:(id)view;
- (void)loadView;
@end

@implementation FKAControlsViewController

- (FKAControlsViewController)init
{
  v5.receiver = self;
  v5.super_class = FKAControlsViewController;
  v2 = [(FKAControlsViewController *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(FKAControlsViewController *)v2 setActionManager:v3];
  }

  return v2;
}

- (void)loadView
{
  v67 = objc_opt_new();
  v3 = [(FKAControlsViewController *)self _addButtonWithTitle:@"Prev" action:"moveToPreviousElement" toView:v67];
  v4 = [(FKAControlsViewController *)self _addButtonWithTitle:@"Next" action:"moveToNextElement" toView:v67];
  v5 = [(FKAControlsViewController *)self _addButtonWithTitle:@"Tap" action:"performDefaultAction" toView:v67];
  v6 = [(FKAControlsViewController *)self _addButtonWithTitle:@"Drill In" action:"enterContainer" toView:v67];
  v7 = [(FKAControlsViewController *)self _addButtonWithTitle:@"Drill Out" action:"exitContainer" toView:v67];
  safeAreaLayoutGuide = [v67 safeAreaLayoutGuide];
  v60 = v3;
  heightAnchor = [v3 heightAnchor];
  v65 = [heightAnchor constraintEqualToConstant:50.0];
  v69[0] = v65;
  heightAnchor2 = [v4 heightAnchor];
  v63 = [heightAnchor2 constraintEqualToConstant:50.0];
  v69[1] = v63;
  heightAnchor3 = [v5 heightAnchor];
  v61 = [heightAnchor3 constraintEqualToConstant:50.0];
  v69[2] = v61;
  heightAnchor4 = [v6 heightAnchor];
  v58 = [heightAnchor4 constraintEqualToConstant:50.0];
  v69[3] = v58;
  heightAnchor5 = [v7 heightAnchor];
  v56 = [heightAnchor5 constraintEqualToConstant:50.0];
  v69[4] = v56;
  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v69[5] = v53;
  widthAnchor = [v3 widthAnchor];
  v51 = [widthAnchor constraintEqualToConstant:50.0];
  v69[6] = v51;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v69[7] = v47;
  trailingAnchor = [v4 trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v69[8] = v44;
  widthAnchor2 = [v4 widthAnchor];
  v41 = [widthAnchor2 constraintEqualToConstant:50.0];
  v69[9] = v41;
  v49 = v4;
  bottomAnchor3 = [v4 bottomAnchor];
  bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];
  v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v69[10] = v37;
  trailingAnchor3 = [v5 trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
  v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v69[11] = v32;
  widthAnchor3 = [v5 widthAnchor];
  v30 = [widthAnchor3 constraintEqualToConstant:50.0];
  v69[12] = v30;
  bottomAnchor5 = [v5 bottomAnchor];
  topAnchor = [v4 topAnchor];
  v27 = [bottomAnchor5 constraintEqualToAnchor:topAnchor];
  v69[13] = v27;
  leadingAnchor3 = [v7 leadingAnchor];
  v39 = safeAreaLayoutGuide;
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v69[14] = v24;
  v42 = v7;
  widthAnchor4 = [v7 widthAnchor];
  v22 = [widthAnchor4 constraintEqualToConstant:75.0];
  v69[15] = v22;
  bottomAnchor6 = [v7 bottomAnchor];
  v35 = v5;
  topAnchor2 = [v5 topAnchor];
  v9 = [bottomAnchor6 constraintEqualToAnchor:topAnchor2];
  v69[16] = v9;
  v10 = v6;
  v36 = v6;
  trailingAnchor5 = [v6 trailingAnchor];
  trailingAnchor6 = [safeAreaLayoutGuide trailingAnchor];
  v13 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v69[17] = v13;
  widthAnchor5 = [v10 widthAnchor];
  v15 = [widthAnchor5 constraintEqualToConstant:75.0];
  v69[18] = v15;
  bottomAnchor7 = [v10 bottomAnchor];
  topAnchor3 = [v5 topAnchor];
  v18 = [bottomAnchor7 constraintEqualToAnchor:topAnchor3];
  v69[19] = v18;
  v19 = [NSArray arrayWithObjects:v69 count:20];
  [NSLayoutConstraint activateConstraints:v19];

  [(FKAControlsViewController *)self setView:v67];
}

- (id)_addButtonWithTitle:(id)title action:(SEL)action toView:(id)view
{
  titleCopy = title;
  viewCopy = view;
  v10 = [UIButton buttonWithType:1];
  v11 = +[UIColor blackColor];
  [v10 setBackgroundColor:v11];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setTitle:titleCopy forState:0];
  actionManager = [(FKAControlsViewController *)self actionManager];
  [v10 addTarget:actionManager action:action forControlEvents:64];

  [viewCopy addSubview:v10];

  return v10;
}

@end