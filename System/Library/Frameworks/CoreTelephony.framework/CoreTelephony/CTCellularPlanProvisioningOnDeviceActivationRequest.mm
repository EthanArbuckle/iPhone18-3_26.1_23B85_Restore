@interface CTCellularPlanProvisioningOnDeviceActivationRequest
- (BOOL)isEqual:(id)equal;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)init;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithCoder:(id)coder;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)details installIccid:(id)iccid sourceIccid:(id)sourceIccid unusableIccid:(id)unusableIccid phoneNumber:(id)number mcc:(id)mcc mnc:(id)mnc gid1:(id)self0 gid2:(id)self1 smdp:(id)self2 useDS:(BOOL)self3 esim:(BOOL)self4;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)details installIccid:(id)iccid sourceIccid:(id)sourceIccid unusableIccid:(id)unusableIccid phoneNumber:(id)number mcc:(id)mcc mnc:(id)mnc gid1:(id)self0 gid2:(id)self1 smdp:(id)self2 useDS:(BOOL)self3 esim:(BOOL)self4 flowType:(id)self5;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)details installIccid:(id)iccid sourceIccid:(id)sourceIccid unusableIccid:(id)unusableIccid phoneNumber:(id)number mcc:(id)mcc mnc:(id)mnc gid1:(id)self0 gid2:(id)self1 smdp:(id)self2 useDS:(BOOL)self3 esim:(BOOL)self4 flowType:(id)self5 portIn:(BOOL)self6;
- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithEid:(id)eid installIccid:(id)iccid sourceIccid:(id)sourceIccid phoneNumber:(id)number mcc:(id)mcc mnc:(id)mnc gid1:(id)gid1 gid2:(id)self0 smdp:(id)self1 useDS:(BOOL)self2 esim:(BOOL)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCellularPlanProvisioningOnDeviceActivationRequest

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"\n<%@ %p", objc_opt_class(), self];
  v4 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self eid];
  [v3 appendFormat:@"\n\t EID          = %@", v4];

  iccid = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self iccid];
  [v3 appendFormat:@"\n\t ICCID        = %@", iccid];

  sourceIccid = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self sourceIccid];
  [v3 appendFormat:@"\n\t Source ICCID = %@", sourceIccid];

  unusableIccid = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self unusableIccid];
  [v3 appendFormat:@"\n\t Unusable ICCID = %@", unusableIccid];

  phoneNumber = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self phoneNumber];
  [v3 appendFormat:@"\n\t Phone Number = %@", phoneNumber];

  v9 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self mcc];
  [v3 appendFormat:@"\n\t MCC          = %@", v9];

  v10 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self mnc];
  [v3 appendFormat:@"\n\t MNC          = %@", v10];

  gid1 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self gid1];
  [v3 appendFormat:@"\n\t GID1         = %@", gid1];

  gid2 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self gid2];
  [v3 appendFormat:@"\n\t GID2         = %@", gid2];

  smdpAddress = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self smdpAddress];
  [v3 appendFormat:@"\n\t SMDP Address = %@", smdpAddress];

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
  flowType = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self flowType];
  [v3 appendFormat:@"\n\t Flow Type    = %@", flowType];

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

- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithEid:(id)eid installIccid:(id)iccid sourceIccid:(id)sourceIccid phoneNumber:(id)number mcc:(id)mcc mnc:(id)mnc gid1:(id)gid1 gid2:(id)self0 smdp:(id)self1 useDS:(BOOL)self2 esim:(BOOL)self3
{
  LOBYTE(v15) = 0;
  LOWORD(v14) = __PAIR16__(esim, s);
  return [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self initWithDetails:eid installIccid:iccid sourceIccid:sourceIccid unusableIccid:0 phoneNumber:number mcc:mcc mnc:mnc gid1:gid1 gid2:gid2 smdp:smdp useDS:v14 esim:0 flowType:v15 portIn:?];
}

- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)details installIccid:(id)iccid sourceIccid:(id)sourceIccid unusableIccid:(id)unusableIccid phoneNumber:(id)number mcc:(id)mcc mnc:(id)mnc gid1:(id)self0 gid2:(id)self1 smdp:(id)self2 useDS:(BOOL)self3 esim:(BOOL)self4
{
  LOBYTE(v16) = 0;
  LOWORD(v15) = __PAIR16__(esim, s);
  return [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self initWithDetails:details installIccid:iccid sourceIccid:sourceIccid unusableIccid:unusableIccid phoneNumber:number mcc:mcc mnc:mnc gid1:gid1 gid2:gid2 smdp:smdp useDS:v15 esim:0 flowType:v16 portIn:?];
}

- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)details installIccid:(id)iccid sourceIccid:(id)sourceIccid unusableIccid:(id)unusableIccid phoneNumber:(id)number mcc:(id)mcc mnc:(id)mnc gid1:(id)self0 gid2:(id)self1 smdp:(id)self2 useDS:(BOOL)self3 esim:(BOOL)self4 flowType:(id)self5
{
  detailsCopy = details;
  iccidCopy = iccid;
  sourceIccidCopy = sourceIccid;
  unusableIccidCopy = unusableIccid;
  numberCopy = number;
  mccCopy = mcc;
  mncCopy = mnc;
  gid1Copy = gid1;
  gid2Copy = gid2;
  smdpCopy = smdp;
  typeCopy = type;
  v54.receiver = self;
  v54.super_class = CTCellularPlanProvisioningOnDeviceActivationRequest;
  v29 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)&v54 init];
  if (v29)
  {
    v30 = [iccidCopy copy];
    iccid = v29->_iccid;
    v29->_iccid = v30;

    v32 = [detailsCopy copy];
    eid = v29->_eid;
    v29->_eid = v32;

    v34 = [numberCopy copy];
    phoneNumber = v29->_phoneNumber;
    v29->_phoneNumber = v34;

    v36 = [sourceIccidCopy copy];
    sourceIccid = v29->_sourceIccid;
    v29->_sourceIccid = v36;

    v38 = [unusableIccidCopy copy];
    unusableIccid = v29->_unusableIccid;
    v29->_unusableIccid = v38;

    v40 = [mccCopy copy];
    mcc = v29->_mcc;
    v29->_mcc = v40;

    v42 = [mncCopy copy];
    mnc = v29->_mnc;
    v29->_mnc = v42;

    v44 = [gid1Copy copy];
    gid1 = v29->_gid1;
    v29->_gid1 = v44;

    v46 = [gid2Copy copy];
    gid2 = v29->_gid2;
    v29->_gid2 = v46;

    v48 = [smdpCopy copy];
    smdpAddress = v29->_smdpAddress;
    v29->_smdpAddress = v48;

    v29->_useDS = s;
    v29->_isESim = esim;
    objc_storeStrong(&v29->_flowType, type);
  }

  return v29;
}

- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithDetails:(id)details installIccid:(id)iccid sourceIccid:(id)sourceIccid unusableIccid:(id)unusableIccid phoneNumber:(id)number mcc:(id)mcc mnc:(id)mnc gid1:(id)self0 gid2:(id)self1 smdp:(id)self2 useDS:(BOOL)self3 esim:(BOOL)self4 flowType:(id)self5 portIn:(BOOL)self6
{
  detailsCopy = details;
  iccidCopy = iccid;
  sourceIccidCopy = sourceIccid;
  unusableIccidCopy = unusableIccid;
  numberCopy = number;
  mccCopy = mcc;
  mncCopy = mnc;
  gid1Copy = gid1;
  gid2Copy = gid2;
  smdpCopy = smdp;
  typeCopy = type;
  v55.receiver = self;
  v55.super_class = CTCellularPlanProvisioningOnDeviceActivationRequest;
  v30 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)&v55 init];
  if (v30)
  {
    v31 = [iccidCopy copy];
    iccid = v30->_iccid;
    v30->_iccid = v31;

    v33 = [detailsCopy copy];
    eid = v30->_eid;
    v30->_eid = v33;

    v35 = [numberCopy copy];
    phoneNumber = v30->_phoneNumber;
    v30->_phoneNumber = v35;

    v37 = [sourceIccidCopy copy];
    sourceIccid = v30->_sourceIccid;
    v30->_sourceIccid = v37;

    v39 = [unusableIccidCopy copy];
    unusableIccid = v30->_unusableIccid;
    v30->_unusableIccid = v39;

    v41 = [mccCopy copy];
    mcc = v30->_mcc;
    v30->_mcc = v41;

    v43 = [mncCopy copy];
    mnc = v30->_mnc;
    v30->_mnc = v43;

    v45 = [gid1Copy copy];
    gid1 = v30->_gid1;
    v30->_gid1 = v45;

    v47 = [gid2Copy copy];
    gid2 = v30->_gid2;
    v30->_gid2 = v47;

    v49 = [smdpCopy copy];
    smdpAddress = v30->_smdpAddress;
    v30->_smdpAddress = v49;

    v30->_useDS = s;
    v30->_isESim = esim;
    objc_storeStrong(&v30->_flowType, type);
    v30->_portIn = in;
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = [objc_opt_class() allocWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v24) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      eid = self->_eid;
      v6 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy eid];
      if ([(NSString *)eid isEqualToString:v6])
      {
        iccid = self->_iccid;
        iccid = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy iccid];
        if ([(NSString *)iccid isEqualToString:iccid])
        {
          sourceIccid = self->_sourceIccid;
          sourceIccid = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy sourceIccid];
          if ([(NSString *)sourceIccid isEqualToString:sourceIccid])
          {
            unusableIccid = self->_unusableIccid;
            unusableIccid = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy unusableIccid];
            if ([(NSString *)unusableIccid isEqualToString:unusableIccid])
            {
              phoneNumber = self->_phoneNumber;
              phoneNumber = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy phoneNumber];
              if ([(NSString *)phoneNumber isEqualToString:phoneNumber])
              {
                mcc = self->_mcc;
                v16 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy mcc];
                if ([(NSString *)mcc isEqualToString:v16])
                {
                  mnc = self->_mnc;
                  v18 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy mnc];
                  if ([(NSString *)mnc isEqualToString:v18])
                  {
                    gid1 = self->_gid1;
                    gid1 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy gid1];
                    if ([(NSString *)gid1 isEqualToString:?])
                    {
                      gid2 = self->_gid2;
                      gid2 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy gid2];
                      if ([(NSString *)gid2 isEqualToString:?])
                      {
                        smdpAddress = self->_smdpAddress;
                        smdpAddress = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy smdpAddress];
                        if ([(NSString *)smdpAddress isEqualToString:?]&& (v22 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self useDS], v22 == [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy useDS]) && (v23 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self isESim], v23 == [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy isESim]))
                        {
                          flowType = self->_flowType;
                          flowType = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy flowType];
                          v28 = flowType;
                          v29 = flowType;
                          if ([(NSString *)v28 isEqualToString:?])
                          {
                            portIn = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)self portIn];
                            v24 = portIn ^ [(CTCellularPlanProvisioningOnDeviceActivationRequest *)equalCopy portIn]^ 1;
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

- (void)encodeWithCoder:(id)coder
{
  eid = self->_eid;
  coderCopy = coder;
  [coderCopy encodeObject:eid forKey:@"eid"];
  [coderCopy encodeObject:self->_iccid forKey:@"iccid"];
  [coderCopy encodeObject:self->_sourceIccid forKey:@"sourceIccid"];
  [coderCopy encodeObject:self->_unusableIccid forKey:@"unusableIccid"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [coderCopy encodeObject:self->_mcc forKey:@"mcc"];
  [coderCopy encodeObject:self->_mnc forKey:@"mnc"];
  [coderCopy encodeObject:self->_gid1 forKey:@"gid1"];
  [coderCopy encodeObject:self->_gid2 forKey:@"gid2"];
  [coderCopy encodeObject:self->_smdpAddress forKey:@"smdpAddress"];
  [coderCopy encodeBool:self->_useDS forKey:@"useDS"];
  [coderCopy encodeBool:self->_isESim forKey:@"isESim"];
  [coderCopy encodeObject:self->_flowType forKey:@"flowType"];
  [coderCopy encodeBool:self->_portIn forKey:@"portIn"];
}

- (CTCellularPlanProvisioningOnDeviceActivationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = CTCellularPlanProvisioningOnDeviceActivationRequest;
  v5 = [(CTCellularPlanProvisioningOnDeviceActivationRequest *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eid"];
    eid = v5->_eid;
    v5->_eid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iccid"];
    iccid = v5->_iccid;
    v5->_iccid = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIccid"];
    sourceIccid = v5->_sourceIccid;
    v5->_sourceIccid = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unusableIccid"];
    unusableIccid = v5->_unusableIccid;
    v5->_unusableIccid = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mcc"];
    mcc = v5->_mcc;
    v5->_mcc = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mnc"];
    mnc = v5->_mnc;
    v5->_mnc = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gid1"];
    gid1 = v5->_gid1;
    v5->_gid1 = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gid2"];
    gid2 = v5->_gid2;
    v5->_gid2 = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smdpAddress"];
    smdpAddress = v5->_smdpAddress;
    v5->_smdpAddress = v24;

    v5->_useDS = [coderCopy decodeBoolForKey:@"useDS"];
    v5->_isESim = [coderCopy decodeBoolForKey:@"isESim"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flowType"];
    flowType = v5->_flowType;
    v5->_flowType = v26;

    v5->_portIn = [coderCopy decodeBoolForKey:@"portIn"];
  }

  return v5;
}

@end