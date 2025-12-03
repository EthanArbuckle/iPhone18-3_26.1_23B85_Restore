@interface CTTetheringStatus
- (CTTetheringStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTTetheringStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  carrierEnabled = [(CTTetheringStatus *)self carrierEnabled];
  [v3 appendFormat:@", carrierEnabled=%@", carrierEnabled];

  userAuthenticated = [(CTTetheringStatus *)self userAuthenticated];
  [v3 appendFormat:@", userAuthenticated=%@", userAuthenticated];

  asserted = [(CTTetheringStatus *)self asserted];
  [v3 appendFormat:@", asserted=%@", asserted];

  activationFailure = [(CTTetheringStatus *)self activationFailure];
  [v3 appendFormat:@", activationFailure=%@", activationFailure];

  misPdpMaxHosts = [(CTTetheringStatus *)self misPdpMaxHosts];
  [v3 appendFormat:@", misPdpMaxHosts=%@", misPdpMaxHosts];

  connectionAvailabilityStatus = [(CTTetheringStatus *)self connectionAvailabilityStatus];
  [v3 appendFormat:@", connectionAvailabilityStatus=%@", connectionAvailabilityStatus];

  connectionStatus = [(CTTetheringStatus *)self connectionStatus];
  [v3 appendFormat:@", connectionStatus=%@", connectionStatus];

  context = [(CTTetheringStatus *)self context];
  [v3 appendFormat:@", context=%@", context];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  carrierEnabled = [(CTTetheringStatus *)self carrierEnabled];
  v6 = [carrierEnabled copy];
  [v4 setCarrierEnabled:v6];

  userAuthenticated = [(CTTetheringStatus *)self userAuthenticated];
  v8 = [userAuthenticated copy];
  [v4 setUserAuthenticated:v8];

  asserted = [(CTTetheringStatus *)self asserted];
  v10 = [asserted copy];
  [v4 setAsserted:v10];

  activationFailure = [(CTTetheringStatus *)self activationFailure];
  v12 = [activationFailure copy];
  [v4 setActivationFailure:v12];

  misPdpMaxHosts = [(CTTetheringStatus *)self misPdpMaxHosts];
  v14 = [misPdpMaxHosts copy];
  [v4 setMisPdpMaxHosts:v14];

  connectionAvailabilityStatus = [(CTTetheringStatus *)self connectionAvailabilityStatus];
  v16 = [connectionAvailabilityStatus copy];
  [v4 setConnectionAvailabilityStatus:v16];

  connectionStatus = [(CTTetheringStatus *)self connectionStatus];
  v18 = [connectionStatus copy];
  [v4 setConnectionStatus:v18];

  context = [(CTTetheringStatus *)self context];
  v20 = [context copy];
  [v4 setContext:v20];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  carrierEnabled = [(CTTetheringStatus *)self carrierEnabled];
  [coderCopy encodeObject:carrierEnabled forKey:@"carrierEnabled"];

  userAuthenticated = [(CTTetheringStatus *)self userAuthenticated];
  [coderCopy encodeObject:userAuthenticated forKey:@"userAuthenticated"];

  asserted = [(CTTetheringStatus *)self asserted];
  [coderCopy encodeObject:asserted forKey:@"asserted"];

  activationFailure = [(CTTetheringStatus *)self activationFailure];
  [coderCopy encodeObject:activationFailure forKey:@"activationFailure"];

  misPdpMaxHosts = [(CTTetheringStatus *)self misPdpMaxHosts];
  [coderCopy encodeObject:misPdpMaxHosts forKey:@"misPdpMaxHosts"];

  connectionAvailabilityStatus = [(CTTetheringStatus *)self connectionAvailabilityStatus];
  [coderCopy encodeObject:connectionAvailabilityStatus forKey:@"connectionAvailabilityStatus"];

  connectionStatus = [(CTTetheringStatus *)self connectionStatus];
  [coderCopy encodeObject:connectionStatus forKey:@"connectionStatus"];

  context = [(CTTetheringStatus *)self context];
  [coderCopy encodeObject:context forKey:@"context"];
}

- (CTTetheringStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CTTetheringStatus;
  v5 = [(CTTetheringStatus *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carrierEnabled"];
    carrierEnabled = v5->_carrierEnabled;
    v5->_carrierEnabled = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userAuthenticated"];
    userAuthenticated = v5->_userAuthenticated;
    v5->_userAuthenticated = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asserted"];
    asserted = v5->_asserted;
    v5->_asserted = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activationFailure"];
    activationFailure = v5->_activationFailure;
    v5->_activationFailure = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"misPdpMaxHosts"];
    misPdpMaxHosts = v5->_misPdpMaxHosts;
    v5->_misPdpMaxHosts = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectionAvailabilityStatus"];
    connectionAvailabilityStatus = v5->_connectionAvailabilityStatus;
    v5->_connectionAvailabilityStatus = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectionStatus"];
    connectionStatus = v5->_connectionStatus;
    v5->_connectionStatus = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v20;
  }

  return v5;
}

@end