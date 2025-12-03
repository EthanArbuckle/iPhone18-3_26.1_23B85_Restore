@interface AACustodianUpdateRequestContext
- (AACustodianUpdateRequestContext)initWithCoder:(id)coder;
- (AACustodianUpdateRequestContext)initWithCustodianID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AACustodianUpdateRequestContext

- (AACustodianUpdateRequestContext)initWithCustodianID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = AACustodianUpdateRequestContext;
  v6 = [(AACustodianUpdateRequestContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_custodianID, d);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    telemetryFlowID = v7->_telemetryFlowID;
    v7->_telemetryFlowID = uUIDString;
  }

  return v7;
}

- (AACustodianUpdateRequestContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AACustodianUpdateRequestContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianID"];
    custodianID = v5->_custodianID;
    v5->_custodianID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  custodianID = self->_custodianID;
  coderCopy = coder;
  [coderCopy encodeObject:custodianID forKey:@"_custodianID"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
  [coderCopy encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
}

@end