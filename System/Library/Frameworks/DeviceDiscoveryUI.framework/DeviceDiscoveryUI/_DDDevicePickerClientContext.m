@interface _DDDevicePickerClientContext
- (_DDDevicePickerClientContext)initWithBSXPCCoder:(id)a3;
- (_DDDevicePickerClientContext)initWithSessionIdentifier:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation _DDDevicePickerClientContext

- (_DDDevicePickerClientContext)initWithSessionIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _DDDevicePickerClientContext;
  v5 = [(_DDDevicePickerClientContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(_DDDevicePickerClientContext *)self sessionIdentifier];
  [v4 encodeObject:v5 forKey:@"sessionIdentifier"];
}

- (_DDDevicePickerClientContext)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];

  v6 = [(_DDDevicePickerClientContext *)self initWithSessionIdentifier:v5];
  return v6;
}

@end