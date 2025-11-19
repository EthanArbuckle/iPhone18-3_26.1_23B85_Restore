@interface FKAControlsViewController
- (FKAControlsViewController)init;
- (id)_addButtonWithTitle:(id)a3 action:(SEL)a4 toView:(id)a5;
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
  v8 = [v67 safeAreaLayoutGuide];
  v60 = v3;
  v66 = [v3 heightAnchor];
  v65 = [v66 constraintEqualToConstant:50.0];
  v69[0] = v65;
  v64 = [v4 heightAnchor];
  v63 = [v64 constraintEqualToConstant:50.0];
  v69[1] = v63;
  v62 = [v5 heightAnchor];
  v61 = [v62 constraintEqualToConstant:50.0];
  v69[2] = v61;
  v59 = [v6 heightAnchor];
  v58 = [v59 constraintEqualToConstant:50.0];
  v69[3] = v58;
  v57 = [v7 heightAnchor];
  v56 = [v57 constraintEqualToConstant:50.0];
  v69[4] = v56;
  v55 = [v3 leadingAnchor];
  v54 = [v8 leadingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v69[5] = v53;
  v52 = [v3 widthAnchor];
  v51 = [v52 constraintEqualToConstant:50.0];
  v69[6] = v51;
  v50 = [v3 bottomAnchor];
  v48 = [v8 bottomAnchor];
  v47 = [v50 constraintEqualToAnchor:v48];
  v69[7] = v47;
  v46 = [v4 trailingAnchor];
  v45 = [v8 trailingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v69[8] = v44;
  v43 = [v4 widthAnchor];
  v41 = [v43 constraintEqualToConstant:50.0];
  v69[9] = v41;
  v49 = v4;
  v40 = [v4 bottomAnchor];
  v38 = [v8 bottomAnchor];
  v37 = [v40 constraintEqualToAnchor:v38];
  v69[10] = v37;
  v34 = [v5 trailingAnchor];
  v33 = [v8 trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v69[11] = v32;
  v31 = [v5 widthAnchor];
  v30 = [v31 constraintEqualToConstant:50.0];
  v69[12] = v30;
  v29 = [v5 bottomAnchor];
  v28 = [v4 topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v69[13] = v27;
  v26 = [v7 leadingAnchor];
  v39 = v8;
  v25 = [v8 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v69[14] = v24;
  v42 = v7;
  v23 = [v7 widthAnchor];
  v22 = [v23 constraintEqualToConstant:75.0];
  v69[15] = v22;
  v21 = [v7 bottomAnchor];
  v35 = v5;
  v20 = [v5 topAnchor];
  v9 = [v21 constraintEqualToAnchor:v20];
  v69[16] = v9;
  v10 = v6;
  v36 = v6;
  v11 = [v6 trailingAnchor];
  v12 = [v8 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v69[17] = v13;
  v14 = [v10 widthAnchor];
  v15 = [v14 constraintEqualToConstant:75.0];
  v69[18] = v15;
  v16 = [v10 bottomAnchor];
  v17 = [v5 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v69[19] = v18;
  v19 = [NSArray arrayWithObjects:v69 count:20];
  [NSLayoutConstraint activateConstraints:v19];

  [(FKAControlsViewController *)self setView:v67];
}

- (id)_addButtonWithTitle:(id)a3 action:(SEL)a4 toView:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [UIButton buttonWithType:1];
  v11 = +[UIColor blackColor];
  [v10 setBackgroundColor:v11];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setTitle:v8 forState:0];
  v12 = [(FKAControlsViewController *)self actionManager];
  [v10 addTarget:v12 action:a4 forControlEvents:64];

  [v9 addSubview:v10];

  return v10;
}

@end