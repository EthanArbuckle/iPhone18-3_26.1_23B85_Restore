@interface MKIncidentsViewController
- (IncidentsViewControllerDelegate)delegate;
- (MKIncidentsViewController)init;
- (MKIncidentsViewController)initWithTransitIncidents:(id)incidents;
- (id)_advisoriesInfoCellForIndex:(int64_t)index;
- (id)_advisoryItemCellForIndex:(int64_t)index;
- (id)_cellForRow:(int64_t)row inSection:(int64_t)section;
- (id)_transitCellForIndex:(int64_t)index inSection:(int64_t)section;
- (id)detailCellInSection:(int64_t)section;
- (id)extendedDetailCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_numberOfRowsInSection:(int64_t)section;
- (int64_t)_sectionForSectionIndex:(int64_t)index;
- (int64_t)_transitIncidentIndexForRow:(int64_t)row section:(int64_t)section;
- (unint64_t)_incidentsCount;
- (void)_compileSections;
- (void)_localeDidChange;
- (void)_updateTitle;
- (void)cellDidTapDownloadForLocation:(id)location;
- (void)dealloc;
- (void)infoCardThemeChanged;
- (void)reloadDataSource;
- (void)setAdvisoriesInfo:(id)info;
- (void)setAdvisory:(id)advisory;
- (void)setTransitIncidents:(id)incidents;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MKIncidentsViewController

- (IncidentsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  section = [pathCopy section];

  return [(MKIncidentsViewController *)self _cellForRow:v6 inSection:section];
}

- (int64_t)_numberOfRowsInSection:(int64_t)section
{
  v4 = [(MKIncidentsViewController *)self _sectionForSectionIndex:section];
  if (v4 == 1)
  {
    advisoriesInfo = [(MKIncidentsViewController *)self advisoriesInfo];

    if (advisoriesInfo)
    {
      advisoriesInfo2 = [(MKIncidentsViewController *)self advisoriesInfo];
      genericAdvisorys = [advisoriesInfo2 genericAdvisorys];
      firstObject = [genericAdvisorys firstObject];

      if (!firstObject)
      {
        v6 = 0;
        goto LABEL_11;
      }

      advisory = firstObject;
    }

    else
    {
      advisory = [(MKIncidentsViewController *)self advisory];
      firstObject = advisory;
    }

    advisoryItems = [advisory advisoryItems];
    v6 = [advisoryItems count];

LABEL_11:
    return v6;
  }

  if (!v4)
  {
    firstObject = [(MKIncidentsViewController *)self transitIncidents];
    v6 = [firstObject count];
    goto LABEL_11;
  }

  return 0;
}

- (id)extendedDetailCell
{
  tableView = [(MKIncidentsViewController *)self tableView];
  v3 = [tableView _mapkit_dequeueReusableCellWithIdentifier:@"kIncidentExtendedDetailCellIdentifier"];

  if (!v3)
  {
    v3 = [[MKIncidentExtendedDetailCell alloc] initWithReuseIdentifier:@"kIncidentExtendedDetailCellIdentifier"];
  }

  return v3;
}

- (id)detailCellInSection:(int64_t)section
{
  tableView = [(MKIncidentsViewController *)self tableView];
  v4 = [tableView _mapkit_dequeueReusableCellWithIdentifier:@"kIncidentDetailCellIdentifier"];

  if (!v4)
  {
    v4 = [[MKIncidentDetailCell alloc] initWithReuseIdentifier:@"kIncidentDetailCellIdentifier"];
  }

  return v4;
}

- (int64_t)_sectionForSectionIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_sections objectAtIndexedSubscript:index];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)_compileSections
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  transitIncidents = [(MKIncidentsViewController *)self transitIncidents];
  v4 = [transitIncidents count];

  if (v4)
  {
    [v11 addObject:&unk_1F1611410];
  }

  advisory = [(MKIncidentsViewController *)self advisory];
  advisoryItems = [advisory advisoryItems];
  if ([advisoryItems count])
  {
  }

  else
  {
    advisoriesInfo = [(MKIncidentsViewController *)self advisoriesInfo];

    v8 = v11;
    if (!advisoriesInfo)
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

- (int64_t)_transitIncidentIndexForRow:(int64_t)row section:(int64_t)section
{
  if (row < 0)
  {
    return -1;
  }

  if ([(MKIncidentsViewController *)self _transitIncidentsCount]<= row)
  {
    return -1;
  }

  return row;
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
    advisoriesInfo = [(MKIncidentsViewController *)self advisoriesInfo];
    genericAdvisorys = [advisoriesInfo genericAdvisorys];

    if (genericAdvisorys)
    {
      advisoriesInfo2 = [(MKIncidentsViewController *)self advisoriesInfo];
      genericAdvisorys2 = [advisoriesInfo2 genericAdvisorys];
      firstObject = [genericAdvisorys2 firstObject];

      if (firstObject)
      {
        advisoryItems = [firstObject advisoryItems];
        v11 = [advisoryItems count];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      firstObject = [(GEOComposedRouteAdvisory *)self->_advisory advisoryItems];
      v11 = [firstObject count];
    }

    return v11;
  }
}

- (void)cellDidTapDownloadForLocation:(id)location
{
  locationCopy = location;
  delegate = [(MKIncidentsViewController *)self delegate];
  [delegate didTapDownloadForLocation:locationCopy];
}

- (id)_advisoriesInfoCellForIndex:(int64_t)index
{
  genericAdvisorys = [(GEOAdvisoriesInfo *)self->_advisoriesInfo genericAdvisorys];
  firstObject = [genericAdvisorys firstObject];

  advisoryItems = [firstObject advisoryItems];
  v8 = [advisoryItems objectAtIndexedSubscript:index];

  extendedDetailCell = [(MKIncidentsViewController *)self extendedDetailCell];
  [extendedDetailCell setDelegate:self];
  noticeArtwork = [firstObject noticeArtwork];
  [extendedDetailCell configureWithAdvisories:v8 artwork:noticeArtwork];

  return extendedDetailCell;
}

- (id)_advisoryItemCellForIndex:(int64_t)index
{
  advisoryItems = [(GEOComposedRouteAdvisory *)self->_advisory advisoryItems];
  v6 = [advisoryItems objectAtIndexedSubscript:index];

  extendedDetailCell = [(MKIncidentsViewController *)self extendedDetailCell];
  [extendedDetailCell setDelegate:self];
  [extendedDetailCell configureWithAdvisoryItem:v6];

  return extendedDetailCell;
}

- (id)_transitCellForIndex:(int64_t)index inSection:(int64_t)section
{
  v6 = [(MKIncidentsViewController *)self extendedDetailCell:index];
  v7 = [(NSArray *)self->_transitIncidents objectAtIndexedSubscript:index];
  title = [v7 title];
  lastUpdated = [v7 lastUpdated];
  v10 = [MKIncidentDetailCell lastUpdateDisplayString:lastUpdated];
  fullDescription = [v7 fullDescription];
  if (v7)
  {
    iconType = [v7 iconType];
    if (iconType > 2)
    {
      v23 = 0;
    }

    else
    {
      v13 = iconType;
      v14 = off_1E76C9C80[iconType];
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v17 = v16;

      mEMORY[0x1E69DF430] = [MEMORY[0x1E69DF430] sharedManager];
      *&v19 = v17;
      v20 = [mEMORY[0x1E69DF430] imageForName:v14 contentScale:8 sizeGroup:0 modifiers:v19];

      image = [v20 image];
      if (image)
      {
        v22 = [MEMORY[0x1E69DCAB8] imageWithCGImage:image scale:0 orientation:v17];

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
  [v6 configureWithTitle:title subtitle:v10 body:fullDescription image:v22];

  return v6;
}

- (id)_cellForRow:(int64_t)row inSection:(int64_t)section
{
  v7 = [(MKIncidentsViewController *)self _sectionForSectionIndex:section];
  if (v7 == 1)
  {
    advisoriesInfo = [(MKIncidentsViewController *)self advisoriesInfo];

    if (advisoriesInfo)
    {
      [(MKIncidentsViewController *)self _advisoriesInfoCellForIndex:row];
    }

    else
    {
      [(MKIncidentsViewController *)self _advisoryItemCellForIndex:row];
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

    v8 = [(MKIncidentsViewController *)self _transitCellForIndex:row inSection:section];
  }

  v13 = v8;
LABEL_10:
  [(MKTableViewCell *)v13 set_mapkit_separatorStyleOverride:0];

  return v13;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKIncidentsViewController;
  [(MKIncidentsViewController *)&v4 dealloc];
}

- (void)_localeDidChange
{
  tableView = [(MKIncidentsViewController *)self tableView];
  [tableView reloadData];
}

- (void)reloadDataSource
{
  [(MKIncidentsViewController *)self _updateTitle];
  [(MKIncidentsViewController *)self _compileSections];
  if ([(MKIncidentsViewController *)self isViewLoaded])
  {
    tableView = [(MKIncidentsViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)setAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  advisory = self->_advisory;
  v12 = advisoryCopy;
  advisoryCopy2 = advisory;
  if (v12 | advisoryCopy2)
  {
    v7 = [v12 isEqual:advisoryCopy2];

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

- (void)setAdvisoriesInfo:(id)info
{
  infoCopy = info;
  advisoriesInfo = self->_advisoriesInfo;
  v12 = infoCopy;
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

- (void)setTransitIncidents:(id)incidents
{
  if (self->_transitIncidents != incidents)
  {
    v4 = [incidents copy];
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
  advisoriesInfo = [(MKIncidentsViewController *)self advisoriesInfo];
  genericAdvisorys = [advisoriesInfo genericAdvisorys];
  firstObject = [genericAdvisorys firstObject];

  if (firstObject)
  {
    v6 = objc_alloc(MEMORY[0x1E69A1CA8]);
    detailCardTitle = [firstObject detailCardTitle];
    v8 = [v6 initWithGeoFormattedString:detailCardTitle];

    detailCardTitle3 = v8;
LABEL_5:
    stringWithDefaultOptions = [detailCardTitle3 stringWithDefaultOptions];
    incidentsTitle = self->_incidentsTitle;
    self->_incidentsTitle = stringWithDefaultOptions;

    goto LABEL_6;
  }

  detailCardTitle2 = [(GEOComposedRouteAdvisory *)self->_advisory detailCardTitle];

  if (detailCardTitle2)
  {
    detailCardTitle3 = [(GEOComposedRouteAdvisory *)self->_advisory detailCardTitle];
    v8 = detailCardTitle3;
    goto LABEL_5;
  }

LABEL_6:
  if ([(NSString *)self->_incidentsTitle length])
  {
    v13 = self->_incidentsTitle;
    navigationItem = [(MKIncidentsViewController *)self navigationItem];
    [navigationItem setTitle:v13];
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
      navigationItem2 = [(MKIncidentsViewController *)self navigationItem];
      [navigationItem2 setTitle:v19];
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
    tableView = [(MKIncidentsViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = MKIncidentsViewController;
  [(MKIncidentsViewController *)&v8 viewWillAppear:appear];
  if (_UISolariumEnabled() && !MapKitIdiomIsMacCatalyst())
  {
    tableView = [(MKIncidentsViewController *)self tableView];
    v5 = tableView;
    v7 = -72.0;
    v6 = 0.0;
  }

  else
  {
    tableView = [(MKIncidentsViewController *)self tableView];
    v5 = tableView;
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  [tableView setContentOffset:0 animated:{v6, v7}];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = MKIncidentsViewController;
  [(MKIncidentsViewController *)&v19 viewDidLoad];
  view = [(MKIncidentsViewController *)self view];
  [view setAccessibilityIdentifier:@"MKIncidentsView"];

  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  tableView = [(MKIncidentsViewController *)self tableView];
  [tableView setBackgroundColor:secondarySystemBackgroundColor];

  tableView2 = [(MKIncidentsViewController *)self tableView];
  [tableView2 _setDrawsSeparatorAtTopOfSections:0];

  tableView3 = [(MKIncidentsViewController *)self tableView];
  [tableView3 _setTopPadding:0.0];

  tableView4 = [(MKIncidentsViewController *)self tableView];
  [tableView4 _setBottomPadding:0.0];

  tableView5 = [(MKIncidentsViewController *)self tableView];
  [tableView5 setSectionHeaderHeight:0.0];

  tableView6 = [(MKIncidentsViewController *)self tableView];
  [tableView6 setSectionFooterHeight:0.0];

  tableView7 = [(MKIncidentsViewController *)self tableView];
  [tableView7 setSeparatorInset:{0.0, 16.0, 0.0, 0.0}];

  tableView8 = [(MKIncidentsViewController *)self tableView];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [tableView8 registerClass:v13 forHeaderFooterViewReuseIdentifier:v15];

  view2 = [(MKIncidentsViewController *)self view];
  [view2 setPreservesSuperviewLayoutMargins:1];

  tableView9 = [(MKIncidentsViewController *)self tableView];
  [tableView9 reloadData];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__localeDidChange name:*MEMORY[0x1E695D8F0] object:0];
}

- (MKIncidentsViewController)initWithTransitIncidents:(id)incidents
{
  incidentsCopy = incidents;
  v6 = [(MKIncidentsViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitIncidents, incidents);
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