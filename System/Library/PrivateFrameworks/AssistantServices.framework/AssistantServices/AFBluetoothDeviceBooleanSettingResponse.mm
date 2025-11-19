@interface AFBluetoothDeviceBooleanSettingResponse
+ (id)newWithBuilder:(id)a3;
- (AFBluetoothDeviceBooleanSettingResponse)initWithBuilder:(id)a3;
- (AFBluetoothDeviceBooleanSettingResponse)initWithCoder:(id)a3;
- (AFBluetoothDeviceBooleanSettingResponse)initWithValue:(int64_t)a3 status:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFBluetoothDeviceBooleanSettingResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  value = self->_value;
  v6 = a3;
  v7 = [v4 numberWithInteger:value];
  [v6 encodeObject:v7 forKey:@"AFBluetoothDeviceBooleanSettingResponse::value"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  [v6 encodeObject:v8 forKey:@"AFBluetoothDeviceBooleanSettingResponse::status"];
}

- (AFBluetoothDeviceBooleanSettingResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceBooleanSettingResponse::value"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothDeviceBooleanSettingResponse::status"];

  v8 = [v7 integerValue];

  return [(AFBluetoothDeviceBooleanSettingResponse *)self initWithValue:v6 status:v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      value = self->_value;
      if (value == [(AFBluetoothDeviceBooleanSettingResponse *)v5 value])
      {
        status = self->_status;
        v8 = status == [(AFBluetoothDeviceBooleanSettingResponse *)v5 status];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_value];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14.receiver = self;
  v14.super_class = AFBluetoothDeviceBooleanSettingResponse;
  v5 = [(AFBluetoothDeviceBooleanSettingResponse *)&v14 description];
  value = self->_value;
  if (value > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E73426D0[value];
  }

  v8 = v7;
  status = self->_status;
  if (status > 4)
  {
    v10 = @"(unknown)";
  }

  else
  {
    v10 = off_1E73435C0[status];
  }

  v11 = v10;
  v12 = [v4 initWithFormat:@"%@ {value = %@, status = %@}", v5, v8, v11];

  return v12;
}

- (AFBluetoothDeviceBooleanSettingResponse)initWithValue:(int64_t)a3 status:(int64_t)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__AFBluetoothDeviceBooleanSettingResponse_initWithValue_status___block_invoke;
  v5[3] = &__block_descriptor_48_e59_v16__0___AFBluetoothDeviceBooleanSettingResponseMutating__8l;
  v5[4] = a3;
  v5[5] = a4;
  return [(AFBluetoothDeviceBooleanSettingResponse *)self initWithBuilder:v5];
}

void __64__AFBluetoothDeviceBooleanSettingResponse_initWithValue_status___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setValue:v3];
  [v4 setStatus:*(a1 + 40)];
}

- (AFBluetoothDeviceBooleanSettingResponse)initWithBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFBluetoothDeviceBooleanSettingResponse;
  v5 = [(AFBluetoothDeviceBooleanSettingResponse *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFBluetoothDeviceBooleanSettingResponseMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFBluetoothDeviceBooleanSettingResponseMutation *)v7 isDirty])
    {
      v6->_value = [(_AFBluetoothDeviceBooleanSettingResponseMutation *)v7 getValue];
      v6->_status = [(_AFBluetoothDeviceBooleanSettingResponseMutation *)v7 getStatus];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFBluetoothDeviceBooleanSettingResponseMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFBluetoothDeviceBooleanSettingResponseMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFBluetoothDeviceBooleanSettingResponse);
      v6->_value = [(_AFBluetoothDeviceBooleanSettingResponseMutation *)v5 getValue];
      v6->_status = [(_AFBluetoothDeviceBooleanSettingResponseMutation *)v5 getStatus];
    }

    else
    {
      v6 = [(AFBluetoothDeviceBooleanSettingResponse *)self copy];
    }
  }

  else
  {
    v6 = [(AFBluetoothDeviceBooleanSettingResponse *)self copy];
  }

  return v6;
}

@end