@interface AACustodianInvitationResponseContext
- (AACustodianInvitationResponseContext)initWithCoder:(id)a3;
- (AACustodianInvitationResponseContext)initWithCustodianID:(id)a3 didAccept:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AACustodianInvitationResponseContext

- (AACustodianInvitationResponseContext)initWithCustodianID:(id)a3 didAccept:(BOOL)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = AACustodianInvitationResponseContext;
  v8 = [(AACustodianInvitationResponseContext *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_custodianID, a3);
    v9->_accepted = a4;
    v9->_autoAction = 0;
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    telemetryFlowID = v9->_telemetryFlowID;
    v9->_telemetryFlowID = v11;
  }

  return v9;
}

- (AACustodianInvitationResponseContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AACustodianInvitationResponseContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianID"];
    custodianID = v5->_custodianID;
    v5->_custodianID = v6;

    v5->_accepted = [v4 decodeBoolForKey:@"_accepted"];
    v5->_autoAction = [v4 decodeBoolForKey:@"_autoAction"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  custodianID = self->_custodianID;
  v5 = a3;
  [v5 encodeObject:custodianID forKey:@"_custodianID"];
  [v5 encodeBool:self->_accepted forKey:@"_accepted"];
  [v5 encodeBool:self->_autoAction forKey:@"_autoAction"];
  [v5 encodeObject:self->_altDSID forKey:@"_altDSID"];
  [v5 encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
}

@end