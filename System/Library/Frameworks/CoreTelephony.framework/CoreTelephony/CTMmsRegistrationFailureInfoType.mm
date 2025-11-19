@interface CTMmsRegistrationFailureInfoType
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTMmsRegistrationFailureInfoType:(id)a3;
- (CTMmsRegistrationFailureInfoType)init;
- (CTMmsRegistrationFailureInfoType)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqualToCTMmsRegistrationFailureInfoType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CTMmsRegistrationFailureInfoType *)self pdpContextId];
    v6 = [v4 pdpContextId];
    if (v5 == v6 && (v7 = -[CTMmsRegistrationFailureInfoType dataActive](self, "dataActive"), v7 == [v4 dataActive]) && (v8 = -[CTMmsRegistrationFailureInfoType isDataAttached](self, "isDataAttached"), v8 == objc_msgSend(v4, "isDataAttached")))
    {
      v11 = [(CTMmsRegistrationFailureInfoType *)self activationForMms];
      v9 = v11 ^ [v4 activationForMms] ^ 1;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTMmsRegistrationFailureInfoType *)self isEqualToCTMmsRegistrationFailureInfoType:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTMmsRegistrationFailureInfoType *)self pdpContextId];
  [v4 setPdpContextId:v5];

  [v4 setDataActive:{-[CTMmsRegistrationFailureInfoType dataActive](self, "dataActive")}];
  [v4 setIsDataAttached:{-[CTMmsRegistrationFailureInfoType isDataAttached](self, "isDataAttached")}];
  [v4 setActivationForMms:{-[CTMmsRegistrationFailureInfoType activationForMms](self, "activationForMms")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  pdpContextId = self->_pdpContextId;
  v5 = a3;
  [v5 encodeObject:pdpContextId forKey:@"pdp_context_id"];
  [v5 encodeBool:self->_dataActive forKey:@"data_active"];
  [v5 encodeBool:self->_isDataAttached forKey:@"is_data_attached"];
  [v5 encodeBool:self->_activationForMms forKey:@"activation_for_mms"];
}

- (CTMmsRegistrationFailureInfoType)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTMmsRegistrationFailureInfoType;
  v5 = [(CTMmsRegistrationFailureInfoType *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pdp_context_id"];
    pdpContextId = v5->_pdpContextId;
    v5->_pdpContextId = v6;

    v5->_dataActive = [v4 decodeBoolForKey:@"data_active"];
    v5->_isDataAttached = [v4 decodeBoolForKey:@"is_data_attached"];
    v5->_activationForMms = [v4 decodeBoolForKey:@"activation_for_mms"];
  }

  return v5;
}

@end