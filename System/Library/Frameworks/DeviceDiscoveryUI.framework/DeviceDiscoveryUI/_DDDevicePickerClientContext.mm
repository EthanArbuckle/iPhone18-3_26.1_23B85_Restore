@interface _DDDevicePickerClientContext
- (_DDDevicePickerClientContext)initWithBSXPCCoder:(id)coder;
- (_DDDevicePickerClientContext)initWithSessionIdentifier:(id)identifier;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation _DDDevicePickerClientContext

- (_DDDevicePickerClientContext)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _DDDevicePickerClientContext;
  v5 = [(_DDDevicePickerClientContext *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  sessionIdentifier = [(_DDDevicePickerClientContext *)self sessionIdentifier];
  [coderCopy encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];
}

- (_DDDevicePickerClientContext)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];

  v6 = [(_DDDevicePickerClientContext *)self initWithSessionIdentifier:v5];
  return v6;
}

@end