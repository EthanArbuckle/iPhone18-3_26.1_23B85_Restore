@interface BSRelativeDateTimerFireInfo
- (BSRelativeDateTimerFireInfo)initWithValue:(unint64_t)a3 resolution:(unint64_t)a4 comparedToNow:(int64_t)a5 fireDate:(id)a6;
@end

@implementation BSRelativeDateTimerFireInfo

- (BSRelativeDateTimerFireInfo)initWithValue:(unint64_t)a3 resolution:(unint64_t)a4 comparedToNow:(int64_t)a5 fireDate:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = BSRelativeDateTimerFireInfo;
  v11 = [(BSRelativeDateTimerFireInfo *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_value = a3;
    v11->_resolution = a4;
    v11->_comparedToNow = a5;
    v13 = [v10 copy];
    fireDate = v12->_fireDate;
    v12->_fireDate = v13;
  }

  return v12;
}

@end