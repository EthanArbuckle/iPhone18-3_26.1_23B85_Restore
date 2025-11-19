@interface AFShowAlarmRequest
- (AFShowAlarmRequest)initWithCoder:(id)a3;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFShowAlarmRequest

- (AFShowAlarmRequest)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AFShowAlarmRequest;
  v5 = [(AFSiriRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_alarms"];
    alarms = v5->_alarms;
    v5->_alarms = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AFShowAlarmRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_alarms forKey:{@"_alarms", v5.receiver, v5.super_class}];
}

- (id)createResponse
{
  v2 = [(AFSiriResponse *)[AFSiriRequestSucceededResponse alloc] _initWithRequest:self];

  return v2;
}

@end