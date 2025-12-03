@interface MKTransitDepartureServiceGapFormatter
- (MKTransitDepartureServiceGapFormatter)initWithTimeZone:(id)zone departureCutoffDate:(id)date;
- (id)_descriptionForDepartureDate:(id)date canIncludeDate:(BOOL)includeDate outDateFormat:(unint64_t *)format;
- (id)lastDepartureAtStringFromDate:(id)date;
- (id)lastDepartureString;
- (id)lastDepartureUntilStringFromDate:(id)date;
@end

@implementation MKTransitDepartureServiceGapFormatter

- (id)_descriptionForDepartureDate:(id)date canIncludeDate:(BOOL)includeDate outDateFormat:(unint64_t *)format
{
  includeDateCopy = includeDate;
  dateCopy = date;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  if (includeDateCopy)
  {
    timeZone = [(MKTransitDepartureServiceGapFormatter *)self timeZone];
    if ([currentCalendar _navigation_isDateInToday:dateCopy inTimeZone:timeZone])
    {
    }

    else
    {
      departureCutoffDate = [(MKTransitDepartureServiceGapFormatter *)self departureCutoffDate];
      [dateCopy timeIntervalSinceDate:departureCutoffDate];
      v13 = v12;

      if (v13 >= 43200.0)
      {
        v21 = 0;
        timeZone2 = [(MKTransitDepartureServiceGapFormatter *)self timeZone];
        v16 = [currentCalendar _navigation_transitRelativeDateStringForDate:dateCopy context:5 inTimeZone:timeZone2 outUsedFormat:&v21];

        v20 = 2;
        if (v21 == 1)
        {
          v20 = 3;
        }

        v17 = 4;
        if (v21 != 2)
        {
          v17 = v20;
        }

        if (format)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }
    }
  }

  if (_descriptionForDepartureDate_canIncludeDate_outDateFormat__onceToken != -1)
  {
    dispatch_once(&_descriptionForDepartureDate_canIncludeDate_outDateFormat__onceToken, &__block_literal_global_21996);
  }

  v14 = _descriptionForDepartureDate_canIncludeDate_outDateFormat__timestampFormatter;
  timeZone3 = [(MKTransitDepartureServiceGapFormatter *)self timeZone];
  [v14 setTimeZone:timeZone3];

  v16 = [_descriptionForDepartureDate_canIncludeDate_outDateFormat__timestampFormatter stringFromDate:dateCopy];
  v17 = 1;
  if (format)
  {
LABEL_8:
    *format = v17;
  }

LABEL_9:

  return v16;
}

uint64_t __99__MKTransitDepartureServiceGapFormatter__descriptionForDepartureDate_canIncludeDate_outDateFormat___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _descriptionForDepartureDate_canIncludeDate_outDateFormat__timestampFormatter;
  _descriptionForDepartureDate_canIncludeDate_outDateFormat__timestampFormatter = v0;

  v2 = _descriptionForDepartureDate_canIncludeDate_outDateFormat__timestampFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  v4 = _descriptionForDepartureDate_canIncludeDate_outDateFormat__timestampFormatter;

  return [v4 setLocalizedDateFormatFromTemplate:@"jma"];
}

- (id)lastDepartureAtStringFromDate:(id)date
{
  v8 = 0;
  v3 = [(MKTransitDepartureServiceGapFormatter *)self _descriptionForDepartureDate:date canIncludeDate:0 outDateFormat:&v8];
  v4 = 0;
  if ((v8 - 1) <= 3)
  {
    v4 = _MKLocalizedStringFromThisBundle(@"Last departure at <hours:minutes> format");
  }

  v5 = [MKTransitDepartureServiceGapFormatterResult alloc];
  v6 = [(MKTransitDepartureServiceGapFormatterResult *)v5 initWithFormat:v4 dateDescription:v3 dateFormat:v8];

  return v6;
}

- (id)lastDepartureUntilStringFromDate:(id)date
{
  v8 = 0;
  v3 = [(MKTransitDepartureServiceGapFormatter *)self _descriptionForDepartureDate:date canIncludeDate:1 outDateFormat:&v8];
  v4 = 0;
  if ((v8 - 1) <= 3)
  {
    v4 = _MKLocalizedStringFromThisBundle(off_1E76C9518[v8 - 1]);
  }

  v5 = [MKTransitDepartureServiceGapFormatterResult alloc];
  v6 = [(MKTransitDepartureServiceGapFormatterResult *)v5 initWithFormat:v4 dateDescription:v3 dateFormat:v8];

  return v6;
}

- (id)lastDepartureString
{
  v2 = [MKTransitDepartureServiceGapFormatterResult alloc];
  v3 = _MKLocalizedStringFromThisBundle(@"Last departure");
  v4 = [(MKTransitDepartureServiceGapFormatterResult *)v2 initWithFormat:v3 dateDescription:0 dateFormat:0];

  return v4;
}

- (MKTransitDepartureServiceGapFormatter)initWithTimeZone:(id)zone departureCutoffDate:(id)date
{
  zoneCopy = zone;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = MKTransitDepartureServiceGapFormatter;
  v9 = [(MKTransitDepartureServiceGapFormatter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timeZone, zone);
    objc_storeStrong(&v10->_departureCutoffDate, date);
  }

  return v10;
}

@end