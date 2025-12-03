@interface CTMmsRegistrationFailureInfoType
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTMmsRegistrationFailureInfoType:(id)type;
- (CTMmsRegistrationFailureInfoType)init;
- (CTMmsRegistrationFailureInfoType)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTMmsRegistrationFailureInfoType

- (CTMmsRegistrationFailureInfoType)init
{
  v5.receiver = self;
  v5.super_class = CTMmsRegistrationFailureInfoType;
  v2 = [(CTMmsRegistrationFailureInfoType *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [(CTMmsRegistrationFailureInfoType *)v2 setPdpContextId:v3];

    [(CTMmsRegistrationFailureInfoType *)v2 setDataActive:0];
    [(CTMmsRegistrationFailureInfoType *)v2 setIsDataAttached:0];
    [(CTMmsRegistrationFailureInfoType *)v2 setActivationForMms:1];
  }

  return v2;
}

- (BOOL)isEqualToCTMmsRegistrationFailureInfoType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    pdpContextId = [(CTMmsRegistrationFailureInfoType *)self pdpContextId];
    pdpContextId2 = [typeCopy pdpContextId];
    if (pdpContextId == pdpContextId2 && (v7 = -[CTMmsRegistrationFailureInfoType dataActive](self, "dataActive"), v7 == [typeCopy dataActive]) && (v8 = -[CTMmsRegistrationFailureInfoType isDataAttached](self, "isDataAttached"), v8 == objc_msgSend(typeCopy, "isDataAttached")))
    {
      activationForMms = [(CTMmsRegistrationFailureInfoType *)self activationForMms];
      v9 = activationForMms ^ [typeCopy activationForMms] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTMmsRegistrationFailureInfoType *)self isEqualToCTMmsRegistrationFailureInfoType:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  pdpContextId = [(CTMmsRegistrationFailureInfoType *)self pdpContextId];
  [v4 setPdpContextId:pdpContextId];

  [v4 setDataActive:{-[CTMmsRegistrationFailureInfoType dataActive](self, "dataActive")}];
  [v4 setIsDataAttached:{-[CTMmsRegistrationFailureInfoType isDataAttached](self, "isDataAttached")}];
  [v4 setActivationForMms:{-[CTMmsRegistrationFailureInfoType activationForMms](self, "activationForMms")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  pdpContextId = self->_pdpContextId;
  coderCopy = coder;
  [coderCopy encodeObject:pdpContextId forKey:@"pdp_context_id"];
  [coderCopy encodeBool:self->_dataActive forKey:@"data_active"];
  [coderCopy encodeBool:self->_isDataAttached forKey:@"is_data_attached"];
  [coderCopy encodeBool:self->_activationForMms forKey:@"activation_for_mms"];
}

- (CTMmsRegistrationFailureInfoType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTMmsRegistrationFailureInfoType;
  v5 = [(CTMmsRegistrationFailureInfoType *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pdp_context_id"];
    pdpContextId = v5->_pdpContextId;
    v5->_pdpContextId = v6;

    v5->_dataActive = [coderCopy decodeBoolForKey:@"data_active"];
    v5->_isDataAttached = [coderCopy decodeBoolForKey:@"is_data_attached"];
    v5->_activationForMms = [coderCopy decodeBoolForKey:@"activation_for_mms"];
  }

  return v5;
}

@end