@interface CTSimSetupUsage
- (BOOL)isEqual:(id)a3;
- (CTSimSetupUsage)initWithCoder:(id)a3;
- (CTSimSetupUsage)initWithInBuddy:(BOOL)a3 transferablePlans:(unint64_t)a4 selectedTransferablePlans:(unint64_t)a5 alsPlans:(unint64_t)a6 selectedAlsPlans:(unint64_t)a7 odaPlans:(unint64_t)a8 transferPlanCarriers:(id)a9 selectedTransferPlanCarriers:(id)a10 alsPlanCarriers:(id)a11 selectedAlsPlanCarriers:(id)a12 odaPlanCarriers:(id)a13 selectedOdaPlanCarriers:(id)a14 sourceDevicesCount:(unint64_t)a15 selectedSourceDevicesCount:(unint64_t)a16;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSimSetupUsage

- (CTSimSetupUsage)initWithInBuddy:(BOOL)a3 transferablePlans:(unint64_t)a4 selectedTransferablePlans:(unint64_t)a5 alsPlans:(unint64_t)a6 selectedAlsPlans:(unint64_t)a7 odaPlans:(unint64_t)a8 transferPlanCarriers:(id)a9 selectedTransferPlanCarriers:(id)a10 alsPlanCarriers:(id)a11 selectedAlsPlanCarriers:(id)a12 odaPlanCarriers:(id)a13 selectedOdaPlanCarriers:(id)a14 sourceDevicesCount:(unint64_t)a15 selectedSourceDevicesCount:(unint64_t)a16
{
  v17 = a9;
  v31 = a10;
  v30 = a11;
  v29 = a12;
  v18 = a13;
  v19 = a14;
  v32.receiver = self;
  v32.super_class = CTSimSetupUsage;
  v20 = [(CTSimSetupUsage *)&v32 init];
  v21 = v20;
  if (v20)
  {
    v20->_inBuddy = a3;
    v20->_transferablePlans = a4;
    v20->_selectedTransferablePlans = a5;
    v20->_alsPlans = a6;
    v20->_selectedAlsPlans = a7;
    v20->_odaPlans = a8;
    objc_storeStrong(&v20->_transferPlanCarriers, a9);
    objc_storeStrong(&v21->_selectedTransferPlanCarriers, a10);
    objc_storeStrong(&v21->_alsPlanCarriers, a11);
    objc_storeStrong(&v21->_selectedAlsPlanCarriers, a12);
    objc_storeStrong(&v21->_odaPlanCarriers, a13);
    objc_storeStrong(&v21->_selectedOdaPlanCarriers, a14);
    v21->_sourceDevicesCount = a15;
    v21->_selectedSourceDevicesCount = a16;
  }

  return v21;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSimSetupUsage *)self inBuddy];
  v5 = "NO";
  if (v4)
  {
    v5 = "YES";
  }

  [v3 appendFormat:@" inBuddy=%s", v5];
  [v3 appendFormat:@" transferablePlans=%lu", -[CTSimSetupUsage transferablePlans](self, "transferablePlans")];
  [v3 appendFormat:@" selectedTransferablePlans=%lu", -[CTSimSetupUsage selectedTransferablePlans](self, "selectedTransferablePlans")];
  [v3 appendFormat:@" alsPlans=%lu", -[CTSimSetupUsage alsPlans](self, "alsPlans")];
  [v3 appendFormat:@" selectedAlsPlans=%lu", -[CTSimSetupUsage selectedAlsPlans](self, "selectedAlsPlans")];
  [v3 appendFormat:@" odaPlans=%lu", -[CTSimSetupUsage odaPlans](self, "odaPlans")];
  v6 = [(CTSimSetupUsage *)self transferPlanCarriers];
  [v3 appendFormat:@" transferPlanCarriers=%@", v6];

  v7 = [(CTSimSetupUsage *)self selectedTransferPlanCarriers];
  [v3 appendFormat:@" selectedTransferPlanCarriers=%@", v7];

  v8 = [(CTSimSetupUsage *)self alsPlanCarriers];
  [v3 appendFormat:@" alsPlanCarriers=%@", v8];

  v9 = [(CTSimSetupUsage *)self selectedAlsPlanCarriers];
  [v3 appendFormat:@" selectedAlsPlanCarriers=%@", v9];

  v10 = [(CTSimSetupUsage *)self odaPlanCarriers];
  [v3 appendFormat:@" odaPlanCarriers=%@", v10];

  v11 = [(CTSimSetupUsage *)self selectedOdaPlanCarriers];
  [v3 appendFormat:@" selectedOdaPlanCarriers=%@", v11];

  [v3 appendFormat:@" sourceDevicesCount=%lu", -[CTSimSetupUsage sourceDevicesCount](self, "sourceDevicesCount")];
  [v3 appendFormat:@" selectedSourceDevicesCount=%lu", -[CTSimSetupUsage selectedSourceDevicesCount](self, "selectedSourceDevicesCount")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTSimSetupUsage *)self inBuddy], v5 == [(CTSimSetupUsage *)v4 inBuddy]) && (v6 = [(CTSimSetupUsage *)self transferablePlans], v6 == [(CTSimSetupUsage *)v4 transferablePlans]) && (v7 = [(CTSimSetupUsage *)self selectedTransferablePlans], v7 == [(CTSimSetupUsage *)v4 selectedTransferablePlans]) && (v8 = [(CTSimSetupUsage *)self alsPlans], v8 == [(CTSimSetupUsage *)v4 alsPlans]) && (v9 = [(CTSimSetupUsage *)self selectedAlsPlans], v9 == [(CTSimSetupUsage *)v4 selectedAlsPlans]) && (v10 = [(CTSimSetupUsage *)self odaPlans], v10 == [(CTSimSetupUsage *)v4 odaPlans]))
    {
      v11 = [(CTSimSetupUsage *)self transferPlanCarriers];
      v12 = [(CTSimSetupUsage *)v4 transferPlanCarriers];
      if ([v11 isEqualToString:v12])
      {
        v13 = [(CTSimSetupUsage *)self selectedTransferPlanCarriers];
        v14 = [(CTSimSetupUsage *)v4 selectedTransferPlanCarriers];
        if ([v13 isEqualToString:v14])
        {
          v15 = [(CTSimSetupUsage *)self alsPlanCarriers];
          v16 = [(CTSimSetupUsage *)v4 alsPlanCarriers];
          if ([v15 isEqualToString:v16])
          {
            v17 = [(CTSimSetupUsage *)self selectedAlsPlanCarriers];
            v18 = [(CTSimSetupUsage *)v4 selectedAlsPlanCarriers];
            if ([v17 isEqualToString:v18])
            {
              v28 = v17;
              v19 = [(CTSimSetupUsage *)self odaPlanCarriers];
              [(CTSimSetupUsage *)v4 odaPlanCarriers];
              v27 = v29 = v19;
              if ([v19 isEqualToString:?])
              {
                v20 = [(CTSimSetupUsage *)self selectedOdaPlanCarriers];
                v25 = [(CTSimSetupUsage *)v4 selectedOdaPlanCarriers];
                v26 = v20;
                if ([v20 isEqualToString:?] && (v21 = -[CTSimSetupUsage sourceDevicesCount](self, "sourceDevicesCount"), v21 == -[CTSimSetupUsage sourceDevicesCount](v4, "sourceDevicesCount")))
                {
                  v22 = [(CTSimSetupUsage *)self selectedSourceDevicesCount];
                  v23 = v22 == [(CTSimSetupUsage *)v4 selectedSourceDevicesCount];
                }

                else
                {
                  v23 = 0;
                }

                v17 = v28;
              }

              else
              {
                v23 = 0;
                v17 = v28;
              }
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (CTSimSetupUsage)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CTSimSetupUsage;
  v5 = [(CTSimSetupUsage *)&v19 init];
  if (v5)
  {
    v5->_inBuddy = [v4 decodeBoolForKey:@"inBuddy"];
    v5->_transferablePlans = [v4 decodeIntegerForKey:@"transferablePlans"];
    v5->_selectedTransferablePlans = [v4 decodeIntegerForKey:@"selectedTransferablePlans"];
    v5->_alsPlans = [v4 decodeIntegerForKey:@"alsPlans"];
    v5->_selectedAlsPlans = [v4 decodeIntegerForKey:@"selectedAlsPlans"];
    v5->_odaPlans = [v4 decodeIntegerForKey:@"odaPlans"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferPlanCarriers"];
    transferPlanCarriers = v5->_transferPlanCarriers;
    v5->_transferPlanCarriers = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedTransferPlanCarriers"];
    selectedTransferPlanCarriers = v5->_selectedTransferPlanCarriers;
    v5->_selectedTransferPlanCarriers = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alsPlanCarriers"];
    alsPlanCarriers = v5->_alsPlanCarriers;
    v5->_alsPlanCarriers = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedAlsPlanCarriers"];
    selectedAlsPlanCarriers = v5->_selectedAlsPlanCarriers;
    v5->_selectedAlsPlanCarriers = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"odaPlanCarriers"];
    odaPlanCarriers = v5->_odaPlanCarriers;
    v5->_odaPlanCarriers = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedOdaPlanCarriers"];
    selectedOdaPlanCarriers = v5->_selectedOdaPlanCarriers;
    v5->_selectedOdaPlanCarriers = v16;

    v5->_sourceDevicesCount = [v4 decodeIntegerForKey:@"sourceDeviceCount"];
    v5->_selectedSourceDevicesCount = [v4 decodeIntegerForKey:@"selectedSourceDeviceCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeBool:-[CTSimSetupUsage inBuddy](self forKey:{"inBuddy"), @"inBuddy"}];
  [v10 encodeInteger:-[CTSimSetupUsage transferablePlans](self forKey:{"transferablePlans"), @"transferablePlans"}];
  [v10 encodeInteger:-[CTSimSetupUsage selectedTransferablePlans](self forKey:{"selectedTransferablePlans"), @"selectedTransferablePlans"}];
  [v10 encodeInteger:-[CTSimSetupUsage alsPlans](self forKey:{"alsPlans"), @"alsPlans"}];
  [v10 encodeInteger:-[CTSimSetupUsage selectedAlsPlans](self forKey:{"selectedAlsPlans"), @"selectedAlsPlans"}];
  [v10 encodeInteger:-[CTSimSetupUsage odaPlans](self forKey:{"odaPlans"), @"odaPlans"}];
  v4 = [(CTSimSetupUsage *)self transferPlanCarriers];
  [v10 encodeObject:v4 forKey:@"transferPlanCarriers"];

  v5 = [(CTSimSetupUsage *)self selectedTransferPlanCarriers];
  [v10 encodeObject:v5 forKey:@"selectedTransferPlanCarriers"];

  v6 = [(CTSimSetupUsage *)self alsPlanCarriers];
  [v10 encodeObject:v6 forKey:@"alsPlanCarriers"];

  v7 = [(CTSimSetupUsage *)self selectedAlsPlanCarriers];
  [v10 encodeObject:v7 forKey:@"selectedAlsPlanCarriers"];

  v8 = [(CTSimSetupUsage *)self odaPlanCarriers];
  [v10 encodeObject:v8 forKey:@"odaPlanCarriers"];

  v9 = [(CTSimSetupUsage *)self selectedOdaPlanCarriers];
  [v10 encodeObject:v9 forKey:@"selectedOdaPlanCarriers"];

  [v10 encodeInteger:-[CTSimSetupUsage sourceDevicesCount](self forKey:{"sourceDevicesCount"), @"sourceDeviceCount"}];
  [v10 encodeInteger:-[CTSimSetupUsage selectedSourceDevicesCount](self forKey:{"selectedSourceDevicesCount"), @"selectedSourceDeviceCount"}];
}

@end