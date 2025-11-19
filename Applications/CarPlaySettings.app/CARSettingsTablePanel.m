@interface CARSettingsTablePanel
- (id)preferredFocusEnvironments;
- (void)_performBatchUpdatesForReloadIndexPaths:(id)a3 insertIndexPaths:(id)a4 removeIndexPaths:(id)a5;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)reloadSpecifiers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CARSettingsTablePanel

- (void)viewDidLoad
{
  v54.receiver = self;
  v54.super_class = CARSettingsTablePanel;
  [(CARSettingsPanel *)&v54 viewDidLoad];
  v3 = [CARSettingsPanelTableSource alloc];
  v4 = [(CARSettingsTablePanel *)self cellSpecifiers];
  v5 = [(CARSettingsTablePanel *)self specifierSections];
  v6 = [(CARSettingsPanelTableSource *)v3 initWithSpecifiers:v4 specifierSections:v5];
  [(CARSettingsTablePanel *)self setTableSource:v6];

  v7 = [[CARTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CARSettingsTablePanel *)self setTableView:v7];

  v8 = [(CARSettingsTablePanel *)self tableView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(CARSettingsTablePanel *)self tableSource];
  v10 = [(CARSettingsTablePanel *)self tableView];
  [v10 setDataSource:v9];

  v11 = [(CARSettingsTablePanel *)self tableSource];
  v12 = [(CARSettingsTablePanel *)self tableView];
  [v12 setDelegate:v11];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = [(CARSettingsTablePanel *)self tableView];
  [v16 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  v17 = [(CARSettingsTablePanel *)self tableView];
  [v17 _setHeaderAndFooterViewsFloat:0];

  v18 = [(CARSettingsTablePanel *)self tableView];
  v19 = objc_opt_class();
  v20 = +[_TtC15CarPlaySettings24CARSettingsTableViewCell reuseIdentifier];
  [v18 registerClass:v19 forCellReuseIdentifier:v20];

  v21 = [(CARSettingsTablePanel *)self tableView];
  v22 = objc_opt_class();
  v23 = +[CARSettingsTableFooterView identifier];
  [v21 registerClass:v22 forHeaderFooterViewReuseIdentifier:v23];

  v24 = [(CARSettingsTablePanel *)self tableView];
  v25 = objc_opt_class();
  v26 = +[CARSettingsTableHeaderView identifier];
  [v24 registerClass:v25 forHeaderFooterViewReuseIdentifier:v26];

  v27 = [(CARSettingsTablePanel *)self view];
  v28 = [(CARSettingsTablePanel *)self tableView];
  [v27 addSubview:v28];

  v29 = +[UIColor clearColor];
  v30 = [(CARSettingsTablePanel *)self view];
  [v30 setBackgroundColor:v29];

  v31 = +[UIColor clearColor];
  v32 = [(CARSettingsTablePanel *)self tableView];
  [v32 setBackgroundColor:v31];

  v53 = [(CARSettingsTablePanel *)self tableView];
  v51 = [v53 topAnchor];
  v52 = [(CARSettingsTablePanel *)self view];
  v50 = [v52 topAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v55[0] = v49;
  v48 = [(CARSettingsTablePanel *)self tableView];
  v46 = [v48 leftAnchor];
  v47 = [(CARSettingsTablePanel *)self view];
  v45 = [v47 leftAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v55[1] = v44;
  v43 = [(CARSettingsTablePanel *)self tableView];
  v33 = [v43 rightAnchor];
  v34 = [(CARSettingsTablePanel *)self view];
  v35 = [v34 rightAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v55[2] = v36;
  v37 = [(CARSettingsTablePanel *)self tableView];
  v38 = [v37 bottomAnchor];
  v39 = [(CARSettingsTablePanel *)self view];
  v40 = [v39 bottomAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  v55[3] = v41;
  v42 = [NSArray arrayWithObjects:v55 count:4];
  [NSLayoutConstraint activateConstraints:v42];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = [(CARSettingsTablePanel *)self tableView];
  v6 = [v4 indexPathForSelectedRow];

  if (v6)
  {
    v5 = [(CARSettingsTablePanel *)self tableView];
    [v5 deselectRowAtIndexPath:v6 animated:0];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8 = a3;
  v4 = [v8 previouslyFocusedItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v8;
  if (isKindOfClass)
  {
    v7 = [v8 previouslyFocusedItem];
    if ([v7 isSelected])
    {
      [v7 setSelected:0 animated:0];
    }

    if ([v7 isHighlighted])
    {
      [v7 setHighlighted:0 animated:0];
    }

    v6 = v8;
  }
}

- (id)preferredFocusEnvironments
{
  v3 = [(CARSettingsTablePanel *)self tableSource];
  v4 = [(CARSettingsTablePanel *)self tableView];
  v5 = [v3 preferredFocusEnvironmentsForTableView:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CARSettingsTablePanel;
    v6 = [(CARSettingsTablePanel *)&v9 preferredFocusEnvironments];
  }

  v7 = v6;

  return v7;
}

- (void)reloadSpecifiers
{
  v3 = [(CARSettingsTablePanel *)self cellSpecifiers];
  v4 = [(CARSettingsTablePanel *)self specifierSections];
  if ([v3 count] || (-[CARSettingsTablePanel tableSource](self, "tableSource"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "specifiers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7))
  {
    v8 = [(CARSettingsTablePanel *)self cellSpecifiers];
    v9 = [(CARSettingsTablePanel *)self tableSource];
    [v9 setSpecifiers:v8];

    v10 = [(CARSettingsTablePanel *)self tableView];
    [v10 reloadData];

    goto LABEL_4;
  }

  if ([v4 count])
  {
    v11 = [(CARSettingsTablePanel *)self tableSource];
    v12 = [v11 specifierSections];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [(CARSettingsTablePanel *)self tableSource];
      v15 = [v14 specifierSections];

      v16 = [(CARSettingsTablePanel *)self tableSource];
      [v16 setSpecifierSections:v4];

      v17 = +[NSMutableIndexSet indexSet];
      v50 = +[NSMutableIndexSet indexSet];
      v49 = +[NSMutableIndexSet indexSet];
      v52 = +[NSMutableIndexSet indexSet];
      v53 = +[NSMutableIndexSet indexSet];
      v18 = [v15 count];
      v48 = v4;
      v19 = [v4 count];
      if (v18 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        v21 = 0;
        v54 = 1;
        v51 = v17;
        while (1)
        {
          if ([v15 count] <= v21)
          {
            v22 = 0;
          }

          else
          {
            v22 = [v15 objectAtIndexedSubscript:v21];
          }

          v23 = [(CARSettingsTablePanel *)self tableSource];
          v24 = [v23 specifierSections];
          v25 = [v24 count];

          if (v25 <= v21)
          {
            v30 = 0;
            v28 = 0;
            v29 = v22 == 0;
          }

          else
          {
            v26 = [(CARSettingsTablePanel *)self tableSource];
            v27 = [v26 specifierSections];
            v28 = [v27 objectAtIndexedSubscript:v21];

            v29 = v22 == 0;
            v30 = v28 != 0;
            if (!v22 && v28)
            {
              v31 = v52;
LABEL_31:
              [v31 addIndex:v21];
              v54 = 0;
              goto LABEL_32;
            }
          }

          if (!v29 && !v30)
          {
            v31 = v53;
            goto LABEL_31;
          }

          if (([v22 isEqualToSpecifierSection:v28] & 1) == 0)
          {
            v32 = [v22 specifiers];
            v33 = [v32 count];
            v34 = [v28 specifiers];
            if (v33 == [v34 count])
            {
              v35 = [v22 hasEqualSpecifiers:v28];

              if (v35)
              {
                if ([v22 hasEqualHeader:v28])
                {
                  if (([v22 hasEqualFooter:v28] & 1) == 0)
                  {
                    [v49 addIndex:v21];
                    v36 = [(CARSettingsTablePanel *)self tableSource];
                    v37 = [v36 specifierSections];
                    v38 = v21 == [v37 count] - 1;

                    v54 &= v38;
                  }
                }

                else
                {
                  [v50 addIndex:v21];
                  v54 = 0;
                }

                v17 = v51;
                goto LABEL_32;
              }
            }

            else
            {
            }

            v17 = v51;
            v31 = v51;
            goto LABEL_31;
          }

LABEL_32:

          if (v20 == ++v21)
          {
            goto LABEL_37;
          }
        }
      }

      v54 = 1;
LABEL_37:
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_10001185C;
      v60[3] = &unk_1000DB0F0;
      v60[4] = self;
      [v50 enumerateIndexesUsingBlock:v60];
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100011920;
      v59[3] = &unk_1000DB0F0;
      v59[4] = self;
      [v49 enumerateIndexesUsingBlock:v59];
      if (v54)
      {
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1000119E4;
        v55[3] = &unk_1000DB118;
        v55[4] = self;
        v56 = v17;
        v39 = v52;
        v57 = v52;
        v40 = v53;
        v58 = v53;
        [UIView performWithoutAnimation:v55];
      }

      else
      {
        v41 = [(CARSettingsTablePanel *)self tableView];
        [v41 beginUpdates];

        v39 = v52;
        v40 = v53;
        [(CARSettingsTablePanel *)self _performBatchUpdatesForReloadIndexPaths:v17 insertIndexPaths:v52 removeIndexPaths:v53];
        v42 = [(CARSettingsTablePanel *)self tableView];
        [v42 endUpdates];
      }

      v4 = v48;
    }
  }

  v43 = [(CARSettingsTablePanel *)self tableSource];
  v44 = [v43 savedFocusedIndexPath];

  if (v44)
  {
    v45 = self;
    v46 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:v45];
    [v46 setAllowsDeferral:0];
    v47 = [UIFocusSystem focusSystemForEnvironment:v45];

    [v47 _requestFocusUpdate:v46];
  }

LABEL_4:
}

- (void)_performBatchUpdatesForReloadIndexPaths:(id)a3 insertIndexPaths:(id)a4 removeIndexPaths:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] || objc_msgSend(v9, "count") || objc_msgSend(v10, "count"))
  {
    v11 = [(CARSettingsTablePanel *)self tableView];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100011B78;
    v12[3] = &unk_1000DB118;
    v13 = v10;
    v14 = self;
    v15 = v9;
    v16 = v8;
    [v11 performBatchUpdates:v12 completion:0];
  }
}

@end