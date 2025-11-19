@interface MKTransitDepartureServiceGapFormatter
- (MKTransitDepartureServiceGapFormatter)initWithTimeZone:(id)a3 departureCutoffDate:(id)a4;
- (id)_descriptionForDepartureDate:(id)a3 canIncludeDate:(BOOL)a4 outDateFormat:(unint64_t *)a5;
- (id)lastDepartureAtStringFromDate:(id)a3;
- (id)lastDepartureString;
- (id)lastDepartureUntilStringFromDate:(id)a3;
@end

@implementation MKTransitDepartureServiceGapFormatter

- (id)_descriptionForDepartureDate:(id)a3 canIncludeDate:(BOOL)a4 outDateFormat:(unint64_t *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  if (v6)
  {
    v10 = [(MKTransitDepartureServiceGapFormatter *)self timeZone];
    if ([v9 _navigation_isDateInToday:v8 inTimeZone:v10])
    {
    }

    else
    {
      v11 = [(MKTransitDepartureServiceGapFormatter *)self departureCutoffDate];
      [v8 timeIntervalSinceDate:v11];
      v13 = v12;

      if (v13 >= 43200.0)
      {
        v21 = 0;
        v19 = [(MKTransitDepartureServiceGapFormatter *)self timeZone];
        v16 = [v9 _navigation_transitRelativeDateStringForDate:v8 context:5 inTimeZone:v19 outUsedFormat:&v21];

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

        if (a5)
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
  v15 = [(MKTransitDepartureServiceGapFormatter *)self timeZone];
  [v14 setTimeZone:v15];

  v16 = [_descriptionForDepartureDate_canIncludeDate_outDateFormat__timestampFormatter stringFromDate:v8];
  v17 = 1;
  if (a5)
  {
LABEL_8:
    *a5 = v17;
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

- (id)lastDepartureAtStringFromDate:(id)a3
{
  v8 = 0;
  v3 = [(MKTransitDepartureServiceGapFormatter *)self _descriptionForDepartureDate:a3 canIncludeDate:0 outDateFormat:&v8];
  v4 = 0;
  if ((v8 - 1) <= 3)
  {
    v4 = _MKLocalizedStringFromThisBundle(@"Last departure at <hours:minutes> format");
  }

  v5 = [MKTransitDepartureServiceGapFormatterResult alloc];
  v6 = [(MKTransitDepartureServiceGapFormatterResult *)v5 initWithFormat:v4 dateDescription:v3 dateFormat:v8];

  return v6;
}

- (id)lastDepartureUntilStringFromDate:(id)a3
{
  v8 = 0;
  v3 = [(MKTransitDepartureServiceGapFormatter *)self _descriptionForDepartureDate:a3 canIncludeDate:1 outDateFormat:&v8];
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

- (MKTransitDepartureServiceGapFormatter)initWithTimeZone:(id)a3 departureCutoffDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MKTransitDepartureServiceGapFormatter;
  v9 = [(MKTransitDepartureServiceGapFormatter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timeZone, a3);
    objc_storeStrong(&v10->_departureCutoffDate, a4);
  }

  return v10;
}

@end