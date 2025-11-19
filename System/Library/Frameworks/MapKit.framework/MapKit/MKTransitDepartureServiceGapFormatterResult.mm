@interface MKTransitDepartureServiceGapFormatterResult
- (MKTransitDepartureServiceGapFormatterResult)initWithFormat:(id)a3 dateDescription:(id)a4 dateFormat:(unint64_t)a5;
- (NSString)formattedString;
@end

@implementation MKTransitDepartureServiceGapFormatterResult

- (NSString)formattedString
{
  if (self->_dateDescription)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:self->_format, self->_dateDescription];
  }

  else
  {
    v2 = self->_format;
  }

  return v2;
}

- (MKTransitDepartureServiceGapFormatterResult)initWithFormat:(id)a3 dateDescription:(id)a4 dateFormat:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = MKTransitDepartureServiceGapFormatterResult;
  v10 = [(MKTransitDepartureServiceGapFormatterResult *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    format = v10->_format;
    v10->_format = v11;

    v13 = [v9 copy];
    dateDescription = v10->_dateDescription;
    v10->_dateDescription = v13;

    v10->_dateFormat = a5;
  }

  return v10;
}

@end