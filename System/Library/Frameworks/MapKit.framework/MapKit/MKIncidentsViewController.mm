@interface MKIncidentsViewController
- (IncidentsViewControllerDelegate)delegate;
- (MKIncidentsViewController)init;
- (MKIncidentsViewController)initWithTransitIncidents:(id)a3;
- (id)_advisoriesInfoCellForIndex:(int64_t)a3;
- (id)_advisoryItemCellForIndex:(int64_t)a3;
- (id)_cellForRow:(int64_t)a3 inSection:(int64_t)a4;
- (id)_transitCellForIndex:(int64_t)a3 inSection:(int64_t)a4;
- (id)detailCellInSection:(int64_t)a3;
- (id)extendedDetailCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_numberOfRowsInSection:(int64_t)a3;
- (int64_t)_sectionForSectionIndex:(int64_t)a3;
- (int64_t)_transitIncidentIndexForRow:(int64_t)a3 section:(int64_t)a4;
- (unint64_t)_incidentsCount;
- (void)_compileSections;
- (void)_localeDidChange;
- (void)_updateTitle;
- (void)cellDidTapDownloadForLocation:(id)a3;
- (void)dealloc;
- (void)infoCardThemeChanged;
- (void)reloadDataSource;
- (void)setAdvisoriesInfo:(id)a3;
- (void)setAdvisory:(id)a3;
- (void)setTransitIncidents:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MKIncidentsViewController

- (IncidentsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  v7 = [v5 section];

  return [(MKIncidentsViewController *)self _cellForRow:v6 inSection:v7];
}

- (int64_t)_numberOfRowsInSection:(int64_t)a3
{
  v4 = [(MKIncidentsViewController *)self _sectionForSectionIndex:a3];
  if (v4 == 1)
  {
    v7 = [(MKIncidentsViewController *)self advisoriesInfo];

    if (v7)
    {
      v8 = [(MKIncidentsViewController *)self advisoriesInfo];
      v9 = [v8 genericAdvisorys];
      v5 = [v9 firstObject];

      if (!v5)
      {
        v6 = 0;
        goto LABEL_11;
      }

      v10 = v5;
    }

    else
    {
      v10 = [(MKIncidentsViewController *)self advisory];
      v5 = v10;
    }

    v11 = [v10 advisoryItems];
    v6 = [v11 count];

LABEL_11:
    return v6;
  }

  if (!v4)
  {
    v5 = [(MKIncidentsViewController *)self transitIncidents];
    v6 = [v5 count];
    goto LABEL_11;
  }

  return 0;
}

- (id)extendedDetailCell
{
  v2 = [(MKIncidentsViewController *)self tableView];
  v3 = [v2 _mapkit_dequeueReusableCellWithIdentifier:@"kIncidentExtendedDetailCellIdentifier"];

  if (!v3)
  {
    v3 = [[MKIncidentExtendedDetailCell alloc] initWithReuseIdentifier:@"kIncidentExtendedDetailCellIdentifier"];
  }

  return v3;
}

- (id)detailCellInSection:(int64_t)a3
{
  v3 = [(MKIncidentsViewController *)self tableView];
  v4 = [v3 _mapkit_dequeueReusableCellWithIdentifier:@"kIncidentDetailCellIdentifier"];

  if (!v4)
  {
    v4 = [[MKIncidentDetailCell alloc] initWithReuseIdentifier:@"kIncidentDetailCellIdentifier"];
  }

  return v4;
}

- (int64_t)_sectionForSectionIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_sections objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)_compileSections
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(MKIncidentsViewController *)self transitIncidents];
  v4 = [v3 count];

  if (v4)
  {
    [v11 addObject:&unk_1F1611410];
  }

  v5 = [(MKIncidentsViewController *)self advisory];
  v6 = [v5 advisoryItems];
  if ([v6 count])
  {
  }

  else
  {
    v7 = [(MKIncidentsViewController *)self advisoriesInfo];

    v8 = v11;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  [v11 addObject:&unk_1F1611428];
  v8 = v11;
LABEL_7:
  v9 = [v8 copy];
  sections = self->_sections;
  self->_sections = v9;
}

- (int64_t)_transitIncidentIndexForRow:(int64_t)a3 section:(int64_t)a4
{
  if (a3 < 0)
  {
    return -1;
  }

  if ([(MKIncidentsViewController *)self _transitIncidentsCount]<= a3)
  {
    return -1;
  }

  return a3;
}

- (unint64_t)_incidentsCount
{
  if ([(NSArray *)self->_transitIncidents count])
  {
    transitIncidents = self->_transitIncidents;

    return [(NSArray *)transitIncidents count];
  }

  else
  {
    v5 = [(MKIncidentsViewController *)self advisoriesInfo];
    v6 = [v5 genericAdvisorys];

    if (v6)
    {
      v7 = [(MKIncidentsViewController *)self advisoriesInfo];
      v8 = [v7 genericAdvisorys];
      v9 = [v8 firstObject];

      if (v9)
      {
        v10 = [v9 advisoryItems];
        v11 = [v10 count];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v9 = [(GEOComposedRouteAdvisory *)self->_advisory advisoryItems];
      v11 = [v9 count];
    }

    return v11;
  }
}

- (void)cellDidTapDownloadForLocation:(id)a3
{
  v4 = a3;
  v5 = [(MKIncidentsViewController *)self delegate];
  [v5 didTapDownloadForLocation:v4];
}

- (id)_advisoriesInfoCellForIndex:(int64_t)a3
{
  v5 = [(GEOAdvisoriesInfo *)self->_advisoriesInfo genericAdvisorys];
  v6 = [v5 firstObject];

  v7 = [v6 advisoryItems];
  v8 = [v7 objectAtIndexedSubscript:a3];

  v9 = [(MKIncidentsViewController *)self extendedDetailCell];
  [v9 setDelegate:self];
  v10 = [v6 noticeArtwork];
  [v9 configureWithAdvisories:v8 artwork:v10];

  return v9;
}

- (id)_advisoryItemCellForIndex:(int64_t)a3
{
  v5 = [(GEOComposedRouteAdvisory *)self->_advisory advisoryItems];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(MKIncidentsViewController *)self extendedDetailCell];
  [v7 setDelegate:self];
  [v7 configureWithAdvisoryItem:v6];

  return v7;
}

- (id)_transitCellForIndex:(int64_t)a3 inSection:(int64_t)a4
{
  v6 = [(MKIncidentsViewController *)self extendedDetailCell:a3];
  v7 = [(NSArray *)self->_transitIncidents objectAtIndexedSubscript:a3];
  v8 = [v7 title];
  v9 = [v7 lastUpdated];
  v10 = [MKIncidentDetailCell lastUpdateDisplayString:v9];
  v11 = [v7 fullDescription];
  if (v7)
  {
    v12 = [v7 iconType];
    if (v12 > 2)
    {
      v23 = 0;
    }

    else
    {
      v13 = v12;
      v14 = off_1E76C9C80[v12];
      v15 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v15 scale];
      v17 = v16;

      v18 = [MEMORY[0x1E69DF430] sharedManager];
      *&v19 = v17;
      v20 = [v18 imageForName:v14 contentScale:8 sizeGroup:0 modifiers:v19];

      v21 = [v20 image];
      if (v21)
      {
        v22 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v21 scale:0 orientation:v17];

        if (v22)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v23 = off_1E76C9C98[v13];
    }

    v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Maps"];
    v22 = [MEMORY[0x1E69DCAB8] imageNamed:v23 inBundle:v24];
  }

  else
  {
    v22 = 0;
  }

LABEL_11:
  [v6 configureWithTitle:v8 subtitle:v10 body:v11 image:v22];

  return v6;
}

- (id)_cellForRow:(int64_t)a3 inSection:(int64_t)a4
{
  v7 = [(MKIncidentsViewController *)self _sectionForSectionIndex:a4];
  if (v7 == 1)
  {
    v9 = [(MKIncidentsViewController *)self advisoriesInfo];

    if (v9)
    {
      [(MKIncidentsViewController *)self _advisoriesInfoCellForIndex:a3];
    }

    else
    {
      [(MKIncidentsViewController *)self _advisoryItemCellForIndex:a3];
    }
    v8 = ;
  }

  else
  {
    if (v7)
    {
      v10 = [MKTableViewCell alloc];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [(MKTableViewCell *)v10 initWithStyle:0 reuseIdentifier:v12];

      goto LABEL_10;
    }

    v8 = [(MKIncidentsViewController *)self _transitCellForIndex:a3 inSection:a4];
  }

  v13 = v8;
LABEL_10:
  [(MKTableViewCell *)v13 set_mapkit_separatorStyleOverride:0];

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKIncidentsViewController;
  [(MKIncidentsViewController *)&v4 dealloc];
}

- (void)_localeDidChange
{
  v2 = [(MKIncidentsViewController *)self tableView];
  [v2 reloadData];
}

- (void)reloadDataSource
{
  [(MKIncidentsViewController *)self _updateTitle];
  [(MKIncidentsViewController *)self _compileSections];
  if ([(MKIncidentsViewController *)self isViewLoaded])
  {
    v3 = [(MKIncidentsViewController *)self tableView];
    [v3 reloadData];
  }
}

- (void)setAdvisory:(id)a3
{
  v4 = a3;
  advisory = self->_advisory;
  v12 = v4;
  v6 = advisory;
  if (v12 | v6)
  {
    v7 = [v12 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [v12 copy];
      v9 = self->_advisory;
      self->_advisory = v8;

      transitIncidents = self->_transitIncidents;
      self->_transitIncidents = 0;

      advisoriesInfo = self->_advisoriesInfo;
      self->_advisoriesInfo = 0;

      [(MKIncidentsViewController *)self reloadDataSource];
    }
  }
}

- (void)setAdvisoriesInfo:(id)a3
{
  v4 = a3;
  advisoriesInfo = self->_advisoriesInfo;
  v12 = v4;
  v6 = advisoriesInfo;
  if (v12 | v6)
  {
    v7 = [v12 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [v12 copy];
      v9 = self->_advisoriesInfo;
      self->_advisoriesInfo = v8;

      transitIncidents = self->_transitIncidents;
      self->_transitIncidents = 0;

      advisory = self->_advisory;
      self->_advisory = 0;

      [(MKIncidentsViewController *)self reloadDataSource];
    }
  }
}

- (void)setTransitIncidents:(id)a3
{
  if (self->_transitIncidents != a3)
  {
    v4 = [a3 copy];
    transitIncidents = self->_transitIncidents;
    self->_transitIncidents = v4;

    advisory = self->_advisory;
    self->_advisory = 0;

    advisoriesInfo = self->_advisoriesInfo;
    self->_advisoriesInfo = 0;

    [(MKIncidentsViewController *)self reloadDataSource];
  }
}

- (void)_updateTitle
{
  v3 = [(MKIncidentsViewController *)self advisoriesInfo];
  v4 = [v3 genericAdvisorys];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69A1CA8]);
    v7 = [v5 detailCardTitle];
    v8 = [v6 initWithGeoFormattedString:v7];

    v9 = v8;
LABEL_5:
    v11 = [v9 stringWithDefaultOptions];
    incidentsTitle = self->_incidentsTitle;
    self->_incidentsTitle = v11;

    goto LABEL_6;
  }

  v10 = [(GEOComposedRouteAdvisory *)self->_advisory detailCardTitle];

  if (v10)
  {
    v9 = [(GEOComposedRouteAdvisory *)self->_advisory detailCardTitle];
    v8 = v9;
    goto LABEL_5;
  }

LABEL_6:
  if ([(NSString *)self->_incidentsTitle length])
  {
    v13 = self->_incidentsTitle;
    v14 = [(MKIncidentsViewController *)self navigationItem];
    [v14 setTitle:v13];
  }

  else
  {
    v15 = _MKLocalizedStringFromThisBundle(@"Advisories_MapKit_Incidents");
    if ([(MKIncidentsViewController *)self _incidentsCount])
    {
      v21 = 0;
      v16 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%d" error:&v21, -[MKIncidentsViewController _incidentsCount](self, "_incidentsCount")];
      v17 = v21;
      v18 = self->_incidentsTitle;
      self->_incidentsTitle = v16;

      v19 = self->_incidentsTitle;
      v20 = [(MKIncidentsViewController *)self navigationItem];
      [v20 setTitle:v19];
    }
  }
}

- (void)infoCardThemeChanged
{
  v4.receiver = self;
  v4.super_class = MKIncidentsViewController;
  [(UIViewController *)&v4 infoCardThemeChanged];
  if ([(MKIncidentsViewController *)self isViewLoaded])
  {
    v3 = [(MKIncidentsViewController *)self tableView];
    [v3 reloadData];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MKIncidentsViewController;
  [(MKIncidentsViewController *)&v8 viewWillAppear:a3];
  if (_UISolariumEnabled() && !MapKitIdiomIsMacCatalyst())
  {
    v4 = [(MKIncidentsViewController *)self tableView];
    v5 = v4;
    v7 = -72.0;
    v6 = 0.0;
  }

  else
  {
    v4 = [(MKIncidentsViewController *)self tableView];
    v5 = v4;
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  [v4 setContentOffset:0 animated:{v6, v7}];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = MKIncidentsViewController;
  [(MKIncidentsViewController *)&v19 viewDidLoad];
  v3 = [(MKIncidentsViewController *)self view];
  [v3 setAccessibilityIdentifier:@"MKIncidentsView"];

  v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v5 = [(MKIncidentsViewController *)self tableView];
  [v5 setBackgroundColor:v4];

  v6 = [(MKIncidentsViewController *)self tableView];
  [v6 _setDrawsSeparatorAtTopOfSections:0];

  v7 = [(MKIncidentsViewController *)self tableView];
  [v7 _setTopPadding:0.0];

  v8 = [(MKIncidentsViewController *)self tableView];
  [v8 _setBottomPadding:0.0];

  v9 = [(MKIncidentsViewController *)self tableView];
  [v9 setSectionHeaderHeight:0.0];

  v10 = [(MKIncidentsViewController *)self tableView];
  [v10 setSectionFooterHeight:0.0];

  v11 = [(MKIncidentsViewController *)self tableView];
  [v11 setSeparatorInset:{0.0, 16.0, 0.0, 0.0}];

  v12 = [(MKIncidentsViewController *)self tableView];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v12 registerClass:v13 forHeaderFooterViewReuseIdentifier:v15];

  v16 = [(MKIncidentsViewController *)self view];
  [v16 setPreservesSuperviewLayoutMargins:1];

  v17 = [(MKIncidentsViewController *)self tableView];
  [v17 reloadData];

  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  [v18 addObserver:self selector:sel__localeDidChange name:*MEMORY[0x1E695D8F0] object:0];
}

- (MKIncidentsViewController)initWithTransitIncidents:(id)a3
{
  v5 = a3;
  v6 = [(MKIncidentsViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitIncidents, a3);
    [(MKIncidentsViewController *)v7 reloadDataSource];
  }

  return v7;
}

- (MKIncidentsViewController)init
{
  v3.receiver = self;
  v3.super_class = MKIncidentsViewController;
  return [(MKIncidentsViewController *)&v3 initWithStyle:1];
}

@end