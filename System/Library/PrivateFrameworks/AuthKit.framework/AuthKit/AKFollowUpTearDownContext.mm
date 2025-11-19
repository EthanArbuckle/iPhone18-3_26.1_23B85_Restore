@interface AKFollowUpTearDownContext
- (AKFollowUpTearDownContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKFollowUpTearDownContext

- (AKFollowUpTearDownContext)initWithCoder:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v22;
  v22 = 0;
  v20.receiver = v3;
  v20.super_class = AKFollowUpTearDownContext;
  v19 = [(AKFollowUpTearDownContext *)&v20 init];
  v22 = v19;
  objc_storeStrong(&v22, v19);
  if (v19)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v22->_altDSID;
    v22->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_akAction"];
    akAction = v22->_akAction;
    v22->_akAction = v6;
    MEMORY[0x1E69E5920](akAction);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v22->_itemIdentifier;
    v22->_itemIdentifier = v8;
    MEMORY[0x1E69E5920](itemIdentifier);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_txnid"];
    txnid = v22->_txnid;
    v22->_txnid = v10;
    MEMORY[0x1E69E5920](txnid);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_idmsData"];
    idmsData = v22->_idmsData;
    v22->_idmsData = v12;
    MEMORY[0x1E69E5920](idmsData);
    v14 = [location[0] decodeBoolForKey:@"_isContinuityPush"];
    v22->_isContinuityPush = v14;
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_telemetryFlowID"];
    telemetryFlowID = v22->_telemetryFlowID;
    v22->_telemetryFlowID = v15;
    MEMORY[0x1E69E5920](telemetryFlowID);
  }

  v18 = MEMORY[0x1E69E5928](v22);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:v4->_akAction forKey:@"_akAction"];
  [location[0] encodeObject:v4->_itemIdentifier forKey:@"_itemIdentifier"];
  [location[0] encodeObject:v4->_txnid forKey:@"_txnid"];
  [location[0] encodeObject:v4->_idmsData forKey:@"_idmsData"];
  [location[0] encodeBool:v4->_isContinuityPush forKey:@"_isContinuityPush"];
  [location[0] encodeObject:v4->_telemetryFlowID forKey:@"_telemetryFlowID"];
  objc_storeStrong(location, 0);
}

@end