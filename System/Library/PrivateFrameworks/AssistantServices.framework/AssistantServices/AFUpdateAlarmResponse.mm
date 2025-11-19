@interface AFUpdateAlarmResponse
- (AFUpdateAlarmResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAlarmIdentifier:(id)a3;
@end

@implementation AFUpdateAlarmResponse

- (AFUpdateAlarmResponse)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AFUpdateAlarmResponse;
  v5 = [(AFSiriResponse *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_alarmIdentifiers"];
    alarmIdentifiers = v5->_alarmIdentifiers;
    v5->_alarmIdentifiers = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AFUpdateAlarmResponse;
  v4 = a3;
  [(AFSiriResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_alarmIdentifiers forKey:{@"_alarmIdentifiers", v5.receiver, v5.super_class}];
}

- (void)setAlarmIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(AFUpdateAlarmResponse *)self setAlarmIdentifiers:v6];
  }

  else
  {
    [(AFUpdateAlarmResponse *)self setAlarmIdentifiers:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end