@interface ParkedCarDetailsSectionController
- (ParkedCarDetailsSectionController)initWithParkedCar:(id)a3;
- (ParkedCarDetailsSectionControllerDelegate)detailsDelegate;
- (id)sectionHeaderViewModel;
- (void)_commonInit;
- (void)_scheduleTimestampUpdateTimerIfNecessary;
- (void)_updateTimestamp;
- (void)photoCarouselController:(id)a3 didSelectImageWithIdentifier:(id)a4;
- (void)photoCarouselController:(id)a3 requestsRemovingImageForIdentifier:(id)a4 completion:(id)a5;
- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)updateFromParkedCar;
@end

@implementation ParkedCarDetailsSectionController

- (ParkedCarDetailsSectionControllerDelegate)detailsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);

  return WeakRetained;
}

- (void)_updateTimestamp
{
  if (!self->_timestampFormatter)
  {
    v3 = objc_alloc_init(NSDateComponentsFormatter);
    timestampFormatter = self->_timestampFormatter;
    self->_timestampFormatter = v3;

    [(NSDateComponentsFormatter *)self->_timestampFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)self->_timestampFormatter setAllowedUnits:4220];
  }

  v5 = +[NSDate date];
  v6 = [(ParkedCarSectionController *)self parkedCar];
  v7 = [v6 date];
  [v5 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 >= 21600.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  [(NSDateComponentsFormatter *)self->_timestampFormatter setMaximumUnitCount:v10];
  v17 = objc_alloc_init(MULabeledValueActionViewModel);
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Parked Car Header" value:@"localized string not found" table:0];
  [v17 setTitleString:v12];

  v13 = +[NSBundle mainBundle];
  if (v9 <= 60.0)
  {
    v14 = [v13 localizedStringForKey:@"Just now [FindMyCar Place Card]" value:@"localized string not found" table:0];
    [v17 setValueString:v14];
  }

  else
  {
    v14 = [v13 localizedStringForKey:@"%@ ago [FindMyCar Place Card]" value:@"localized string not found" table:0];
    v15 = [(NSDateComponentsFormatter *)self->_timestampFormatter stringFromTimeInterval:v9];
    v16 = [NSString stringWithFormat:v14, v15];
    [v17 setValueString:v16];
  }

  [(MULabeledValueActionRowView *)self->_timestampRowView setViewModel:v17];
}

- (void)_scheduleTimestampUpdateTimerIfNecessary
{
  if ([(ParkedCarDetailsSectionController *)self isActive]&& !self->_timestampUpdateTimer)
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updateTimestamp" selector:0 userInfo:1 repeats:30.0];
    timestampUpdateTimer = self->_timestampUpdateTimer;
    self->_timestampUpdateTimer = v3;
  }
}

- (void)setActive:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ParkedCarDetailsSectionController;
  [(ParkedCarDetailsSectionController *)&v5 setActive:a3];
  if ([(ParkedCarDetailsSectionController *)self isActive])
  {
    [(ParkedCarDetailsSectionController *)self _scheduleTimestampUpdateTimerIfNecessary];
  }

  else
  {
    [(NSTimer *)self->_timestampUpdateTimer invalidate];
    timestampUpdateTimer = self->_timestampUpdateTimer;
    self->_timestampUpdateTimer = 0;
  }
}

- (void)photoCarouselController:(id)a3 didSelectImageWithIdentifier:(id)a4
{
  if ([a4 isEqualToString:@"ParkedCarImageIdentifier"])
  {
    v5 = [(ParkedCarDetailsSectionController *)self detailsDelegate];
    [v5 parkedCarDetailsSectionControllerDidTapViewPhoto:self];
  }
}

- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)a3
{
  v4 = [(ParkedCarDetailsSectionController *)self detailsDelegate];
  [v4 parkedCarDetailsSectionControllerDidTapAddPhotos:self];
}

- (void)photoCarouselController:(id)a3 requestsRemovingImageForIdentifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  v6 = [(ParkedCarDetailsSectionController *)self detailsDelegate];
  [v6 parkedCarDetailsSectionControllerDidRemovePhoto:self];

  v7[2](v7, 1);
}

- (void)updateFromParkedCar
{
  v3 = [(ParkedCarSectionController *)self parkedCar];

  if (v3)
  {
    [(ParkedCarDetailsSectionController *)self _updateTimestamp];
    [(ParkedCarDetailsSectionController *)self _scheduleTimestampUpdateTimerIfNecessary];
    v4 = [(ParkedCarSectionController *)self parkedCar];
    v5 = [v4 image];

    photoCarouselController = self->_photoCarouselController;
    if (v5)
    {
      v7 = [(ParkedCarSectionController *)self parkedCar];
      v8 = [v7 image];
      [(UGCPhotoCarouselController *)photoCarouselController addImage:v8 forIdentifier:@"ParkedCarImageIdentifier"];

      goto LABEL_7;
    }

    v9 = self->_photoCarouselController;
  }

  else
  {
    v9 = self->_photoCarouselController;
  }

  [(UGCPhotoCarouselController *)v9 removeImageForIdentifier:@"ParkedCarImageIdentifier"];
LABEL_7:
  if (([(MULabeledValueActionTextFieldRowView *)self->_notesRowView isEditing]& 1) == 0)
  {
    notesRowView = self->_notesRowView;
    v12 = [(ParkedCarSectionController *)self parkedCar];
    v11 = [v12 notes];
    [(MULabeledValueActionTextFieldRowView *)notesRowView setCurrentTextFieldValueIfNeeded:v11];
  }
}

- (id)sectionHeaderViewModel
{
  v2 = [MUPlaceSectionHeaderViewModel alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Details [Parked Car]" value:@"localized string not found" table:0];
  v5 = [v2 initWithTitleString:v4];

  return v5;
}

- (void)_commonInit
{
  v26 = objc_alloc_init(NSMutableArray);
  v3 = [MULabeledValueActionRowView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  timestampRowView = self->_timestampRowView;
  self->_timestampRowView = v7;

  [(ParkedCarDetailsSectionController *)self _updateTimestamp];
  [v26 addObject:self->_timestampRowView];
  v9 = [[MULabeledValueActionTextFieldRowView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  notesRowView = self->_notesRowView;
  self->_notesRowView = v9;

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Notes [Parked Car]" value:@"localized string not found" table:0];
  [(MULabeledValueActionTextFieldRowView *)self->_notesRowView setTitleText:v12];

  v13 = +[UIColor _mapsui_accentColor];
  [(MULabeledValueActionTextFieldRowView *)self->_notesRowView setPlaceholderColor:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Add Note [Parked Car]" value:@"localized string not found" table:0];
  [(MULabeledValueActionTextFieldRowView *)self->_notesRowView setPlaceholderText:v15];

  [v26 addObject:self->_notesRowView];
  if ([(ParkedCarDetailsSectionController *)self supportsAddingPhotos])
  {
    v16 = [[UGCPhotoCarouselController alloc] initWithDelegate:self maximumNumberOfPhotos:1];
    photoCarouselController = self->_photoCarouselController;
    self->_photoCarouselController = v16;

    v18 = [[MULabeledValueActionRowView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v19 = [[UGCPhotoCarouselCell alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(UGCPhotoCarouselCell *)v19 setSectionInset:16.0, kMUPlacePlatterPadding, 16.0, kMUPlacePlatterPadding];
    [(UGCPhotoCarouselCell *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UGCPhotoCarouselCell *)v19 setCarouselController:self->_photoCarouselController];
    [v18 addSubview:v19];
    v20 = [(UGCPhotoCarouselCell *)v19 _maps_constraintsForCenteringInView:v18];
    [NSLayoutConstraint activateConstraints:v20];

    [v26 addObject:v18];
  }

  v21 = [[MUPlaceVerticalCardContainerView alloc] initWithShowsSeparators:1];
  v22 = [v26 copy];
  [v21 setRowViews:v22];

  v23 = [(ParkedCarDetailsSectionController *)self sectionHeaderViewModel];
  v24 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v21 sectionHeaderViewModel:v23 sectionFooterViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v24;
}

- (ParkedCarDetailsSectionController)initWithParkedCar:(id)a3
{
  v6.receiver = self;
  v6.super_class = ParkedCarDetailsSectionController;
  v3 = [(ParkedCarSectionController *)&v6 initWithParkedCar:a3];
  v4 = v3;
  if (v3)
  {
    [(ParkedCarDetailsSectionController *)v3 _commonInit];
  }

  return v4;
}

@end