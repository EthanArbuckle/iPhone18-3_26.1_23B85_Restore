@interface ParkedCarDetailsSectionController
- (ParkedCarDetailsSectionController)initWithParkedCar:(id)car;
- (ParkedCarDetailsSectionControllerDelegate)detailsDelegate;
- (id)sectionHeaderViewModel;
- (void)_commonInit;
- (void)_scheduleTimestampUpdateTimerIfNecessary;
- (void)_updateTimestamp;
- (void)photoCarouselController:(id)controller didSelectImageWithIdentifier:(id)identifier;
- (void)photoCarouselController:(id)controller requestsRemovingImageForIdentifier:(id)identifier completion:(id)completion;
- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)photo;
- (void)setActive:(BOOL)active;
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
  parkedCar = [(ParkedCarSectionController *)self parkedCar];
  date = [parkedCar date];
  [v5 timeIntervalSinceDate:date];
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

- (void)setActive:(BOOL)active
{
  v5.receiver = self;
  v5.super_class = ParkedCarDetailsSectionController;
  [(ParkedCarDetailsSectionController *)&v5 setActive:active];
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

- (void)photoCarouselController:(id)controller didSelectImageWithIdentifier:(id)identifier
{
  if ([identifier isEqualToString:@"ParkedCarImageIdentifier"])
  {
    detailsDelegate = [(ParkedCarDetailsSectionController *)self detailsDelegate];
    [detailsDelegate parkedCarDetailsSectionControllerDidTapViewPhoto:self];
  }
}

- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)photo
{
  detailsDelegate = [(ParkedCarDetailsSectionController *)self detailsDelegate];
  [detailsDelegate parkedCarDetailsSectionControllerDidTapAddPhotos:self];
}

- (void)photoCarouselController:(id)controller requestsRemovingImageForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  detailsDelegate = [(ParkedCarDetailsSectionController *)self detailsDelegate];
  [detailsDelegate parkedCarDetailsSectionControllerDidRemovePhoto:self];

  completionCopy[2](completionCopy, 1);
}

- (void)updateFromParkedCar
{
  parkedCar = [(ParkedCarSectionController *)self parkedCar];

  if (parkedCar)
  {
    [(ParkedCarDetailsSectionController *)self _updateTimestamp];
    [(ParkedCarDetailsSectionController *)self _scheduleTimestampUpdateTimerIfNecessary];
    parkedCar2 = [(ParkedCarSectionController *)self parkedCar];
    image = [parkedCar2 image];

    photoCarouselController = self->_photoCarouselController;
    if (image)
    {
      parkedCar3 = [(ParkedCarSectionController *)self parkedCar];
      image2 = [parkedCar3 image];
      [(UGCPhotoCarouselController *)photoCarouselController addImage:image2 forIdentifier:@"ParkedCarImageIdentifier"];

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
    parkedCar4 = [(ParkedCarSectionController *)self parkedCar];
    notes = [parkedCar4 notes];
    [(MULabeledValueActionTextFieldRowView *)notesRowView setCurrentTextFieldValueIfNeeded:notes];
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
    height = [[UGCPhotoCarouselCell alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(UGCPhotoCarouselCell *)height setSectionInset:16.0, kMUPlacePlatterPadding, 16.0, kMUPlacePlatterPadding];
    [(UGCPhotoCarouselCell *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UGCPhotoCarouselCell *)height setCarouselController:self->_photoCarouselController];
    [v18 addSubview:height];
    v20 = [(UGCPhotoCarouselCell *)height _maps_constraintsForCenteringInView:v18];
    [NSLayoutConstraint activateConstraints:v20];

    [v26 addObject:v18];
  }

  v21 = [[MUPlaceVerticalCardContainerView alloc] initWithShowsSeparators:1];
  v22 = [v26 copy];
  [v21 setRowViews:v22];

  sectionHeaderViewModel = [(ParkedCarDetailsSectionController *)self sectionHeaderViewModel];
  v24 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v21 sectionHeaderViewModel:sectionHeaderViewModel sectionFooterViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v24;
}

- (ParkedCarDetailsSectionController)initWithParkedCar:(id)car
{
  v6.receiver = self;
  v6.super_class = ParkedCarDetailsSectionController;
  v3 = [(ParkedCarSectionController *)&v6 initWithParkedCar:car];
  v4 = v3;
  if (v3)
  {
    [(ParkedCarDetailsSectionController *)v3 _commonInit];
  }

  return v4;
}

@end