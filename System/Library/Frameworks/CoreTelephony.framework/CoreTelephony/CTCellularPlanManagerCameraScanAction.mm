@interface CTCellularPlanManagerCameraScanAction
- (CTCellularPlanManagerCameraScanAction)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)performWithAppName:(id)name completionHandler:(id)handler;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation CTCellularPlanManagerCameraScanAction

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  message = [(CTCellularPlanManagerCameraScanAction *)self message];
  [v3 appendFormat:@", message=%@", message];

  title = [(CTCellularPlanManagerCameraScanAction *)self title];
  [v3 appendFormat:@", title=%@", title];

  smdpAddress = [(CTCellularPlanManagerCameraScanAction *)self smdpAddress];
  [v3 appendFormat:@", smdpAddress=%@", smdpAddress];

  matchingId = [(CTCellularPlanManagerCameraScanAction *)self matchingId];
  [v3 appendFormat:@", matchingId=%@", matchingId];

  v8 = [(CTCellularPlanManagerCameraScanAction *)self OID];
  [v3 appendFormat:@", oid=%@", v8];

  [v3 appendString:@">"];

  return v3;
}

- (void)performWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E696AAE8];
  handlerCopy = handler;
  v7 = [v4 bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"CAMERA" value:&stru_1EF016BD0 table:@"CBMessage"];
  [(CTCellularPlanManagerCameraScanAction *)self performWithAppName:v6 completionHandler:handlerCopy];
}

- (void)performWithAppName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  v8 = [CoreTelephonyClient alloc];
  v10 = [(CoreTelephonyClient *)v8 initWithQueue:MEMORY[0x1E69E96A0]];
  v9 = objc_alloc_init(CTCellularPlanProvisioningRequest);
  [(CTCellularPlanProvisioningRequest *)v9 setAddress:self->_smdpAddress];
  [(CTCellularPlanProvisioningRequest *)v9 setMatchingID:self->_matchingId];
  [(CTCellularPlanProvisioningRequest *)v9 setOID:self->_OID];
  [(CoreTelephonyClient *)v10 addPlanWith:v9 appName:nameCopy appType:1 completionHandler:&__block_literal_global_3];

  handlerCopy[2](handlerCopy, 0);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  message = [(CTCellularPlanManagerCameraScanAction *)self message];
  v6 = [message copy];
  [v4 setMessage:v6];

  title = [(CTCellularPlanManagerCameraScanAction *)self title];
  v8 = [title copy];
  [v4 setTitle:v8];

  smdpAddress = [(CTCellularPlanManagerCameraScanAction *)self smdpAddress];
  v10 = [smdpAddress copy];
  [v4 setSmdpAddress:v10];

  matchingId = [(CTCellularPlanManagerCameraScanAction *)self matchingId];
  v12 = [matchingId copy];
  [v4 setMatchingId:v12];

  v13 = [(CTCellularPlanManagerCameraScanAction *)self OID];
  v14 = [v13 copy];
  [v4 setOID:v14];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  message = [(CTCellularPlanManagerCameraScanAction *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  title = [(CTCellularPlanManagerCameraScanAction *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  smdpAddress = [(CTCellularPlanManagerCameraScanAction *)self smdpAddress];
  [coderCopy encodeObject:smdpAddress forKey:@"smdpaddress"];

  matchingId = [(CTCellularPlanManagerCameraScanAction *)self matchingId];
  [coderCopy encodeObject:matchingId forKey:@"matchingid"];

  v9 = [(CTCellularPlanManagerCameraScanAction *)self OID];
  [coderCopy encodeObject:v9 forKey:@"oid"];
}

- (CTCellularPlanManagerCameraScanAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CTCellularPlanManagerCameraScanAction;
  v5 = [(CTCellularPlanManagerCameraScanAction *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smdpaddress"];
    smdpAddress = v5->_smdpAddress;
    v5->_smdpAddress = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchingid"];
    matchingId = v5->_matchingId;
    v5->_matchingId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oid"];
    OID = v5->_OID;
    v5->_OID = v14;
  }

  return v5;
}

@end