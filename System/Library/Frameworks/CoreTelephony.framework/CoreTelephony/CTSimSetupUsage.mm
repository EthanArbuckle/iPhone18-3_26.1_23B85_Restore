@interface CTSimSetupUsage
- (BOOL)isEqual:(id)equal;
- (CTSimSetupUsage)initWithCoder:(id)coder;
- (CTSimSetupUsage)initWithInBuddy:(BOOL)buddy transferablePlans:(unint64_t)plans selectedTransferablePlans:(unint64_t)transferablePlans alsPlans:(unint64_t)alsPlans selectedAlsPlans:(unint64_t)selectedAlsPlans odaPlans:(unint64_t)odaPlans transferPlanCarriers:(id)carriers selectedTransferPlanCarriers:(id)self0 alsPlanCarriers:(id)self1 selectedAlsPlanCarriers:(id)self2 odaPlanCarriers:(id)self3 selectedOdaPlanCarriers:(id)self4 sourceDevicesCount:(unint64_t)self5 selectedSourceDevicesCount:(unint64_t)self6;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSimSetupUsage

- (CTSimSetupUsage)initWithInBuddy:(BOOL)buddy transferablePlans:(unint64_t)plans selectedTransferablePlans:(unint64_t)transferablePlans alsPlans:(unint64_t)alsPlans selectedAlsPlans:(unint64_t)selectedAlsPlans odaPlans:(unint64_t)odaPlans transferPlanCarriers:(id)carriers selectedTransferPlanCarriers:(id)self0 alsPlanCarriers:(id)self1 selectedAlsPlanCarriers:(id)self2 odaPlanCarriers:(id)self3 selectedOdaPlanCarriers:(id)self4 sourceDevicesCount:(unint64_t)self5 selectedSourceDevicesCount:(unint64_t)self6
{
  carriersCopy = carriers;
  planCarriersCopy = planCarriers;
  alsPlanCarriersCopy = alsPlanCarriers;
  selectedAlsPlanCarriersCopy = selectedAlsPlanCarriers;
  odaPlanCarriersCopy = odaPlanCarriers;
  selectedOdaPlanCarriersCopy = selectedOdaPlanCarriers;
  v32.receiver = self;
  v32.super_class = CTSimSetupUsage;
  v20 = [(CTSimSetupUsage *)&v32 init];
  v21 = v20;
  if (v20)
  {
    v20->_inBuddy = buddy;
    v20->_transferablePlans = plans;
    v20->_selectedTransferablePlans = transferablePlans;
    v20->_alsPlans = alsPlans;
    v20->_selectedAlsPlans = selectedAlsPlans;
    v20->_odaPlans = odaPlans;
    objc_storeStrong(&v20->_transferPlanCarriers, carriers);
    objc_storeStrong(&v21->_selectedTransferPlanCarriers, planCarriers);
    objc_storeStrong(&v21->_alsPlanCarriers, alsPlanCarriers);
    objc_storeStrong(&v21->_selectedAlsPlanCarriers, selectedAlsPlanCarriers);
    objc_storeStrong(&v21->_odaPlanCarriers, odaPlanCarriers);
    objc_storeStrong(&v21->_selectedOdaPlanCarriers, selectedOdaPlanCarriers);
    v21->_sourceDevicesCount = count;
    v21->_selectedSourceDevicesCount = devicesCount;
  }

  return v21;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  inBuddy = [(CTSimSetupUsage *)self inBuddy];
  v5 = "NO";
  if (inBuddy)
  {
    v5 = "YES";
  }

  [v3 appendFormat:@" inBuddy=%s", v5];
  [v3 appendFormat:@" transferablePlans=%lu", -[CTSimSetupUsage transferablePlans](self, "transferablePlans")];
  [v3 appendFormat:@" selectedTransferablePlans=%lu", -[CTSimSetupUsage selectedTransferablePlans](self, "selectedTransferablePlans")];
  [v3 appendFormat:@" alsPlans=%lu", -[CTSimSetupUsage alsPlans](self, "alsPlans")];
  [v3 appendFormat:@" selectedAlsPlans=%lu", -[CTSimSetupUsage selectedAlsPlans](self, "selectedAlsPlans")];
  [v3 appendFormat:@" odaPlans=%lu", -[CTSimSetupUsage odaPlans](self, "odaPlans")];
  transferPlanCarriers = [(CTSimSetupUsage *)self transferPlanCarriers];
  [v3 appendFormat:@" transferPlanCarriers=%@", transferPlanCarriers];

  selectedTransferPlanCarriers = [(CTSimSetupUsage *)self selectedTransferPlanCarriers];
  [v3 appendFormat:@" selectedTransferPlanCarriers=%@", selectedTransferPlanCarriers];

  alsPlanCarriers = [(CTSimSetupUsage *)self alsPlanCarriers];
  [v3 appendFormat:@" alsPlanCarriers=%@", alsPlanCarriers];

  selectedAlsPlanCarriers = [(CTSimSetupUsage *)self selectedAlsPlanCarriers];
  [v3 appendFormat:@" selectedAlsPlanCarriers=%@", selectedAlsPlanCarriers];

  odaPlanCarriers = [(CTSimSetupUsage *)self odaPlanCarriers];
  [v3 appendFormat:@" odaPlanCarriers=%@", odaPlanCarriers];

  selectedOdaPlanCarriers = [(CTSimSetupUsage *)self selectedOdaPlanCarriers];
  [v3 appendFormat:@" selectedOdaPlanCarriers=%@", selectedOdaPlanCarriers];

  [v3 appendFormat:@" sourceDevicesCount=%lu", -[CTSimSetupUsage sourceDevicesCount](self, "sourceDevicesCount")];
  [v3 appendFormat:@" selectedSourceDevicesCount=%lu", -[CTSimSetupUsage selectedSourceDevicesCount](self, "selectedSourceDevicesCount")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTSimSetupUsage *)self inBuddy], v5 == [(CTSimSetupUsage *)equalCopy inBuddy]) && (v6 = [(CTSimSetupUsage *)self transferablePlans], v6 == [(CTSimSetupUsage *)equalCopy transferablePlans]) && (v7 = [(CTSimSetupUsage *)self selectedTransferablePlans], v7 == [(CTSimSetupUsage *)equalCopy selectedTransferablePlans]) && (v8 = [(CTSimSetupUsage *)self alsPlans], v8 == [(CTSimSetupUsage *)equalCopy alsPlans]) && (v9 = [(CTSimSetupUsage *)self selectedAlsPlans], v9 == [(CTSimSetupUsage *)equalCopy selectedAlsPlans]) && (v10 = [(CTSimSetupUsage *)self odaPlans], v10 == [(CTSimSetupUsage *)equalCopy odaPlans]))
    {
      transferPlanCarriers = [(CTSimSetupUsage *)self transferPlanCarriers];
      transferPlanCarriers2 = [(CTSimSetupUsage *)equalCopy transferPlanCarriers];
      if ([transferPlanCarriers isEqualToString:transferPlanCarriers2])
      {
        selectedTransferPlanCarriers = [(CTSimSetupUsage *)self selectedTransferPlanCarriers];
        selectedTransferPlanCarriers2 = [(CTSimSetupUsage *)equalCopy selectedTransferPlanCarriers];
        if ([selectedTransferPlanCarriers isEqualToString:selectedTransferPlanCarriers2])
        {
          alsPlanCarriers = [(CTSimSetupUsage *)self alsPlanCarriers];
          alsPlanCarriers2 = [(CTSimSetupUsage *)equalCopy alsPlanCarriers];
          if ([alsPlanCarriers isEqualToString:alsPlanCarriers2])
          {
            selectedAlsPlanCarriers = [(CTSimSetupUsage *)self selectedAlsPlanCarriers];
            selectedAlsPlanCarriers2 = [(CTSimSetupUsage *)equalCopy selectedAlsPlanCarriers];
            if ([selectedAlsPlanCarriers isEqualToString:selectedAlsPlanCarriers2])
            {
              v28 = selectedAlsPlanCarriers;
              odaPlanCarriers = [(CTSimSetupUsage *)self odaPlanCarriers];
              [(CTSimSetupUsage *)equalCopy odaPlanCarriers];
              v27 = v29 = odaPlanCarriers;
              if ([odaPlanCarriers isEqualToString:?])
              {
                selectedOdaPlanCarriers = [(CTSimSetupUsage *)self selectedOdaPlanCarriers];
                selectedOdaPlanCarriers2 = [(CTSimSetupUsage *)equalCopy selectedOdaPlanCarriers];
                v26 = selectedOdaPlanCarriers;
                if ([selectedOdaPlanCarriers isEqualToString:?] && (v21 = -[CTSimSetupUsage sourceDevicesCount](self, "sourceDevicesCount"), v21 == -[CTSimSetupUsage sourceDevicesCount](equalCopy, "sourceDevicesCount")))
                {
                  selectedSourceDevicesCount = [(CTSimSetupUsage *)self selectedSourceDevicesCount];
                  v23 = selectedSourceDevicesCount == [(CTSimSetupUsage *)equalCopy selectedSourceDevicesCount];
                }

                else
                {
                  v23 = 0;
                }

                selectedAlsPlanCarriers = v28;
              }

              else
              {
                v23 = 0;
                selectedAlsPlanCarriers = v28;
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

- (CTSimSetupUsage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CTSimSetupUsage;
  v5 = [(CTSimSetupUsage *)&v19 init];
  if (v5)
  {
    v5->_inBuddy = [coderCopy decodeBoolForKey:@"inBuddy"];
    v5->_transferablePlans = [coderCopy decodeIntegerForKey:@"transferablePlans"];
    v5->_selectedTransferablePlans = [coderCopy decodeIntegerForKey:@"selectedTransferablePlans"];
    v5->_alsPlans = [coderCopy decodeIntegerForKey:@"alsPlans"];
    v5->_selectedAlsPlans = [coderCopy decodeIntegerForKey:@"selectedAlsPlans"];
    v5->_odaPlans = [coderCopy decodeIntegerForKey:@"odaPlans"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferPlanCarriers"];
    transferPlanCarriers = v5->_transferPlanCarriers;
    v5->_transferPlanCarriers = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedTransferPlanCarriers"];
    selectedTransferPlanCarriers = v5->_selectedTransferPlanCarriers;
    v5->_selectedTransferPlanCarriers = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alsPlanCarriers"];
    alsPlanCarriers = v5->_alsPlanCarriers;
    v5->_alsPlanCarriers = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedAlsPlanCarriers"];
    selectedAlsPlanCarriers = v5->_selectedAlsPlanCarriers;
    v5->_selectedAlsPlanCarriers = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"odaPlanCarriers"];
    odaPlanCarriers = v5->_odaPlanCarriers;
    v5->_odaPlanCarriers = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedOdaPlanCarriers"];
    selectedOdaPlanCarriers = v5->_selectedOdaPlanCarriers;
    v5->_selectedOdaPlanCarriers = v16;

    v5->_sourceDevicesCount = [coderCopy decodeIntegerForKey:@"sourceDeviceCount"];
    v5->_selectedSourceDevicesCount = [coderCopy decodeIntegerForKey:@"selectedSourceDeviceCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTSimSetupUsage inBuddy](self forKey:{"inBuddy"), @"inBuddy"}];
  [coderCopy encodeInteger:-[CTSimSetupUsage transferablePlans](self forKey:{"transferablePlans"), @"transferablePlans"}];
  [coderCopy encodeInteger:-[CTSimSetupUsage selectedTransferablePlans](self forKey:{"selectedTransferablePlans"), @"selectedTransferablePlans"}];
  [coderCopy encodeInteger:-[CTSimSetupUsage alsPlans](self forKey:{"alsPlans"), @"alsPlans"}];
  [coderCopy encodeInteger:-[CTSimSetupUsage selectedAlsPlans](self forKey:{"selectedAlsPlans"), @"selectedAlsPlans"}];
  [coderCopy encodeInteger:-[CTSimSetupUsage odaPlans](self forKey:{"odaPlans"), @"odaPlans"}];
  transferPlanCarriers = [(CTSimSetupUsage *)self transferPlanCarriers];
  [coderCopy encodeObject:transferPlanCarriers forKey:@"transferPlanCarriers"];

  selectedTransferPlanCarriers = [(CTSimSetupUsage *)self selectedTransferPlanCarriers];
  [coderCopy encodeObject:selectedTransferPlanCarriers forKey:@"selectedTransferPlanCarriers"];

  alsPlanCarriers = [(CTSimSetupUsage *)self alsPlanCarriers];
  [coderCopy encodeObject:alsPlanCarriers forKey:@"alsPlanCarriers"];

  selectedAlsPlanCarriers = [(CTSimSetupUsage *)self selectedAlsPlanCarriers];
  [coderCopy encodeObject:selectedAlsPlanCarriers forKey:@"selectedAlsPlanCarriers"];

  odaPlanCarriers = [(CTSimSetupUsage *)self odaPlanCarriers];
  [coderCopy encodeObject:odaPlanCarriers forKey:@"odaPlanCarriers"];

  selectedOdaPlanCarriers = [(CTSimSetupUsage *)self selectedOdaPlanCarriers];
  [coderCopy encodeObject:selectedOdaPlanCarriers forKey:@"selectedOdaPlanCarriers"];

  [coderCopy encodeInteger:-[CTSimSetupUsage sourceDevicesCount](self forKey:{"sourceDevicesCount"), @"sourceDeviceCount"}];
  [coderCopy encodeInteger:-[CTSimSetupUsage selectedSourceDevicesCount](self forKey:{"selectedSourceDevicesCount"), @"selectedSourceDeviceCount"}];
}

@end