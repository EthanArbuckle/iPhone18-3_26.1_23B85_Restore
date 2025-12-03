@interface CARSettingsTablePanel
- (id)preferredFocusEnvironments;
- (void)_performBatchUpdatesForReloadIndexPaths:(id)paths insertIndexPaths:(id)indexPaths removeIndexPaths:(id)removeIndexPaths;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)reloadSpecifiers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CARSettingsTablePanel

- (void)viewDidLoad
{
  v54.receiver = self;
  v54.super_class = CARSettingsTablePanel;
  [(CARSettingsPanel *)&v54 viewDidLoad];
  v3 = [CARSettingsPanelTableSource alloc];
  cellSpecifiers = [(CARSettingsTablePanel *)self cellSpecifiers];
  specifierSections = [(CARSettingsTablePanel *)self specifierSections];
  v6 = [(CARSettingsPanelTableSource *)v3 initWithSpecifiers:cellSpecifiers specifierSections:specifierSections];
  [(CARSettingsTablePanel *)self setTableSource:v6];

  v7 = [[CARTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CARSettingsTablePanel *)self setTableView:v7];

  tableView = [(CARSettingsTablePanel *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableSource = [(CARSettingsTablePanel *)self tableSource];
  tableView2 = [(CARSettingsTablePanel *)self tableView];
  [tableView2 setDataSource:tableSource];

  tableSource2 = [(CARSettingsTablePanel *)self tableSource];
  tableView3 = [(CARSettingsTablePanel *)self tableView];
  [tableView3 setDelegate:tableSource2];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  tableView4 = [(CARSettingsTablePanel *)self tableView];
  [tableView4 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  tableView5 = [(CARSettingsTablePanel *)self tableView];
  [tableView5 _setHeaderAndFooterViewsFloat:0];

  tableView6 = [(CARSettingsTablePanel *)self tableView];
  v19 = objc_opt_class();
  v20 = +[_TtC15CarPlaySettings24CARSettingsTableViewCell reuseIdentifier];
  [tableView6 registerClass:v19 forCellReuseIdentifier:v20];

  tableView7 = [(CARSettingsTablePanel *)self tableView];
  v22 = objc_opt_class();
  v23 = +[CARSettingsTableFooterView identifier];
  [tableView7 registerClass:v22 forHeaderFooterViewReuseIdentifier:v23];

  tableView8 = [(CARSettingsTablePanel *)self tableView];
  v25 = objc_opt_class();
  v26 = +[CARSettingsTableHeaderView identifier];
  [tableView8 registerClass:v25 forHeaderFooterViewReuseIdentifier:v26];

  view = [(CARSettingsTablePanel *)self view];
  tableView9 = [(CARSettingsTablePanel *)self tableView];
  [view addSubview:tableView9];

  v29 = +[UIColor clearColor];
  view2 = [(CARSettingsTablePanel *)self view];
  [view2 setBackgroundColor:v29];

  v31 = +[UIColor clearColor];
  tableView10 = [(CARSettingsTablePanel *)self tableView];
  [tableView10 setBackgroundColor:v31];

  tableView11 = [(CARSettingsTablePanel *)self tableView];
  topAnchor = [tableView11 topAnchor];
  view3 = [(CARSettingsTablePanel *)self view];
  topAnchor2 = [view3 topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[0] = v49;
  tableView12 = [(CARSettingsTablePanel *)self tableView];
  leftAnchor = [tableView12 leftAnchor];
  view4 = [(CARSettingsTablePanel *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v44 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v55[1] = v44;
  tableView13 = [(CARSettingsTablePanel *)self tableView];
  rightAnchor = [tableView13 rightAnchor];
  view5 = [(CARSettingsTablePanel *)self view];
  rightAnchor2 = [view5 rightAnchor];
  v36 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v55[2] = v36;
  tableView14 = [(CARSettingsTablePanel *)self tableView];
  bottomAnchor = [tableView14 bottomAnchor];
  view6 = [(CARSettingsTablePanel *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v55[3] = v41;
  v42 = [NSArray arrayWithObjects:v55 count:4];
  [NSLayoutConstraint activateConstraints:v42];
}

- (void)viewWillAppear:(BOOL)appear
{
  tableView = [(CARSettingsTablePanel *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(CARSettingsTablePanel *)self tableView];
    [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = contextCopy;
  if (isKindOfClass)
  {
    previouslyFocusedItem2 = [contextCopy previouslyFocusedItem];
    if ([previouslyFocusedItem2 isSelected])
    {
      [previouslyFocusedItem2 setSelected:0 animated:0];
    }

    if ([previouslyFocusedItem2 isHighlighted])
    {
      [previouslyFocusedItem2 setHighlighted:0 animated:0];
    }

    v6 = contextCopy;
  }
}

- (id)preferredFocusEnvironments
{
  tableSource = [(CARSettingsTablePanel *)self tableSource];
  tableView = [(CARSettingsTablePanel *)self tableView];
  v5 = [tableSource preferredFocusEnvironmentsForTableView:tableView];

  if (v5)
  {
    preferredFocusEnvironments = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CARSettingsTablePanel;
    preferredFocusEnvironments = [(CARSettingsTablePanel *)&v9 preferredFocusEnvironments];
  }

  v7 = preferredFocusEnvironments;

  return v7;
}

- (void)reloadSpecifiers
{
  cellSpecifiers = [(CARSettingsTablePanel *)self cellSpecifiers];
  specifierSections = [(CARSettingsTablePanel *)self specifierSections];
  if ([cellSpecifiers count] || (-[CARSettingsTablePanel tableSource](self, "tableSource"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "specifiers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7))
  {
    cellSpecifiers2 = [(CARSettingsTablePanel *)self cellSpecifiers];
    tableSource = [(CARSettingsTablePanel *)self tableSource];
    [tableSource setSpecifiers:cellSpecifiers2];

    tableView = [(CARSettingsTablePanel *)self tableView];
    [tableView reloadData];

    goto LABEL_4;
  }

  if ([specifierSections count])
  {
    tableSource2 = [(CARSettingsTablePanel *)self tableSource];
    specifierSections2 = [tableSource2 specifierSections];
    v13 = [specifierSections2 count];

    if (v13)
    {
      tableSource3 = [(CARSettingsTablePanel *)self tableSource];
      specifierSections3 = [tableSource3 specifierSections];

      tableSource4 = [(CARSettingsTablePanel *)self tableSource];
      [tableSource4 setSpecifierSections:specifierSections];

      v17 = +[NSMutableIndexSet indexSet];
      v50 = +[NSMutableIndexSet indexSet];
      v49 = +[NSMutableIndexSet indexSet];
      v52 = +[NSMutableIndexSet indexSet];
      v53 = +[NSMutableIndexSet indexSet];
      v18 = [specifierSections3 count];
      v48 = specifierSections;
      v19 = [specifierSections count];
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
          if ([specifierSections3 count] <= v21)
          {
            v22 = 0;
          }

          else
          {
            v22 = [specifierSections3 objectAtIndexedSubscript:v21];
          }

          tableSource5 = [(CARSettingsTablePanel *)self tableSource];
          specifierSections4 = [tableSource5 specifierSections];
          v25 = [specifierSections4 count];

          if (v25 <= v21)
          {
            v30 = 0;
            v28 = 0;
            v29 = v22 == 0;
          }

          else
          {
            tableSource6 = [(CARSettingsTablePanel *)self tableSource];
            specifierSections5 = [tableSource6 specifierSections];
            v28 = [specifierSections5 objectAtIndexedSubscript:v21];

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
            specifiers = [v22 specifiers];
            v33 = [specifiers count];
            specifiers2 = [v28 specifiers];
            if (v33 == [specifiers2 count])
            {
              v35 = [v22 hasEqualSpecifiers:v28];

              if (v35)
              {
                if ([v22 hasEqualHeader:v28])
                {
                  if (([v22 hasEqualFooter:v28] & 1) == 0)
                  {
                    [v49 addIndex:v21];
                    tableSource7 = [(CARSettingsTablePanel *)self tableSource];
                    specifierSections6 = [tableSource7 specifierSections];
                    v38 = v21 == [specifierSections6 count] - 1;

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
        tableView2 = [(CARSettingsTablePanel *)self tableView];
        [tableView2 beginUpdates];

        v39 = v52;
        v40 = v53;
        [(CARSettingsTablePanel *)self _performBatchUpdatesForReloadIndexPaths:v17 insertIndexPaths:v52 removeIndexPaths:v53];
        tableView3 = [(CARSettingsTablePanel *)self tableView];
        [tableView3 endUpdates];
      }

      specifierSections = v48;
    }
  }

  tableSource8 = [(CARSettingsTablePanel *)self tableSource];
  savedFocusedIndexPath = [tableSource8 savedFocusedIndexPath];

  if (savedFocusedIndexPath)
  {
    selfCopy = self;
    v46 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:selfCopy];
    [v46 setAllowsDeferral:0];
    v47 = [UIFocusSystem focusSystemForEnvironment:selfCopy];

    [v47 _requestFocusUpdate:v46];
  }

LABEL_4:
}

- (void)_performBatchUpdatesForReloadIndexPaths:(id)paths insertIndexPaths:(id)indexPaths removeIndexPaths:(id)removeIndexPaths
{
  pathsCopy = paths;
  indexPathsCopy = indexPaths;
  removeIndexPathsCopy = removeIndexPaths;
  if ([pathsCopy count] || objc_msgSend(indexPathsCopy, "count") || objc_msgSend(removeIndexPathsCopy, "count"))
  {
    tableView = [(CARSettingsTablePanel *)self tableView];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100011B78;
    v12[3] = &unk_1000DB118;
    v13 = removeIndexPathsCopy;
    selfCopy = self;
    v15 = indexPathsCopy;
    v16 = pathsCopy;
    [tableView performBatchUpdates:v12 completion:0];
  }
}

@end