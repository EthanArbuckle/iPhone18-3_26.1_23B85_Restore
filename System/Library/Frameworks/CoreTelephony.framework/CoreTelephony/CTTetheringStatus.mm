@interface CTTetheringStatus
- (CTTetheringStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTTetheringStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTTetheringStatus *)self carrierEnabled];
  [v3 appendFormat:@", carrierEnabled=%@", v4];

  v5 = [(CTTetheringStatus *)self userAuthenticated];
  [v3 appendFormat:@", userAuthenticated=%@", v5];

  v6 = [(CTTetheringStatus *)self asserted];
  [v3 appendFormat:@", asserted=%@", v6];

  v7 = [(CTTetheringStatus *)self activationFailure];
  [v3 appendFormat:@", activationFailure=%@", v7];

  v8 = [(CTTetheringStatus *)self misPdpMaxHosts];
  [v3 appendFormat:@", misPdpMaxHosts=%@", v8];

  v9 = [(CTTetheringStatus *)self connectionAvailabilityStatus];
  [v3 appendFormat:@", connectionAvailabilityStatus=%@", v9];

  v10 = [(CTTetheringStatus *)self connectionStatus];
  [v3 appendFormat:@", connectionStatus=%@", v10];

  v11 = [(CTTetheringStatus *)self context];
  [v3 appendFormat:@", context=%@", v11];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTTetheringStatus *)self carrierEnabled];
  v6 = [v5 copy];
  [v4 setCarrierEnabled:v6];

  v7 = [(CTTetheringStatus *)self userAuthenticated];
  v8 = [v7 copy];
  [v4 setUserAuthenticated:v8];

  v9 = [(CTTetheringStatus *)self asserted];
  v10 = [v9 copy];
  [v4 setAsserted:v10];

  v11 = [(CTTetheringStatus *)self activationFailure];
  v12 = [v11 copy];
  [v4 setActivationFailure:v12];

  v13 = [(CTTetheringStatus *)self misPdpMaxHosts];
  v14 = [v13 copy];
  [v4 setMisPdpMaxHosts:v14];

  v15 = [(CTTetheringStatus *)self connectionAvailabilityStatus];
  v16 = [v15 copy];
  [v4 setConnectionAvailabilityStatus:v16];

  v17 = [(CTTetheringStatus *)self connectionStatus];
  v18 = [v17 copy];
  [v4 setConnectionStatus:v18];

  v19 = [(CTTetheringStatus *)self context];
  v20 = [v19 copy];
  [v4 setContext:v20];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTTetheringStatus *)self carrierEnabled];
  [v4 encodeObject:v5 forKey:@"carrierEnabled"];

  v6 = [(CTTetheringStatus *)self userAuthenticated];
  [v4 encodeObject:v6 forKey:@"userAuthenticated"];

  v7 = [(CTTetheringStatus *)self asserted];
  [v4 encodeObject:v7 forKey:@"asserted"];

  v8 = [(CTTetheringStatus *)self activationFailure];
  [v4 encodeObject:v8 forKey:@"activationFailure"];

  v9 = [(CTTetheringStatus *)self misPdpMaxHosts];
  [v4 encodeObject:v9 forKey:@"misPdpMaxHosts"];

  v10 = [(CTTetheringStatus *)self connectionAvailabilityStatus];
  [v4 encodeObject:v10 forKey:@"connectionAvailabilityStatus"];

  v11 = [(CTTetheringStatus *)self connectionStatus];
  [v4 encodeObject:v11 forKey:@"connectionStatus"];

  v12 = [(CTTetheringStatus *)self context];
  [v4 encodeObject:v12 forKey:@"context"];
}

- (CTTetheringStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CTTetheringStatus;
  v5 = [(CTTetheringStatus *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carrierEnabled"];
    carrierEnabled = v5->_carrierEnabled;
    v5->_carrierEnabled = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userAuthenticated"];
    userAuthenticated = v5->_userAuthenticated;
    v5->_userAuthenticated = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asserted"];
    asserted = v5->_asserted;
    v5->_asserted = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activationFailure"];
    activationFailure = v5->_activationFailure;
    v5->_activationFailure = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"misPdpMaxHosts"];
    misPdpMaxHosts = v5->_misPdpMaxHosts;
    v5->_misPdpMaxHosts = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectionAvailabilityStatus"];
    connectionAvailabilityStatus = v5->_connectionAvailabilityStatus;
    v5->_connectionAvailabilityStatus = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectionStatus"];
    connectionStatus = v5->_connectionStatus;
    v5->_connectionStatus = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v20;
  }

  return v5;
}

@end