@interface AFMetrics
- (AFMetrics)initWithCoder:(id)coder;
- (AFMetrics)initWithOriginalCommandId:(id)id category:(int64_t)category eventInfo:(id)info duration:(id)duration;
- (double)_roundDouble:(double)double toSignificantDigits:(unint64_t)digits;
- (id)aceMetrics;
- (id)categoryString;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFMetrics

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = AFMetrics;
  v4 = [(AFMetrics *)&v11 description];
  originalCommandId = [(AFMetrics *)self originalCommandId];
  categoryString = [(AFMetrics *)self categoryString];
  duration = [(AFMetrics *)self duration];
  eventInfo = [(AFMetrics *)self eventInfo];
  v9 = [v3 stringWithFormat:@"%@ - originalCommandId: %@, category: %@, duration: %@, eventInfo: %@", v4, originalCommandId, categoryString, duration, eventInfo];

  return v9;
}

- (id)categoryString
{
  v10 = *MEMORY[0x1E69E9840];
  category = self->_category;
  if (category >= 9)
  {
    v5 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[AFMetrics categoryString]";
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Invalid AFMetrics category", &v8, 0xCu);
    }

    v3 = 0;
    v4 = &stru_1F0512680;
  }

  else
  {
    v3 = off_1E73453D0[category];
    v4 = v3;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (double)_roundDouble:(double)double toSignificantDigits:(unint64_t)digits
{
  result = 0.0;
  if (double != 0.0 && digits != 0)
  {
    v8 = log10(fabs(double));
    v9 = __exp10((digits - vcvtpd_s64_f64(v8)));
    return round(v9 * double) / v9;
  }

  return result;
}

- (id)aceMetrics
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69C7910]);
  originalCommandId = [(AFMetrics *)self originalCommandId];
  [v3 setOriginalCommandId:originalCommandId];

  categoryString = [(AFMetrics *)self categoryString];
  [v3 setCategory:categoryString];

  eventInfo = [(AFMetrics *)self eventInfo];
  [v3 setEventInformation:eventInfo];

  duration = [(AFMetrics *)self duration];
  v8 = duration;
  if (duration)
  {
    [duration doubleValue];
    [(AFMetrics *)self _roundDouble:2 toSignificantDigits:?];
    v14 = @"Duration";
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:{fmin(v9, 3600.0)}];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  [v3 setTimings:v11];

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (AFMetrics)initWithCoder:(id)coder
{
  v18[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = AFMetrics;
  v5 = [(AFMetrics *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_originalCommandId"];
    originalCommandId = v5->_originalCommandId;
    v5->_originalCommandId = v6;

    v5->_category = [coderCopy decodeIntegerForKey:@"_category"];
    v8 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_eventInfo"];
    eventInfo = v5->_eventInfo;
    v5->_eventInfo = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_duration"];
    duration = v5->_duration;
    v5->_duration = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  originalCommandId = self->_originalCommandId;
  coderCopy = coder;
  [coderCopy encodeObject:originalCommandId forKey:@"_originalCommandId"];
  [coderCopy encodeInteger:self->_category forKey:@"_category"];
  [coderCopy encodeObject:self->_eventInfo forKey:@"_eventInfo"];
  [coderCopy encodeObject:self->_duration forKey:@"_duration"];
}

- (AFMetrics)initWithOriginalCommandId:(id)id category:(int64_t)category eventInfo:(id)info duration:(id)duration
{
  idCopy = id;
  infoCopy = info;
  durationCopy = duration;
  v19.receiver = self;
  v19.super_class = AFMetrics;
  v13 = [(AFMetrics *)&v19 init];
  if (v13)
  {
    v14 = [idCopy copy];
    originalCommandId = v13->_originalCommandId;
    v13->_originalCommandId = v14;

    v13->_category = category;
    v16 = [infoCopy copy];
    eventInfo = v13->_eventInfo;
    v13->_eventInfo = v16;

    objc_storeStrong(&v13->_duration, duration);
  }

  return v13;
}

@end