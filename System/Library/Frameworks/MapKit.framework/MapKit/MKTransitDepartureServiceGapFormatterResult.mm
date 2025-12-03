@interface MKTransitDepartureServiceGapFormatterResult
- (MKTransitDepartureServiceGapFormatterResult)initWithFormat:(id)format dateDescription:(id)description dateFormat:(unint64_t)dateFormat;
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

- (MKTransitDepartureServiceGapFormatterResult)initWithFormat:(id)format dateDescription:(id)description dateFormat:(unint64_t)dateFormat
{
  formatCopy = format;
  descriptionCopy = description;
  v16.receiver = self;
  v16.super_class = MKTransitDepartureServiceGapFormatterResult;
  v10 = [(MKTransitDepartureServiceGapFormatterResult *)&v16 init];
  if (v10)
  {
    v11 = [formatCopy copy];
    format = v10->_format;
    v10->_format = v11;

    v13 = [descriptionCopy copy];
    dateDescription = v10->_dateDescription;
    v10->_dateDescription = v13;

    v10->_dateFormat = dateFormat;
  }

  return v10;
}

@end