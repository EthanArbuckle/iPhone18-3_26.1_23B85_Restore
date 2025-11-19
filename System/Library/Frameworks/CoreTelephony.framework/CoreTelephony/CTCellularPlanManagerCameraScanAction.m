@interface CTCellularPlanManagerCameraScanAction
- (CTCellularPlanManagerCameraScanAction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)performWithAppName:(id)a3 completionHandler:(id)a4;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation CTCellularPlanManagerCameraScanAction

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTCellularPlanManagerCameraScanAction *)self message];
  [v3 appendFormat:@", message=%@", v4];

  v5 = [(CTCellularPlanManagerCameraScanAction *)self title];
  [v3 appendFormat:@", title=%@", v5];

  v6 = [(CTCellularPlanManagerCameraScanAction *)self smdpAddress];
  [v3 appendFormat:@", smdpAddress=%@", v6];

  v7 = [(CTCellularPlanManagerCameraScanAction *)self matchingId];
  [v3 appendFormat:@", matchingId=%@", v7];

  v8 = [(CTCellularPlanManagerCameraScanAction *)self OID];
  [v3 appendFormat:@", oid=%@", v8];

  [v3 appendString:@">"];

  return v3;
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v7 = [v4 bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"CAMERA" value:&stru_1EF016BD0 table:@"CBMessage"];
  [(CTCellularPlanManagerCameraScanAction *)self performWithAppName:v6 completionHandler:v5];
}

- (void)performWithAppName:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CoreTelephonyClient alloc];
  v10 = [(CoreTelephonyClient *)v8 initWithQueue:MEMORY[0x1E69E96A0]];
  v9 = objc_alloc_init(CTCellularPlanProvisioningRequest);
  [(CTCellularPlanProvisioningRequest *)v9 setAddress:self->_smdpAddress];
  [(CTCellularPlanProvisioningRequest *)v9 setMatchingID:self->_matchingId];
  [(CTCellularPlanProvisioningRequest *)v9 setOID:self->_OID];
  [(CoreTelephonyClient *)v10 addPlanWith:v9 appName:v7 appType:1 completionHandler:&__block_literal_global_3];

  v6[2](v6, 0);
}

void __78__CTCellularPlanManagerCameraScanAction_performWithAppName_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((a2 - 1) > 2)
  {
    NSLog(&cfstr_RecievedCallba_2.isa);
  }

  else
  {
    NSLog(*(&off_1E6A46350 + a2 - 1));
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTCellularPlanManagerCameraScanAction *)self message];
  v6 = [v5 copy];
  [v4 setMessage:v6];

  v7 = [(CTCellularPlanManagerCameraScanAction *)self title];
  v8 = [v7 copy];
  [v4 setTitle:v8];

  v9 = [(CTCellularPlanManagerCameraScanAction *)self smdpAddress];
  v10 = [v9 copy];
  [v4 setSmdpAddress:v10];

  v11 = [(CTCellularPlanManagerCameraScanAction *)self matchingId];
  v12 = [v11 copy];
  [v4 setMatchingId:v12];

  v13 = [(CTCellularPlanManagerCameraScanAction *)self OID];
  v14 = [v13 copy];
  [v4 setOID:v14];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTCellularPlanManagerCameraScanAction *)self message];
  [v4 encodeObject:v5 forKey:@"message"];

  v6 = [(CTCellularPlanManagerCameraScanAction *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(CTCellularPlanManagerCameraScanAction *)self smdpAddress];
  [v4 encodeObject:v7 forKey:@"smdpaddress"];

  v8 = [(CTCellularPlanManagerCameraScanAction *)self matchingId];
  [v4 encodeObject:v8 forKey:@"matchingid"];

  v9 = [(CTCellularPlanManagerCameraScanAction *)self OID];
  [v4 encodeObject:v9 forKey:@"oid"];
}

- (CTCellularPlanManagerCameraScanAction)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CTCellularPlanManagerCameraScanAction;
  v5 = [(CTCellularPlanManagerCameraScanAction *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smdpaddress"];
    smdpAddress = v5->_smdpAddress;
    v5->_smdpAddress = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchingid"];
    matchingId = v5->_matchingId;
    v5->_matchingId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"oid"];
    OID = v5->_OID;
    v5->_OID = v14;
  }

  return v5;
}

@end