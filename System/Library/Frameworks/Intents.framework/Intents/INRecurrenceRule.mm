@interface INRecurrenceRule
- (BOOL)isEqual:(id)a3;
- (INRecurrenceRule)initWithCoder:(id)a3;
- (INRecurrenceRule)initWithInterval:(NSUInteger)interval frequency:(INRecurrenceFrequency)frequency weeklyRecurrenceDays:(INDayOfWeekOptions)weeklyRecurrenceDays;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRecurrenceRule

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"interval";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_interval];
  v12[0] = v3;
  v11[1] = @"frequency";
  v4 = self->_frequency - 1;
  if (v4 > 5)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E727EF78[v4];
  }

  v6 = v5;
  v12[1] = v6;
  v11[2] = @"weeklyRecurrenceDays";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_weeklyRecurrenceDays];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRecurrenceRule;
  v6 = [(INRecurrenceRule *)&v11 description];
  v7 = [(INRecurrenceRule *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  interval = self->_interval;
  v5 = a3;
  [v5 encodeInteger:interval forKey:@"interval"];
  [v5 encodeInteger:self->_frequency forKey:@"frequency"];
  [v5 encodeInteger:self->_weeklyRecurrenceDays forKey:@"weeklyRecurrenceDays"];
}

- (INRecurrenceRule)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"interval"];
  v6 = [v4 decodeIntegerForKey:@"frequency"];
  v7 = [v4 decodeIntegerForKey:@"weeklyRecurrenceDays"];

  return [(INRecurrenceRule *)self initWithInterval:v5 frequency:v6 weeklyRecurrenceDays:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = self->_interval == v5[1] && self->_frequency == v5[2] && self->_weeklyRecurrenceDays == v5[3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INRecurrenceRule)initWithInterval:(NSUInteger)interval frequency:(INRecurrenceFrequency)frequency weeklyRecurrenceDays:(INDayOfWeekOptions)weeklyRecurrenceDays
{
  v9.receiver = self;
  v9.super_class = INRecurrenceRule;
  result = [(INRecurrenceRule *)&v9 init];
  if (result)
  {
    result->_interval = interval;
    result->_frequency = frequency;
    result->_weeklyRecurrenceDays = weeklyRecurrenceDays;
  }

  return result;
}

@end