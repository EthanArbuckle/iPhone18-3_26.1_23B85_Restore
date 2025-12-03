@interface GEORPFeedbackBusinessHours
- (id)initWithHoursType:(int)type;
@end

@implementation GEORPFeedbackBusinessHours

- (id)initWithHoursType:(int)type
{
  v3 = *&type;
  v7.receiver = self;
  v7.super_class = GEORPFeedbackBusinessHours;
  v4 = [(GEORPFeedbackBusinessHours *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(GEORPFeedbackBusinessHours *)v4 setHoursType:v3];
  }

  return v5;
}

@end