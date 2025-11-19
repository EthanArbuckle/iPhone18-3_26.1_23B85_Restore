@interface CTCellularPlanProvisioningOnDeviceActivationRequest
- (BOOL)isEqual:(id)a3;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)init;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithCoder:(id)a3;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)a3 installIccid:(id)a4 sourceIccid:(id)a5 unusableIccid:(id)a6 phoneNumber:(id)a7 mcc:(id)a8 mnc:(id)a9 gid1:(id)a10 gid2:(id)a11 smdp:(id)a12 useDS:(BOOL)a13 esim:(BOOL)a14;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)a3 installIccid:(id)a4 sourceIccid:(id)a5 unusableIccid:(id)a6 phoneNumber:(id)a7 mcc:(id)a8 mnc:(id)a9 gid1:(id)a10 gid2:(id)a11 smdp:(id)a12 useDS:(BOOL)a13 esim:(BOOL)a14 flowType:(id)a15;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)a3 installIccid:(id)a4 sourceIccid:(id)a5 unusableIccid:(id)a6 phoneNumber:(id)a7 mcc:(id)a8 mnc:(id)a9 gid1:(id)a10 gid2:(id)a11 smdp:(id)a12 useDS:(BOOL)a13 esim:(BOOL)a14 flowType:(id)a15 portIn:(BOOL)a16;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithEid:(id)a3 installIccid:(id)a4 sourceIccid:(id)a5 phoneNumber:(id)a6 mcc:(id)a7 mnc:(id)a8 gid1:(id)a9 gid2:(id)a10 smdp:(id)a11 useDS:(BOOL)a12 esim:(BOOL)a13;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCellularPlanProvisioningOnDeviceActivationRequest

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"\n<%@ %p", objc_opt_class(), self];
  v4 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self eid];
  [v3 appendFormat:@"\n\t EID          = %@", v4];

  v5 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self iccid];
  [v3 appendFormat:@"\n\t ICCID        = %@", v5];

  v6 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self sourceIccid];
  [v3 appendFormat:@"\n\t Source ICCID = %@", v6];

  v7 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self unusableIccid];
  [v3 appendFormat:@"\n\t Unusable ICCID = %@", v7];

  v8 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self phoneNumber];
  [v3 appendFormat:@"\n\t Phone Number = %@", v8];

  v9 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self mcc];
  [v3 appendFormat:@"\n\t MCC          = %@", v9];

  v10 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self mnc];
  [v3 appendFormat:@"\n\t MNC          = %@", v10];

  v11 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self gid1];
  [v3 appendFormat:@"\n\t GID1         = %@", v11];

  v12 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self gid2];
  [v3 appendFormat:@"\n\t GID2         = %@", v12];

  v13 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self smdpAddress];
  [v3 appendFormat:@"\n\t SMDP Address = %@", v13];

  if ([(CTCellularPlanProvisioningOnDeviceActivationRequest *)self useDS])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v3 appendFormat:@"\n\t DS           = %@", v14];
  if ([(CTCellularPlanProvisioningOnDeviceActivationRequest *)self isESim])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v3 appendFormat:@"\n\t ESIM         = %@", v15];
  v16 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self flowType];
  [v3 appendFormat:@"\n\t Flow Type    = %@", v16];

  if ([(CTCellularPlanProvisioningOnDeviceActivationRequest *)self portIn])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v3 appendFormat:@"\n\t Port In      = %@", v17];
  [v3 appendString:@"\n\t>"];

  return v3;
}

- (CTCellularPlanProvisioningOnDeviceActivationRequest)init
{
  v3.receiver = self;
  v3.super_class = CTCellularPlanProvisioningOnDeviceActivationRequest;
  result = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)&v3 init];
  if (result)
  {
    *&result->_useDS = 1;
  }

  return result;
}

- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithEid:(id)a3 installIccid:(id)a4 sourceIccid:(id)a5 phoneNumber:(id)a6 mcc:(id)a7 mnc:(id)a8 gid1:(id)a9 gid2:(id)a10 smdp:(id)a11 useDS:(BOOL)a12 esim:(BOOL)a13
{
  LOBYTE(v15) = 0;
  LOWORD(v14) = __PAIR16__(a13, a12);
  return [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self initWithDetails:a3 installIccid:a4 sourceIccid:a5 unusableIccid:0 phoneNumber:a6 mcc:a7 mnc:a8 gid1:a9 gid2:a10 smdp:a11 useDS:v14 esim:0 flowType:v15 portIn:?];
}

- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)a3 installIccid:(id)a4 sourceIccid:(id)a5 unusableIccid:(id)a6 phoneNumber:(id)a7 mcc:(id)a8 mnc:(id)a9 gid1:(id)a10 gid2:(id)a11 smdp:(id)a12 useDS:(BOOL)a13 esim:(BOOL)a14
{
  LOBYTE(v16) = 0;
  LOWORD(v15) = __PAIR16__(a14, a13);
  return [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self initWithDetails:a3 installIccid:a4 sourceIccid:a5 unusableIccid:a6 phoneNumber:a7 mcc:a8 mnc:a9 gid1:a10 gid2:a11 smdp:a12 useDS:v15 esim:0 flowType:v16 portIn:?];
}

- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)a3 installIccid:(id)a4 sourceIccid:(id)a5 unusableIccid:(id)a6 phoneNumber:(id)a7 mcc:(id)a8 mnc:(id)a9 gid1:(id)a10 gid2:(id)a11 smdp:(id)a12 useDS:(BOOL)a13 esim:(BOOL)a14 flowType:(id)a15
{
  v20 = a3;
  v21 = a4;
  v53 = a5;
  v52 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a15;
  v54.receiver = self;
  v54.super_class = CTCellularPlanProvisioningOnDeviceActivationRequest;
  v29 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)&v54 init];
  if (v29)
  {
    v30 = [v21 copy];
    iccid = v29->_iccid;
    v29->_iccid = v30;

    v32 = [v20 copy];
    eid = v29->_eid;
    v29->_eid = v32;

    v34 = [v22 copy];
    phoneNumber = v29->_phoneNumber;
    v29->_phoneNumber = v34;

    v36 = [v53 copy];
    sourceIccid = v29->_sourceIccid;
    v29->_sourceIccid = v36;

    v38 = [v52 copy];
    unusableIccid = v29->_unusableIccid;
    v29->_unusableIccid = v38;

    v40 = [v23 copy];
    mcc = v29->_mcc;
    v29->_mcc = v40;

    v42 = [v24 copy];
    mnc = v29->_mnc;
    v29->_mnc = v42;

    v44 = [v25 copy];
    gid1 = v29->_gid1;
    v29->_gid1 = v44;

    v46 = [v26 copy];
    gid2 = v29->_gid2;
    v29->_gid2 = v46;

    v48 = [v27 copy];
    smdpAddress = v29->_smdpAddress;
    v29->_smdpAddress = v48;

    v29->_useDS = a13;
    v29->_isESim = a14;
    objc_storeStrong(&v29->_flowType, a15);
  }

  return v29;
}

- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)a3 installIccid:(id)a4 sourceIccid:(id)a5 unusableIccid:(id)a6 phoneNumber:(id)a7 mcc:(id)a8 mnc:(id)a9 gid1:(id)a10 gid2:(id)a11 smdp:(id)a12 useDS:(BOOL)a13 esim:(BOOL)a14 flowType:(id)a15 portIn:(BOOL)a16
{
  v21 = a3;
  v22 = a4;
  v54 = a5;
  v53 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a15;
  v55.receiver = self;
  v55.super_class = CTCellularPlanProvisioningOnDeviceActivationRequest;
  v30 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)&v55 init];
  if (v30)
  {
    v31 = [v22 copy];
    iccid = v30->_iccid;
    v30->_iccid = v31;

    v33 = [v21 copy];
    eid = v30->_eid;
    v30->_eid = v33;

    v35 = [v23 copy];
    phoneNumber = v30->_phoneNumber;
    v30->_phoneNumber = v35;

    v37 = [v54 copy];
    sourceIccid = v30->_sourceIccid;
    v30->_sourceIccid = v37;

    v39 = [v53 copy];
    unusableIccid = v30->_unusableIccid;
    v30->_unusableIccid = v39;

    v41 = [v24 copy];
    mcc = v30->_mcc;
    v30->_mcc = v41;

    v43 = [v25 copy];
    mnc = v30->_mnc;
    v30->_mnc = v43;

    v45 = [v26 copy];
    gid1 = v30->_gid1;
    v30->_gid1 = v45;

    v47 = [v27 copy];
    gid2 = v30->_gid2;
    v30->_gid2 = v47;

    v49 = [v28 copy];
    smdpAddress = v30->_smdpAddress;
    v30->_smdpAddress = v49;

    v30->_useDS = a13;
    v30->_isESim = a14;
    objc_storeStrong(&v30->_flowType, a15);
    v30->_portIn = a16;
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = [objc_opt_class() allocWithZone:a3];
  v4 = [(NSString *)self->_eid copy];
  v20 = [(NSString *)self->_iccid copy];
  v17 = [(NSString *)self->_sourceIccid copy];
  v16 = [(NSString *)self->_unusableIccid copy];
  v5 = [(NSString *)self->_phoneNumber copy];
  v6 = [(NSString *)self->_mcc copy];
  v15 = [(NSString *)self->_mnc copy];
  v7 = [(NSString *)self->_gid1 copy];
  v8 = [(NSString *)self->_gid2 copy];
  v9 = [(NSString *)self->_smdpAddress copy];
  v10 = *&self->_useDS;
  v11 = [(NSString *)self->_flowType copy];
  LOBYTE(v14) = self->_portIn;
  LOWORD(v13) = v10;
  v19 = [v18 initWithDetails:v4 installIccid:v20 sourceIccid:v17 unusableIccid:v16 phoneNumber:v5 mcc:v6 mnc:v15 gid1:v7 gid2:v8 smdp:v9 useDS:v13 esim:v11 flowType:v14 portIn:?];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v24) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      eid = self->_eid;
      v6 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 eid];
      if ([(NSString *)eid isEqualToString:v6])
      {
        iccid = self->_iccid;
        v8 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 iccid];
        if ([(NSString *)iccid isEqualToString:v8])
        {
          sourceIccid = self->_sourceIccid;
          v10 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 sourceIccid];
          if ([(NSString *)sourceIccid isEqualToString:v10])
          {
            unusableIccid = self->_unusableIccid;
            v12 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 unusableIccid];
            if ([(NSString *)unusableIccid isEqualToString:v12])
            {
              phoneNumber = self->_phoneNumber;
              v14 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 phoneNumber];
              if ([(NSString *)phoneNumber isEqualToString:v14])
              {
                mcc = self->_mcc;
                v16 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 mcc];
                if ([(NSString *)mcc isEqualToString:v16])
                {
                  mnc = self->_mnc;
                  v18 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 mnc];
                  if ([(NSString *)mnc isEqualToString:v18])
                  {
                    gid1 = self->_gid1;
                    v33 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 gid1];
                    if ([(NSString *)gid1 isEqualToString:?])
                    {
                      gid2 = self->_gid2;
                      v32 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 gid2];
                      if ([(NSString *)gid2 isEqualToString:?])
                      {
                        smdpAddress = self->_smdpAddress;
                        v31 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 smdpAddress];
                        if ([(NSString *)smdpAddress isEqualToString:?]&& (v22 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self useDS], v22 == [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 useDS]) && (v23 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self isESim], v23 == [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 isESim]))
                        {
                          flowType = self->_flowType;
                          v27 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 flowType];
                          v28 = flowType;
                          v29 = v27;
                          if ([(NSString *)v28 isEqualToString:?])
                          {
                            v30 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self portIn];
                            v24 = v30 ^ [(CTCellularPlanProvisioningOnDeviceActivationRequest *)v4 portIn]^ 1;
                          }

                          else
                          {
                            LOBYTE(v24) = 0;
                          }
                        }

                        else
                        {
                          LOBYTE(v24) = 0;
                        }
                      }

                      else
                      {
                        LOBYTE(v24) = 0;
                      }
                    }

                    else
                    {
                      LOBYTE(v24) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v24) = 0;
                  }
                }

                else
                {
                  LOBYTE(v24) = 0;
                }
              }

              else
              {
                LOBYTE(v24) = 0;
              }
            }

            else
            {
              LOBYTE(v24) = 0;
            }
          }

          else
          {
            LOBYTE(v24) = 0;
          }
        }

        else
        {
          LOBYTE(v24) = 0;
        }
      }

      else
      {
        LOBYTE(v24) = 0;
      }
    }

    else
    {
      LOBYTE(v24) = 0;
    }
  }

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  eid = self->_eid;
  v5 = a3;
  [v5 encodeObject:eid forKey:@"eid"];
  [v5 encodeObject:self->_iccid forKey:@"iccid"];
  [v5 encodeObject:self->_sourceIccid forKey:@"sourceIccid"];
  [v5 encodeObject:self->_unusableIccid forKey:@"unusableIccid"];
  [v5 encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [v5 encodeObject:self->_mcc forKey:@"mcc"];
  [v5 encodeObject:self->_mnc forKey:@"mnc"];
  [v5 encodeObject:self->_gid1 forKey:@"gid1"];
  [v5 encodeObject:self->_gid2 forKey:@"gid2"];
  [v5 encodeObject:self->_smdpAddress forKey:@"smdpAddress"];
  [v5 encodeBool:self->_useDS forKey:@"useDS"];
  [v5 encodeBool:self->_isESim forKey:@"isESim"];
  [v5 encodeObject:self->_flowType forKey:@"flowType"];
  [v5 encodeBool:self->_portIn forKey:@"portIn"];
}

- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CTCellularPlanProvisioningOnDeviceActivationRequest;
  v5 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eid"];
    eid = v5->_eid;
    v5->_eid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iccid"];
    iccid = v5->_iccid;
    v5->_iccid = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIccid"];
    sourceIccid = v5->_sourceIccid;
    v5->_sourceIccid = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unusableIccid"];
    unusableIccid = v5->_unusableIccid;
    v5->_unusableIccid = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mcc"];
    mcc = v5->_mcc;
    v5->_mcc = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mnc"];
    mnc = v5->_mnc;
    v5->_mnc = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gid1"];
    gid1 = v5->_gid1;
    v5->_gid1 = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gid2"];
    gid2 = v5->_gid2;
    v5->_gid2 = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smdpAddress"];
    smdpAddress = v5->_smdpAddress;
    v5->_smdpAddress = v24;

    v5->_useDS = [v4 decodeBoolForKey:@"useDS"];
    v5->_isESim = [v4 decodeBoolForKey:@"isESim"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flowType"];
    flowType = v5->_flowType;
    v5->_flowType = v26;

    v5->_portIn = [v4 decodeBoolForKey:@"portIn"];
  }

  return v5;
}

@end