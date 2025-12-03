@interface HomePodVoiceSelectionOptionsView
- (CGSize)sizeThatFits:(CGSize)fits;
- (HomePodVoiceSelectionOptionsView)init;
- (SUICVoiceSelectionEventHandling)voiceSelectionEventHandler;
- (SUICVoiceSelectionViewModelProviding)voiceSelectionViewModelProvider;
- (id)_diffableTableDataSource;
- (id)_tableCellForVoiceViewModel:(id)model indexPath:(id)path;
- (void)_createAndApplySnapshotForViewModel:(id)model;
- (void)_setupVoicesTableView;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)voiceSelectionViewModelDidChange;
@end

@implementation HomePodVoiceSelectionOptionsView

- (HomePodVoiceSelectionOptionsView)init
{
  v5.receiver = self;
  v5.super_class = HomePodVoiceSelectionOptionsView;
  v2 = [(HomePodVoiceSelectionOptionsView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HomePodVoiceSelectionOptionsView *)v2 _setupVoicesTableView];
  }

  return v3;
}

- (void)_setupVoicesTableView
{
  v3 = [[UITableView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  voicesTableView = self->_voicesTableView;
  self->_voicesTableView = v3;

  _diffableTableDataSource = [(HomePodVoiceSelectionOptionsView *)self _diffableTableDataSource];
  tableViewDataSource = self->_tableViewDataSource;
  self->_tableViewDataSource = _diffableTableDataSource;

  [(UITableViewDiffableDataSource *)self->_tableViewDataSource setDefaultRowAnimation:0];
  [(UITableView *)self->_voicesTableView setDelegate:self];
  [(UITableView *)self->_voicesTableView setDataSource:self->_tableViewDataSource];
  [(UITableView *)self->_voicesTableView setShowsHorizontalScrollIndicator:0];
  [(UITableView *)self->_voicesTableView setShowsVerticalScrollIndicator:0];
  v7 = +[UIColor systemBackgroundColor];
  [(UITableView *)self->_voicesTableView setBackgroundColor:v7];

  layer = [(UITableView *)self->_voicesTableView layer];
  [layer setCornerRadius:8.0];

  [(UITableView *)self->_voicesTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"VoiceCell"];
  [(HomePodVoiceSelectionOptionsView *)self addSubview:self->_voicesTableView];
  [(UITableView *)self->_voicesTableView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UITableView *)self->_voicesTableView topAnchor];
  topAnchor2 = [(HomePodVoiceSelectionOptionsView *)self topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[0] = v19;
  leftAnchor = [(UITableView *)self->_voicesTableView leftAnchor];
  leftAnchor2 = [(HomePodVoiceSelectionOptionsView *)self leftAnchor];
  v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v22[1] = v11;
  rightAnchor = [(UITableView *)self->_voicesTableView rightAnchor];
  rightAnchor2 = [(HomePodVoiceSelectionOptionsView *)self rightAnchor];
  v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v22[2] = v14;
  bottomAnchor = [(UITableView *)self->_voicesTableView bottomAnchor];
  bottomAnchor2 = [(HomePodVoiceSelectionOptionsView *)self bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[3] = v17;
  v18 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

- (id)_diffableTableDataSource
{
  objc_initWeak(&location, self);
  v3 = [UITableViewDiffableDataSource alloc];
  voicesTableView = self->_voicesTableView;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003F90;
  v7[3] = &unk_1000EDAF8;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v5 = [v3 initWithTableView:voicesTableView cellProvider:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_tableCellForVoiceViewModel:(id)model indexPath:(id)path
{
  voicesTableView = self->_voicesTableView;
  modelCopy = model;
  v8 = [(UITableView *)voicesTableView dequeueReusableCellWithIdentifier:@"VoiceCell" forIndexPath:path];
  associatedCGColor = [modelCopy associatedCGColor];
  v10 = [UIColor colorWithCGColor:associatedCGColor];
  CGColorRelease(associatedCGColor);
  v11 = +[UIListContentConfiguration cellConfiguration];
  localizedDisplayName = [modelCopy localizedDisplayName];
  [v11 setText:localizedDisplayName];

  imageProperties = [v11 imageProperties];
  [imageProperties setTintColor:v10];

  [v8 setContentConfiguration:v11];
  v14 = +[UIColor secondarySystemBackgroundColor];
  [v8 setBackgroundColor:v14];

  LODWORD(v14) = [modelCopy isCurrentSiriVoice];
  if (v14)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v8 setAccessoryType:v15];
  [v8 setSemanticContentAttribute:{-[UITableView semanticContentAttribute](self->_voicesTableView, "semanticContentAttribute")}];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  voiceSelectionEventHandler = [(HomePodVoiceSelectionOptionsView *)self voiceSelectionEventHandler];
  voices = [(SUICVoiceSelectionViewModel *)self->_viewModel voices];
  v7 = [pathCopy row];

  v8 = [voices objectAtIndexedSubscript:v7];
  [voiceSelectionEventHandler voiceSelectionView:self receivedRequestToSelectVoice:v8];
}

- (void)voiceSelectionViewModelDidChange
{
  voiceSelectionViewModelProvider = [(HomePodVoiceSelectionOptionsView *)self voiceSelectionViewModelProvider];
  voiceSelectionViewModel = [voiceSelectionViewModelProvider voiceSelectionViewModel];
  viewModel = self->_viewModel;
  self->_viewModel = voiceSelectionViewModel;

  v6 = self->_viewModel;

  [(HomePodVoiceSelectionOptionsView *)self _createAndApplySnapshotForViewModel:v6];
}

- (void)_createAndApplySnapshotForViewModel:(id)model
{
  selfCopy = self;
  modelCopy = model;
  v4 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v25 = @"Voice";
  v5 = [NSArray arrayWithObjects:&v25 count:1];
  [v4 appendSectionsWithIdentifiers:v5];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = modelCopy;
  voices = [modelCopy voices];
  v7 = [voices countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(voices);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        localizedDisplayName = [v11 localizedDisplayName];
        v23 = localizedDisplayName;
        v13 = [NSArray arrayWithObjects:&v23 count:1];
        [v4 appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:@"Voice"];

        localizedDisplayName2 = [v11 localizedDisplayName];
        v22 = localizedDisplayName2;
        v15 = [NSArray arrayWithObjects:&v22 count:1];
        [v4 reloadItemsWithIdentifiers:v15];
      }

      v8 = [voices countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  [(UITableViewDiffableDataSource *)selfCopy->_tableViewDataSource applySnapshot:v4 animatingDifferences:1];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = HomePodVoiceSelectionOptionsView;
  [(HomePodVoiceSelectionOptionsView *)&v5 setSemanticContentAttribute:?];
  [(UITableView *)self->_voicesTableView setSemanticContentAttribute:attribute];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = [(SUICVoiceSelectionViewModel *)self->_viewModel voices:fits.width];
  v5 = ([v4 count] * 45.0);

  v6 = width;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (SUICVoiceSelectionViewModelProviding)voiceSelectionViewModelProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceSelectionViewModelProvider);

  return WeakRetained;
}

- (SUICVoiceSelectionEventHandling)voiceSelectionEventHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceSelectionEventHandler);

  return WeakRetained;
}

@end