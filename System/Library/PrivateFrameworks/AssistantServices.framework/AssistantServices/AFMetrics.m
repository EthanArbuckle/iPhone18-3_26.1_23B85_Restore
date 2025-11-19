@interface AFMetrics
- (AFMetrics)initWithCoder:(id)a3;
- (AFMetrics)initWithOriginalCommandId:(id)a3 category:(int64_t)a4 eventInfo:(id)a5 duration:(id)a6;
- (double)_roundDouble:(double)a3 toSignificantDigits:(unint64_t)a4;
- (id)aceMetrics;
- (id)categoryString;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFMetrics

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = AFMetrics;
  v4 = [(AFMetrics *)&v11 description];
  v5 = [(AFMetrics *)self originalCommandId];
  v6 = [(AFMetrics *)self categoryString];
  v7 = [(AFMetrics *)self duration];
  v8 = [(AFMetrics *)self eventInfo];
  v9 = [v3 stringWithFormat:@"%@ - originalCommandId: %@, category: %@, duration: %@, eventInfo: %@", v4, v5, v6, v7, v8];

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

- (double)_roundDouble:(double)a3 toSignificantDigits:(unint64_t)a4
{
  result = 0.0;
  if (a3 != 0.0 && a4 != 0)
  {
    v8 = log10(fabs(a3));
    v9 = __exp10((a4 - vcvtpd_s64_f64(v8)));
    return round(v9 * a3) / v9;
  }

  return result;
}

- (id)aceMetrics
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69C7910]);
  v4 = [(AFMetrics *)self originalCommandId];
  [v3 setOriginalCommandId:v4];

  v5 = [(AFMetrics *)self categoryString];
  [v3 setCategory:v5];

  v6 = [(AFMetrics *)self eventInfo];
  [v3 setEventInformation:v6];

  v7 = [(AFMetrics *)self duration];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
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

- (AFMetrics)initWithCoder:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AFMetrics;
  v5 = [(AFMetrics *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originalCommandId"];
    originalCommandId = v5->_originalCommandId;
    v5->_originalCommandId = v6;

    v5->_category = [v4 decodeIntegerForKey:@"_category"];
    v8 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_eventInfo"];
    eventInfo = v5->_eventInfo;
    v5->_eventInfo = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_duration"];
    duration = v5->_duration;
    v5->_duration = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  originalCommandId = self->_originalCommandId;
  v5 = a3;
  [v5 encodeObject:originalCommandId forKey:@"_originalCommandId"];
  [v5 encodeInteger:self->_category forKey:@"_category"];
  [v5 encodeObject:self->_eventInfo forKey:@"_eventInfo"];
  [v5 encodeObject:self->_duration forKey:@"_duration"];
}

- (AFMetrics)initWithOriginalCommandId:(id)a3 category:(int64_t)a4 eventInfo:(id)a5 duration:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = AFMetrics;
  v13 = [(AFMetrics *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    originalCommandId = v13->_originalCommandId;
    v13->_originalCommandId = v14;

    v13->_category = a4;
    v16 = [v11 copy];
    eventInfo = v13->_eventInfo;
    v13->_eventInfo = v16;

    objc_storeStrong(&v13->_duration, a6);
  }

  return v13;
}

@end