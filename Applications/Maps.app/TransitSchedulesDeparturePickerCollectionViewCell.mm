@interface TransitSchedulesDeparturePickerCollectionViewCell
- (TransitSchedulesDeparturePickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (TransitSchedulesDeparturePickerCollectionViewCellDelegate)delegate;
- (id)statusStringForDeparture:(id)departure;
- (id)titleForDeparture:(id)departure;
- (void)_updateDeparturePickerWithSelectedDeparture:(id)departure;
- (void)configureViews;
- (void)setDepartures:(id)departures withSelectedDeparture:(id)departure referenceDate:(id)date timeZone:(id)zone timeDisplayStyle:(unint64_t)style;
@end

@implementation TransitSchedulesDeparturePickerCollectionViewCell

- (TransitSchedulesDeparturePickerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)statusStringForDeparture:(id)departure
{
  departureCopy = departure;
  if ([departureCopy isCanceled])
  {
    v5 = +[NSBundle mainBundle];
    liveStatusString = v5;
    v7 = @"Schedules Departure cell status - Canceled";
  }

  else
  {
    v8 = [departureCopy liveStatus] == 0;
    referenceDate = [(TransitSchedulesDepartureBaseViewCell *)self referenceDate];
    LODWORD(v8) = [departureCopy isPastDepartureRelativeToDate:referenceDate usingGracePeriod:v8];

    if (!v8)
    {
      liveStatusString = [departureCopy liveStatusString];
      if (liveStatusString)
      {
        v11 = [MKServerFormattedStringParameters alloc];
        MKFormattedStringOptionsMakeDefault();
        v12 = [v11 initWithOptions:&v19 variableOverrides:0];
        v13 = [[MKServerFormattedString alloc] initWithGeoServerString:liveStatusString parameters:v12];
        v14 = [v13 multiPartAttributedStringWithAttributes:&__NSDictionary0__struct];
        attributedString = [v14 attributedString];
        string = [attributedString string];
      }

      else
      {
        v12 = [(TransitSchedulesDepartureBaseViewCell *)self emphasizedLowFrequencyDepartureDateForDeparture:departureCopy];
        dateFormatter = [(TransitSchedulesDepartureBaseViewCell *)self dateFormatter];
        v17 = [dateFormatter stringFromDate:v12];

        string = [NSString _navigation_formattedDescriptionForLiveStatus:[(TransitSchedulesDepartureBaseViewCell *)self effectiveLiveStatusForDeparture:departureCopy] updatedDepartureTimeString:v17];
      }

      goto LABEL_10;
    }

    v5 = +[NSBundle mainBundle];
    liveStatusString = v5;
    v7 = @"Schedules Departure cell status - Departed";
  }

  string = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];
LABEL_10:

  return string;
}

- (void)_updateDeparturePickerWithSelectedDeparture:(id)departure
{
  departureCopy = departure;
  val = self;
  if (![(NSArray *)self->_departures count])
  {
    v4 = sub_100798DBC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to populate the departures picker since there are no departures", buf, 2u);
    }

    [(UIButton *)self->_picker setMenu:0];
  }

  v5 = +[NSMutableArray array];
  objc_initWeak(buf, self);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_departures;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(TransitSchedulesDeparturePickerCollectionViewCell *)val titleForDeparture:v9];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100A06968;
        v16[3] = &unk_101660418;
        objc_copyWeak(&v17, buf);
        v16[4] = v9;
        v11 = [UIAction actionWithTitle:v10 image:0 identifier:v10 handler:v16];
        [v11 setState:{objc_msgSend(departureCopy, "tripIdentifier") == objc_msgSend(v9, "tripIdentifier")}];
        [v5 addObject:v11];

        objc_destroyWeak(&v17);
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = [UIMenu menuWithTitle:&stru_1016631F0 children:v5];
  [(UIButton *)val->_picker setMenu:v12];

  objc_destroyWeak(buf);
}

- (id)titleForDeparture:(id)departure
{
  departureCopy = departure;
  v5 = [(TransitSchedulesDepartureBaseViewCell *)self timeStringForDeparture:departureCopy];
  v6 = [(TransitSchedulesDeparturePickerCollectionViewCell *)self statusStringForDeparture:departureCopy];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Transit Schedules] %@ time · %@ status" value:@"localized string not found" table:0];

  v9 = [NSString stringWithFormat:v8, v5, v6];

  return v9;
}

- (void)setDepartures:(id)departures withSelectedDeparture:(id)departure referenceDate:(id)date timeZone:(id)zone timeDisplayStyle:(unint64_t)style
{
  dateCopy = date;
  departureCopy = departure;
  departuresCopy = departures;
  [(TransitSchedulesDepartureBaseViewCell *)self setTimeZone:zone];
  [(TransitSchedulesDepartureBaseViewCell *)self setReferenceDate:dateCopy];

  [(TransitSchedulesDepartureBaseViewCell *)self setTimeDisplayStyle:style];
  v14 = [departuresCopy copy];

  departures = self->_departures;
  self->_departures = v14;

  [(TransitSchedulesDeparturePickerCollectionViewCell *)self _updateDeparturePickerWithSelectedDeparture:departureCopy];
}

- (void)configureViews
{
  contentView = [(TransitSchedulesDeparturePickerCollectionViewCell *)self contentView];
  v4 = [UIButton buttonWithType:124];
  picker = self->_picker;
  self->_picker = v4;

  titleLabel = [(UIButton *)self->_picker titleLabel];
  [titleLabel setTextAlignment:0];

  [(UIButton *)self->_picker setContentHorizontalAlignment:1];
  [(UIButton *)self->_picker setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_picker setShowsMenuAsPrimaryAction:1];
  [(UIButton *)self->_picker setContextMenuInteractionEnabled:1];
  [contentView addSubview:self->_picker];
  leadingAnchor = [(UIButton *)self->_picker leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[0] = v17;
  trailingAnchor = [(UIButton *)self->_picker trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[1] = v8;
  topAnchor = [(UIButton *)self->_picker topAnchor];
  topAnchor2 = [contentView topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[2] = v11;
  bottomAnchor = [(UIButton *)self->_picker bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[3] = v14;
  v15 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (TransitSchedulesDeparturePickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TransitSchedulesDeparturePickerCollectionViewCell;
  v3 = [(TransitSchedulesDeparturePickerCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitSchedulesDeparturePickerCollectionViewCell *)v3 configureViews];
  }

  return v4;
}

@end