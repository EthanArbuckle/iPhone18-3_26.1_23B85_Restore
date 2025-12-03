@interface BSRelativeDateTimerFireInfo
- (BSRelativeDateTimerFireInfo)initWithValue:(unint64_t)value resolution:(unint64_t)resolution comparedToNow:(int64_t)now fireDate:(id)date;
@end

@implementation BSRelativeDateTimerFireInfo

- (BSRelativeDateTimerFireInfo)initWithValue:(unint64_t)value resolution:(unint64_t)resolution comparedToNow:(int64_t)now fireDate:(id)date
{
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = BSRelativeDateTimerFireInfo;
  v11 = [(BSRelativeDateTimerFireInfo *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_value = value;
    v11->_resolution = resolution;
    v11->_comparedToNow = now;
    v13 = [dateCopy copy];
    fireDate = v12->_fireDate;
    v12->_fireDate = v13;
  }

  return v12;
}

@end