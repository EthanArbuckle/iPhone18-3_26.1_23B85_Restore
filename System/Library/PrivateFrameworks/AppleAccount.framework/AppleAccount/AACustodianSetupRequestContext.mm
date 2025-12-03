@interface AACustodianSetupRequestContext
- (AACustodianSetupRequestContext)initWithCoder:(id)coder;
- (AACustodianSetupRequestContext)initWithHandle:(id)handle authResults:(id)results;
- (void)_parseAuthResults:(id)results;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AACustodianSetupRequestContext

- (AACustodianSetupRequestContext)initWithHandle:(id)handle authResults:(id)results
{
  handleCopy = handle;
  resultsCopy = results;
  v15.receiver = self;
  v15.super_class = AACustodianSetupRequestContext;
  v9 = [(AACustodianSetupRequestContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handle, handle);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    telemetryFlowID = v10->_telemetryFlowID;
    v10->_telemetryFlowID = uUIDString;

    [(AACustodianSetupRequestContext *)v10 _parseAuthResults:resultsCopy];
  }

  return v10;
}

- (AACustodianSetupRequestContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AACustodianSetupRequestContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianSetupToken"];
    custodianSetupToken = v5->_custodianSetupToken;
    v5->_custodianSetupToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactID"];
    contactID = v5->_contactID;
    v5->_contactID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v5->_telemetryFlowID;
    v5->_telemetryFlowID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [coderCopy encodeObject:handle forKey:@"_handle"];
  [coderCopy encodeObject:self->_custodianSetupToken forKey:@"_custodianSetupToken"];
  [coderCopy encodeObject:self->_contactID forKey:@"_contactID"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
  [coderCopy encodeObject:self->_telemetryFlowID forKey:@"_telemetryFlowID"];
}

- (void)_parseAuthResults:(id)results
{
  v6 = [results objectForKeyedSubscript:*MEMORY[0x1E698DB98]];
  v4 = [v6 objectForKeyedSubscript:@"com.apple.gs.idms.custodian.add"];
  custodianSetupToken = self->_custodianSetupToken;
  self->_custodianSetupToken = v4;
}

@end