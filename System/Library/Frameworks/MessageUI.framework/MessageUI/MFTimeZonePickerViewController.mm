@interface MFTimeZonePickerViewController
+ (OS_os_log)log;
- (MFTimeZonePickerViewController)initWithCity:(id)a3;
- (MFTimeZonePickerViewControllerDelegate)delegate;
- (id)createCollectionViewLayout;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation MFTimeZonePickerViewController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MFTimeZonePickerViewController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_14 != -1)
  {
    dispatch_once(&log_onceToken_14, block);
  }

  v2 = log_log_14;

  return v2;
}

void __37__MFTimeZonePickerViewController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_14;
  log_log_14 = v1;
}

- (MFTimeZonePickerViewController)initWithCity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFTimeZonePickerViewController;
  v6 = [(MFTimeZonePickerViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentCity, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v30[1] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = MFTimeZonePickerViewController;
  [(MFTimeZonePickerViewController *)&v28 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
  v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v5 = [(MFTimeZonePickerViewController *)self view];
  [v5 setBackgroundColor:v4];

  [v3 setSearchResultsUpdater:self];
  [v3 setObscuresBackgroundDuringPresentation:0];
  v6 = _EFLocalizedString();
  v7 = [v3 searchBar];
  [v7 setPlaceholder:v6];

  v8 = [(MFTimeZonePickerViewController *)self navigationItem];
  [v8 setSearchController:v3];
  v9 = _EFLocalizedString();
  [v8 setTitle:v9];

  [(MFTimeZonePickerViewController *)self setDefinesPresentationContext:1];
  v10 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v11 = [(MFTimeZonePickerViewController *)self createCollectionViewLayout];
  v12 = [v10 initWithFrame:v11 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_37];
  v14 = objc_alloc(MEMORY[0x1E69DC820]);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __45__MFTimeZonePickerViewController_viewDidLoad__block_invoke_2;
  v26 = &unk_1E80709C8;
  v15 = v13;
  v27 = v15;
  v16 = [v14 initWithCollectionView:v12 cellProvider:&v23];
  v17 = [(MFTimeZonePickerViewController *)self currentCity:v23];
  v30[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];

  [(MFTimeZonePickerViewController *)self setCurrentFilteredCities:v18];
  v19 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v29 = &unk_1F3D161B8;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  [v19 appendSectionsWithIdentifiers:v20];

  [v19 appendItemsWithIdentifiers:v18];
  [v16 applySnapshot:v19 animatingDifferences:0];
  [v12 setDataSource:v16];
  [v12 setDelegate:self];
  v21 = [(MFTimeZonePickerViewController *)self view];
  [v21 addSubview:v12];

  v22 = [(MFTimeZonePickerViewController *)self view];
  [v12 mf_pinToView:v22 usingLayoutMargins:0];

  [(MFTimeZonePickerViewController *)self setCollectionView:v12];
  [(MFTimeZonePickerViewController *)self setDataSource:v16];
}

void __45__MFTimeZonePickerViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = a4;
  v6 = [MEMORY[0x1E69DCC28] cellConfiguration];
  [v6 setText:v5];
  [v8 setContentConfiguration:v6];
  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v8 setBackgroundColor:v7];
}

id __45__MFTimeZonePickerViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = [a4 displayName];
  v11 = [v7 dequeueConfiguredReusableCellWithRegistration:v9 forIndexPath:v8 item:v10];

  return v11;
}

- (id)createCollectionViewLayout
{
  v2 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:0];
  v3 = objc_alloc(MEMORY[0x1E69DC808]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MFTimeZonePickerViewController_createCollectionViewLayout__block_invoke;
  v7[3] = &unk_1E806DD58;
  v4 = v2;
  v8 = v4;
  v5 = [v3 initWithSectionProvider:v7];

  return v5;
}

id __60__MFTimeZonePickerViewController_createCollectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [MEMORY[0x1E6995580] sectionWithListConfiguration:*(a1 + 32) layoutEnvironment:a3];

  return v3;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFTimeZonePickerViewController *)self dataSource];
  v6 = [v5 snapshot];
  v7 = [v6 itemIdentifiersInSectionWithIdentifier:&unk_1F3D161B8];
  [v6 deleteItemsWithIdentifiers:v7];
  v8 = [v4 searchBar];
  v9 = [v8 text];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [v4 searchBar];
    v12 = [v11 text];
    v13 = [MFTimezoneHelper citiesMatchingName:v12];
  }

  else
  {
    v14 = [(MFTimeZonePickerViewController *)self currentCity];
    v15[0] = v14;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  }

  [(MFTimeZonePickerViewController *)self setCurrentFilteredCities:v13];
  [v6 appendItemsWithIdentifiers:v13];
  [v5 applySnapshot:v6 animatingDifferences:1 completion:0];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MFTimeZonePickerViewController *)self currentFilteredCities];
  v7 = [v6 objectAtIndex:{objc_msgSend(v5, "item")}];

  v8 = [v7 timeZone];
  if (v8)
  {
    [(MFTimeZonePickerViewController *)self setCurrentCity:v7];
    v9 = [(MFTimeZonePickerViewController *)self delegate];
    [v9 timeZonePickerViewController:self didSelectCity:v7];
  }

  else
  {
    v10 = +[MFTimeZonePickerViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v7 displayName];
      [(MFTimeZonePickerViewController *)v11 collectionView:v14 didSelectItemAtIndexPath:v10];
    }
  }

  v12 = [(MFTimeZonePickerViewController *)self navigationController];
  v13 = [v12 popToRootViewControllerAnimated:1];
}

- (MFTimeZonePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(os_log_t)log didSelectItemAtIndexPath:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Time zone couldnt be created for time zone standard name: %{public}@", buf, 0xCu);
}

@end