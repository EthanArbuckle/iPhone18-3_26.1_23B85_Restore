@interface AFBluetoothWirelessSplitterSessionInfo
+ (id)newWithBuilder:(id)a3;
- (AFBluetoothWirelessSplitterSessionInfo)initWithBuilder:(id)a3;
- (AFBluetoothWirelessSplitterSessionInfo)initWithCoder:(id)a3;
- (AFBluetoothWirelessSplitterSessionInfo)initWithState:(int64_t)a3 deviceAddresses:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFBluetoothWirelessSplitterSessionInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  state = self->_state;
  v7 = a3;
  v6 = [v4 numberWithInteger:state];
  [v7 encodeObject:v6 forKey:@"AFBluetoothWirelessSplitterSessionInfo::state"];

  [v7 encodeObject:self->_deviceAddresses forKey:@"AFBluetoothWirelessSplitterSessionInfo::deviceAddresses"];
}

- (AFBluetoothWirelessSplitterSessionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothWirelessSplitterSessionInfo::state"];
  v6 = [v5 integerValue];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"AFBluetoothWirelessSplitterSessionInfo::deviceAddresses"];

  v11 = [(AFBluetoothWirelessSplitterSessionInfo *)self initWithState:v6 deviceAddresses:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      state = self->_state;
      if (state == [(AFBluetoothWirelessSplitterSessionInfo *)v5 state])
      {
        v7 = [(AFBluetoothWirelessSplitterSessionInfo *)v5 deviceAddresses];
        deviceAddresses = self->_deviceAddresses;
        v9 = deviceAddresses == v7 || [(NSArray *)deviceAddresses isEqual:v7];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v4 = [v3 hash];
  v5 = [(NSArray *)self->_deviceAddresses hash];

  return v5 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = AFBluetoothWirelessSplitterSessionInfo;
  v5 = [(AFBluetoothWirelessSplitterSessionInfo *)&v11 description];
  state = self->_state;
  if (state > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E73444E8[state];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {state = %@, deviceAddresses = %@}", v5, v8, self->_deviceAddresses];

  return v9;
}

- (AFBluetoothWirelessSplitterSessionInfo)initWithState:(int64_t)a3 deviceAddresses:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__AFBluetoothWirelessSplitterSessionInfo_initWithState_deviceAddresses___block_invoke;
  v10[3] = &unk_1E7341DE8;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  v8 = [(AFBluetoothWirelessSplitterSessionInfo *)self initWithBuilder:v10];

  return v8;
}

void __72__AFBluetoothWirelessSplitterSessionInfo_initWithState_deviceAddresses___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setState:v3];
  [v4 setDeviceAddresses:*(a1 + 32)];
}

- (AFBluetoothWirelessSplitterSessionInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFBluetoothWirelessSplitterSessionInfo;
  v5 = [(AFBluetoothWirelessSplitterSessionInfo *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFBluetoothWirelessSplitterSessionInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFBluetoothWirelessSplitterSessionInfoMutation *)v7 isDirty])
    {
      v6->_state = [(_AFBluetoothWirelessSplitterSessionInfoMutation *)v7 getState];
      v8 = [(_AFBluetoothWirelessSplitterSessionInfoMutation *)v7 getDeviceAddresses];
      v9 = [v8 copy];
      deviceAddresses = v6->_deviceAddresses;
      v6->_deviceAddresses = v9;
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
    v5 = [[_AFBluetoothWirelessSplitterSessionInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFBluetoothWirelessSplitterSessionInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFBluetoothWirelessSplitterSessionInfo);
      v6->_state = [(_AFBluetoothWirelessSplitterSessionInfoMutation *)v5 getState];
      v7 = [(_AFBluetoothWirelessSplitterSessionInfoMutation *)v5 getDeviceAddresses];
      v8 = [v7 copy];
      deviceAddresses = v6->_deviceAddresses;
      v6->_deviceAddresses = v8;
    }

    else
    {
      v6 = [(AFBluetoothWirelessSplitterSessionInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFBluetoothWirelessSplitterSessionInfo *)self copy];
  }

  return v6;
}

@end