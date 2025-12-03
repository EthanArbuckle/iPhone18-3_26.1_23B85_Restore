@interface AACustodianInvitationResponseContext
- (AACustodianInvitationResponseContext)initWithCoder:(id)coder;
- (AACustodianInvitationResponseContext)initWithCustodianID:(id)d didAccept:(BOOL)accept;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AACustodianInvitationResponseContext

- (AACustodianInvitationResponseContext)initWithCustodianID:(id)d didAccept:(BOOL)accept
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = AACustodianInvitationResponseContext;
  v8 = [(AACustodianInvitationResponseContext *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_custodianID, d);
    v9->_accepted = accept;
    v9->_autoAction = 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    telemetryFlowID = v9->_telemetryFlowID;
    v9->_telemetryFlowID = uUIDString;
  }

  return v9;
}

- (AACustodianInvitationResponseContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AACustodianInvitationResponseContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianID"];
    custodianID = v5->_custodianID;
    v5->_custodianID = v6;

    v5->_accepted = [coderCopy decodeBoolForKey:@"_accepted"];
    v5->_autoAction = [coderCopy decodeBoolForKey:@"_autoAction"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  custodianID = self->_custodianID;
  coderCopy = coder;
  [coderCopy encodeObject:custodianID forKey:@"_custodianID"];
  [coderCopy encodeBool:self->_accepted forKey:@"_accepted"];
  [coderCopy encodeBool:self->_autoAction forKey:@"_autoAction"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
  [coderCopy encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
}

@end