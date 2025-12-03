@interface AKFollowUpTearDownContext
- (AKFollowUpTearDownContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKFollowUpTearDownContext

- (AKFollowUpTearDownContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v20.receiver = v3;
  v20.super_class = AKFollowUpTearDownContext;
  v19 = [(AKFollowUpTearDownContext *)&v20 init];
  selfCopy = v19;
  objc_storeStrong(&selfCopy, v19);
  if (v19)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_akAction"];
    akAction = selfCopy->_akAction;
    selfCopy->_akAction = v6;
    MEMORY[0x1E69E5920](akAction);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = selfCopy->_itemIdentifier;
    selfCopy->_itemIdentifier = v8;
    MEMORY[0x1E69E5920](itemIdentifier);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_txnid"];
    txnid = selfCopy->_txnid;
    selfCopy->_txnid = v10;
    MEMORY[0x1E69E5920](txnid);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_idmsData"];
    idmsData = selfCopy->_idmsData;
    selfCopy->_idmsData = v12;
    MEMORY[0x1E69E5920](idmsData);
    v14 = [location[0] decodeBoolForKey:@"_isContinuityPush"];
    selfCopy->_isContinuityPush = v14;
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = selfCopy->_telemetryFlowID;
    selfCopy->_telemetryFlowID = v15;
    MEMORY[0x1E69E5920](telemetryFlowID);
  }

  v18 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:selfCopy->_akAction forKey:@"_akAction"];
  [location[0] encodeObject:selfCopy->_itemIdentifier forKey:@"_itemIdentifier"];
  [location[0] encodeObject:selfCopy->_txnid forKey:@"_txnid"];
  [location[0] encodeObject:selfCopy->_idmsData forKey:@"_idmsData"];
  [location[0] encodeBool:selfCopy->_isContinuityPush forKey:@"_isContinuityPush"];
  [location[0] encodeObject:selfCopy->_telemetryFlowID forKey:@"_telemetryFlowID"];
  objc_storeStrong(location, 0);
}

@end