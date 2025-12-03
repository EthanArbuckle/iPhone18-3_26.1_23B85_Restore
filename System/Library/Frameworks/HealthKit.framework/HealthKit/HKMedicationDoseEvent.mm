@interface HKMedicationDoseEvent
+ (id)_metadataWithSyncIdentifier:(id)identifier syncVersion:(id)version isLastScheduledDose:(BOOL)dose;
+ (id)_newMedicationDoseEventWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata logOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier medicationUUID:(id)self0 medicationIdentifier:(id)self1 scheduledDoseQuantity:(id)self2 doseQuantity:(id)self3 scheduledDate:(id)self4 logStatus:(int64_t)self5 doseUnitString:(id)self6 config:(id)self7;
+ (id)medicationDoseEventWithLogOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier medicationIdentifier:(id)medicationIdentifier scheduledDoseQuantity:(id)quantity doseQuantity:(id)doseQuantity scheduledDate:(id)date startDate:(id)startDate logStatus:(int64_t)self0 doseUnitString:(id)self1 metadata:(id)self2;
+ (id)medicationDoseEventWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata logOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier medicationIdentifier:(id)self0 scheduledDoseQuantity:(double)self1 doseQuantity:(double)self2 scheduledDate:(id)self3 logStatus:(int64_t)self4 medicationUuid:(id)self5;
+ (id)medicationDoseEventWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata logOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier medicationIdentifier:(id)self0 scheduledDoseQuantity:(double)self1 doseQuantity:(double)self2 scheduledDate:(id)self3 logStatus:(int64_t)self4 medicationUuid:(id)self5 doseUnitString:(id)self6;
- (BOOL)isEquivalent:(id)equivalent;
- (BOOL)isLastScheduledDose;
- (HKMedicationDoseEvent)init;
- (HKMedicationDoseEvent)initWithCoder:(id)coder;
- (HKUnit)unit;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)sanitizedSample:(id)sample forEntitlements:(id)entitlements;
- (void)_setMedicationConceptIdentifier:(id)identifier;
- (void)_setMedicationIdentifier:(id)identifier;
- (void)_setMedicationUUID:(id)d;
- (void)_setScheduleItemIdentifier:(id)identifier;
- (void)_setScheduledDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationDoseEvent

- (id)sanitizedSample:(id)sample forEntitlements:(id)entitlements
{
  sampleCopy = sample;
  entitlementsCopy = entitlements;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = sampleCopy;
  _copyByArchiving = v8;
  if (isKindOfClass)
  {
    _copyByArchiving = v8;
    if (([entitlementsCopy hasEntitlement:@"com.apple.private.healthkit"] & 1) == 0)
    {
      scheduleItemIdentifier = [v8 scheduleItemIdentifier];
      if (scheduleItemIdentifier || ([v8 medicationUUID], (scheduleItemIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
      {

LABEL_6:
        _copyByArchiving = [v8 _copyByArchiving];

        [_copyByArchiving _setScheduleItemIdentifier:0];
        [_copyByArchiving _setMedicationIdentifier:&stru_1F05FF230];
        goto LABEL_7;
      }

      medicationIdentifier = [v8 medicationIdentifier];
      _copyByArchiving = v8;
      if (medicationIdentifier != &stru_1F05FF230)
      {
        v13 = medicationIdentifier;
        medicationIdentifier2 = [v8 medicationIdentifier];
        v15 = [medicationIdentifier2 isEqualToString:&stru_1F05FF230];

        _copyByArchiving = v8;
        if ((v15 & 1) == 0)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_7:

  return _copyByArchiving;
}

+ (id)medicationDoseEventWithLogOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier medicationIdentifier:(id)medicationIdentifier scheduledDoseQuantity:(id)quantity doseQuantity:(id)doseQuantity scheduledDate:(id)date startDate:(id)startDate logStatus:(int64_t)self0 doseUnitString:(id)self1 metadata:(id)self2
{
  metadataCopy = metadata;
  startDateCopy = startDate;
  dateCopy = date;
  doseQuantityCopy = doseQuantity;
  quantityCopy = quantity;
  medicationIdentifierCopy = medicationIdentifier;
  identifierCopy = identifier;
  v25 = +[(HKObjectType *)HKMedicationDoseEventType];
  v26 = [self _newMedicationDoseEventWithType:v25 startDate:startDateCopy endDate:startDateCopy device:0 metadata:metadataCopy logOrigin:origin scheduleItemIdentifier:identifierCopy medicationUUID:0 medicationIdentifier:medicationIdentifierCopy scheduledDoseQuantity:quantityCopy doseQuantity:doseQuantityCopy scheduledDate:dateCopy logStatus:status doseUnitString:0 config:0];

  return v26;
}

+ (id)_newMedicationDoseEventWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata logOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier medicationUUID:(id)self0 medicationIdentifier:(id)self1 scheduledDoseQuantity:(id)self2 doseQuantity:(id)self3 scheduledDate:(id)self4 logStatus:(int64_t)self5 doseUnitString:(id)self6 config:(id)self7
{
  identifierCopy = identifier;
  dCopy = d;
  medicationIdentifierCopy = medicationIdentifier;
  quantityCopy = quantity;
  doseQuantityCopy = doseQuantity;
  scheduledDateCopy = scheduledDate;
  stringCopy = string;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __241__HKMedicationDoseEvent__newMedicationDoseEventWithType_startDate_endDate_device_metadata_logOrigin_scheduleItemIdentifier_medicationUUID_medicationIdentifier_scheduledDoseQuantity_doseQuantity_scheduledDate_logStatus_doseUnitString_config___block_invoke;
  aBlock[3] = &unk_1E73813A0;
  v50 = dCopy;
  v51 = identifierCopy;
  v52 = medicationIdentifierCopy;
  v53 = quantityCopy;
  v54 = doseQuantityCopy;
  v55 = stringCopy;
  originCopy = origin;
  statusCopy = status;
  v56 = scheduledDateCopy;
  v57 = configCopy;
  v47 = configCopy;
  v45 = scheduledDateCopy;
  v44 = stringCopy;
  v43 = doseQuantityCopy;
  v42 = quantityCopy;
  v26 = medicationIdentifierCopy;
  v27 = identifierCopy;
  v28 = dCopy;
  metadataCopy = metadata;
  deviceCopy = device;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  v34 = _Block_copy(aBlock);
  v48.receiver = self;
  v48.super_class = &OBJC_METACLASS___HKMedicationDoseEvent;
  v35 = objc_msgSendSuper2(&v48, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, typeCopy, dateCopy, endDateCopy, deviceCopy, metadataCopy, v34);

  return v35;
}

void __241__HKMedicationDoseEvent__newMedicationDoseEventWithType_startDate_endDate_device_metadata_logOrigin_scheduleItemIdentifier_medicationUUID_medicationIdentifier_scheduledDoseQuantity_doseQuantity_scheduledDate_logStatus_doseUnitString_config___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  *(v14 + 12) = *(a1 + 96);
  v3 = [*(a1 + 32) copy];
  v4 = *(v14 + 14);
  *(v14 + 14) = v3;

  v5 = [*(a1 + 40) copy];
  v6 = *(v14 + 13);
  *(v14 + 13) = v5;

  v7 = [*(a1 + 48) copy];
  v8 = *(v14 + 15);
  *(v14 + 15) = v7;

  objc_storeStrong(v14 + 17, *(a1 + 56));
  objc_storeStrong(v14 + 18, *(a1 + 64));
  objc_storeStrong(v14 + 21, *(a1 + 72));
  v9 = [*(a1 + 80) copy];
  v10 = *(v14 + 19);
  *(v14 + 19) = v9;

  *(v14 + 20) = *(a1 + 104);
  v11 = [HKHealthConceptIdentifier medicationConceptIdentifierWithSemanticIdentifierString:*(a1 + 48)];
  v12 = *(v14 + 16);
  *(v14 + 16) = v11;

  v13 = *(a1 + 88);
  if (v13)
  {
    (*(v13 + 16))(v13, v14);
  }
}

- (HKMedicationDoseEvent)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)description
{
  v11 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v10 = NSStringFromClass(v3);
  v12.receiver = self;
  v12.super_class = HKMedicationDoseEvent;
  v4 = [(HKSample *)&v12 description];
  logOrigin = self->_logOrigin;
  scheduleItemIdentifier = self->_scheduleItemIdentifier;
  uUIDString = [(NSUUID *)self->_medicationUUID UUIDString];
  v8 = [v11 stringWithFormat:@"<%@:%p super=%@, logOrigin = %ld, scheduleItemIdentifier = %@, medicationUUID = %@, medicationIdentifier = %@, scheduledDoseQuantity = %@, doseQuantity = %@, scheduledDate = %@, status = %ld, isLastScheduledDose = %d>", v10, self, v4, logOrigin, scheduleItemIdentifier, uUIDString, self->_medicationIdentifier, self->_scheduledDoseQuantity, self->_doseQuantity, self->_scheduledDate, self->_logStatus, -[HKMedicationDoseEvent isLastScheduledDose](self, "isLastScheduledDose"), 0];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMedicationDoseEvent;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_logOrigin forKey:{@"LogOrigin", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_scheduleItemIdentifier forKey:@"ScheduleItemIdentifier"];
  [coderCopy encodeObject:self->_medicationUUID forKey:@"MedicationUUID"];
  [coderCopy encodeObject:self->_medicationIdentifier forKey:@"MedicationIdentifier"];
  [coderCopy encodeObject:self->_scheduledDoseQuantity forKey:@"ScheduledDoseQuantity"];
  [coderCopy encodeObject:self->_doseQuantity forKey:@"DoseQuantity"];
  [coderCopy encodeObject:self->_doseUnitString forKey:@"DoseUnitString"];
  [coderCopy encodeObject:self->_scheduledDate forKey:@"ScheduledDate"];
  [coderCopy encodeInteger:self->_logStatus forKey:@"Status"];
}

- (HKMedicationDoseEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HKMedicationDoseEvent;
  v5 = [(HKSample *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_logOrigin = [coderCopy decodeIntegerForKey:@"LogOrigin"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ScheduleItemIdentifier"];
    scheduleItemIdentifier = v5->_scheduleItemIdentifier;
    v5->_scheduleItemIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicationUUID"];
    medicationUUID = v5->_medicationUUID;
    v5->_medicationUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicationIdentifier"];
    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ScheduledDoseQuantity"];
    scheduledDoseQuantity = v5->_scheduledDoseQuantity;
    v5->_scheduledDoseQuantity = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DoseQuantity"];
    doseQuantity = v5->_doseQuantity;
    v5->_doseQuantity = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DoseUnitString"];
    doseUnitString = v5->_doseUnitString;
    v5->_doseUnitString = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ScheduledDate"];
    scheduledDate = v5->_scheduledDate;
    v5->_scheduledDate = v18;

    v5->_logStatus = [coderCopy decodeIntegerForKey:@"Status"];
  }

  return v5;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equivalentCopy;
    v49.receiver = self;
    v49.super_class = HKMedicationDoseEvent;
    if (![(HKSample *)&v49 isEquivalent:v5])
    {
      goto LABEL_35;
    }

    logOrigin = [(HKMedicationDoseEvent *)self logOrigin];
    if (logOrigin != [v5 logOrigin])
    {
      goto LABEL_35;
    }

    scheduleItemIdentifier = [(HKMedicationDoseEvent *)self scheduleItemIdentifier];
    scheduleItemIdentifier2 = [v5 scheduleItemIdentifier];
    v9 = scheduleItemIdentifier2;
    if (scheduleItemIdentifier == scheduleItemIdentifier2)
    {
    }

    else
    {
      scheduleItemIdentifier3 = [v5 scheduleItemIdentifier];
      if (!scheduleItemIdentifier3)
      {
        goto LABEL_34;
      }

      v11 = scheduleItemIdentifier3;
      scheduleItemIdentifier4 = [(HKMedicationDoseEvent *)self scheduleItemIdentifier];
      scheduleItemIdentifier5 = [v5 scheduleItemIdentifier];
      v14 = [scheduleItemIdentifier4 isEqualToString:scheduleItemIdentifier5];

      if (!v14)
      {
        goto LABEL_35;
      }
    }

    scheduleItemIdentifier = [(HKMedicationDoseEvent *)self medicationIdentifier];
    medicationIdentifier = [v5 medicationIdentifier];
    v9 = medicationIdentifier;
    if (scheduleItemIdentifier == medicationIdentifier)
    {
    }

    else
    {
      medicationIdentifier2 = [v5 medicationIdentifier];
      if (!medicationIdentifier2)
      {
        goto LABEL_34;
      }

      v18 = medicationIdentifier2;
      medicationIdentifier3 = [(HKMedicationDoseEvent *)self medicationIdentifier];
      medicationIdentifier4 = [v5 medicationIdentifier];
      v21 = [medicationIdentifier3 isEqualToString:medicationIdentifier4];

      if (!v21)
      {
        goto LABEL_35;
      }
    }

    scheduleItemIdentifier = [(HKMedicationDoseEvent *)self scheduledDoseQuantity];
    scheduledDoseQuantity = [v5 scheduledDoseQuantity];
    v9 = scheduledDoseQuantity;
    if (scheduleItemIdentifier == scheduledDoseQuantity)
    {
    }

    else
    {
      scheduledDoseQuantity2 = [v5 scheduledDoseQuantity];
      if (!scheduledDoseQuantity2)
      {
        goto LABEL_34;
      }

      v24 = scheduledDoseQuantity2;
      scheduledDoseQuantity3 = [(HKMedicationDoseEvent *)self scheduledDoseQuantity];
      scheduledDoseQuantity4 = [v5 scheduledDoseQuantity];
      v27 = [scheduledDoseQuantity3 isEqual:scheduledDoseQuantity4];

      if (!v27)
      {
        goto LABEL_35;
      }
    }

    scheduleItemIdentifier = [(HKMedicationDoseEvent *)self doseQuantity];
    doseQuantity = [v5 doseQuantity];
    v9 = doseQuantity;
    if (scheduleItemIdentifier == doseQuantity)
    {
    }

    else
    {
      doseQuantity2 = [v5 doseQuantity];
      if (!doseQuantity2)
      {
        goto LABEL_34;
      }

      v30 = doseQuantity2;
      doseQuantity3 = [(HKMedicationDoseEvent *)self doseQuantity];
      doseQuantity4 = [v5 doseQuantity];
      v33 = [doseQuantity3 isEqual:doseQuantity4];

      if (!v33)
      {
        goto LABEL_35;
      }
    }

    scheduleItemIdentifier = [(HKMedicationDoseEvent *)self doseUnitString];
    doseUnitString = [v5 doseUnitString];
    v9 = doseUnitString;
    if (scheduleItemIdentifier == doseUnitString)
    {
    }

    else
    {
      doseUnitString2 = [v5 doseUnitString];
      if (!doseUnitString2)
      {
        goto LABEL_34;
      }

      v36 = doseUnitString2;
      doseUnitString3 = [(HKMedicationDoseEvent *)self doseUnitString];
      doseUnitString4 = [v5 doseUnitString];
      v39 = [doseUnitString3 isEqual:doseUnitString4];

      if (!v39)
      {
        goto LABEL_35;
      }
    }

    scheduleItemIdentifier = [(HKMedicationDoseEvent *)self scheduledDate];
    scheduledDate = [v5 scheduledDate];
    v9 = scheduledDate;
    if (scheduleItemIdentifier == scheduledDate)
    {

LABEL_39:
      logStatus = [(HKMedicationDoseEvent *)self logStatus];
      if (logStatus == [v5 logStatus])
      {
        isLastScheduledDose = [(HKMedicationDoseEvent *)self isLastScheduledDose];
        v15 = isLastScheduledDose ^ [v5 isLastScheduledDose] ^ 1;
        goto LABEL_36;
      }

LABEL_35:
      LOBYTE(v15) = 0;
LABEL_36:

      goto LABEL_37;
    }

    scheduledDate2 = [v5 scheduledDate];
    if (scheduledDate2)
    {
      v42 = scheduledDate2;
      scheduledDate3 = [(HKMedicationDoseEvent *)self scheduledDate];
      scheduledDate4 = [v5 scheduledDate];
      v45 = [scheduledDate3 isEqual:scheduledDate4];

      if (!v45)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

LABEL_34:

    goto LABEL_35;
  }

  LOBYTE(v15) = 0;
LABEL_37:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [objc_alloc(objc_opt_class()) _init];
  sampleType = [(HKSample *)self sampleType];
  [_init _setSampleType:sampleType];

  startDate = [(HKSample *)self startDate];
  [_init _setStartDate:startDate];

  endDate = [(HKSample *)self endDate];
  [_init _setEndDate:endDate];

  [_init _setLogOrigin:{-[HKMedicationDoseEvent logOrigin](self, "logOrigin")}];
  [_init _setLogStatus:{-[HKMedicationDoseEvent logStatus](self, "logStatus")}];
  medicationUUID = [(HKMedicationDoseEvent *)self medicationUUID];
  [_init _setMedicationUUID:medicationUUID];

  scheduleItemIdentifier = [(HKMedicationDoseEvent *)self scheduleItemIdentifier];
  [_init _setScheduleItemIdentifier:scheduleItemIdentifier];

  medicationIdentifier = [(HKMedicationDoseEvent *)self medicationIdentifier];
  [_init _setMedicationIdentifier:medicationIdentifier];

  scheduledDoseQuantity = [(HKMedicationDoseEvent *)self scheduledDoseQuantity];
  [_init _setScheduledDoseQuantity:scheduledDoseQuantity];

  doseQuantity = [(HKMedicationDoseEvent *)self doseQuantity];
  [_init _setDoseQuantity:doseQuantity];

  doseUnitString = [(HKMedicationDoseEvent *)self doseUnitString];
  [_init _setDoseUnitString:doseUnitString];

  scheduledDate = [(HKMedicationDoseEvent *)self scheduledDate];
  [_init _setScheduledDate:scheduledDate];

  medicationConceptIdentifier = [(HKMedicationDoseEvent *)self medicationConceptIdentifier];
  [_init _setMedicationConceptIdentifier:medicationConceptIdentifier];

  return _init;
}

- (HKUnit)unit
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_doseUnitString)
  {
    v2 = [HKUnit unitFromString:?];
    if ([v2 isNull])
    {
      v3 = +[HKUnit countUnit];
    }

    else
    {
      v3 = v2;
    }

    v4 = v3;
  }

  else
  {
    v4 = +[HKUnit countUnit];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_setScheduleItemIdentifier:(id)identifier
{
  v4 = [identifier copy];
  scheduleItemIdentifier = self->_scheduleItemIdentifier;
  self->_scheduleItemIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, scheduleItemIdentifier);
}

- (void)_setMedicationUUID:(id)d
{
  v4 = [d copy];
  medicationUUID = self->_medicationUUID;
  self->_medicationUUID = v4;

  MEMORY[0x1EEE66BB8](v4, medicationUUID);
}

- (void)_setMedicationIdentifier:(id)identifier
{
  v4 = [identifier copy];
  medicationIdentifier = self->_medicationIdentifier;
  self->_medicationIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, medicationIdentifier);
}

- (void)_setMedicationConceptIdentifier:(id)identifier
{
  v4 = [identifier copy];
  medicationConceptIdentifier = self->_medicationConceptIdentifier;
  self->_medicationConceptIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, medicationConceptIdentifier);
}

- (void)_setScheduledDate:(id)date
{
  v4 = [date copy];
  scheduledDate = self->_scheduledDate;
  self->_scheduledDate = v4;

  MEMORY[0x1EEE66BB8](v4, scheduledDate);
}

- (BOOL)isLastScheduledDose
{
  metadata = [(HKObject *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"_HKPrivateMetadataKeyIsLastScheduledDose"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v10.receiver = self;
  v10.super_class = HKMedicationDoseEvent;
  v5 = [(HKSample *)&v10 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (!self->_medicationIdentifier)
  {
    v7 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: medicationIdentifier must not be nil", self}];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

+ (id)_metadataWithSyncIdentifier:(id)identifier syncVersion:(id)version isLastScheduledDose:(BOOL)dose
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (dose)
  {
    v16[0] = @"HKMetadataKeySyncIdentifier";
    v16[1] = @"HKMetadataKeySyncVersion";
    v17[0] = identifier;
    v17[1] = version;
    v16[2] = @"_HKPrivateMetadataKeyIsLastScheduledDose";
    v6 = MEMORY[0x1E696AD98];
    versionCopy = version;
    versionCopy2 = identifier;
    identifierCopy2 = [v6 numberWithBool:1];
    v17[2] = identifierCopy2;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  }

  else
  {
    v14[0] = @"HKMetadataKeySyncIdentifier";
    v14[1] = @"HKMetadataKeySyncVersion";
    v15[0] = identifier;
    v15[1] = version;
    v11 = MEMORY[0x1E695DF20];
    versionCopy2 = version;
    identifierCopy2 = identifier;
    v10 = [v11 dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)medicationDoseEventWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata logOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier medicationIdentifier:(id)self0 scheduledDoseQuantity:(double)self1 doseQuantity:(double)self2 scheduledDate:(id)self3 logStatus:(int64_t)self4 medicationUuid:(id)self5
{
  v21 = MEMORY[0x1E696AD98];
  uuidCopy = uuid;
  scheduledDateCopy = scheduledDate;
  medicationIdentifierCopy = medicationIdentifier;
  identifierCopy = identifier;
  metadataCopy = metadata;
  deviceCopy = device;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  v33 = [v21 numberWithDouble:quantity];
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:doseQuantity];
  v37 = [self _newMedicationDoseEventWithType:typeCopy startDate:dateCopy endDate:endDateCopy device:deviceCopy metadata:metadataCopy logOrigin:origin scheduleItemIdentifier:identifierCopy medicationUUID:uuidCopy medicationIdentifier:medicationIdentifierCopy scheduledDoseQuantity:v33 doseQuantity:v27 scheduledDate:scheduledDateCopy logStatus:status doseUnitString:0 config:0];

  return v37;
}

+ (id)medicationDoseEventWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata logOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier medicationIdentifier:(id)self0 scheduledDoseQuantity:(double)self1 doseQuantity:(double)self2 scheduledDate:(id)self3 logStatus:(int64_t)self4 medicationUuid:(id)self5 doseUnitString:(id)self6
{
  v22 = MEMORY[0x1E696AD98];
  stringCopy = string;
  uuidCopy = uuid;
  scheduledDateCopy = scheduledDate;
  medicationIdentifierCopy = medicationIdentifier;
  identifierCopy = identifier;
  metadataCopy = metadata;
  deviceCopy = device;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  v35 = [v22 numberWithDouble:quantity];
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:doseQuantity];
  v39 = [self _newMedicationDoseEventWithType:typeCopy startDate:dateCopy endDate:endDateCopy device:deviceCopy metadata:metadataCopy logOrigin:origin scheduleItemIdentifier:identifierCopy medicationUUID:uuidCopy medicationIdentifier:medicationIdentifierCopy scheduledDoseQuantity:v35 doseQuantity:v33 scheduledDate:scheduledDateCopy logStatus:status doseUnitString:stringCopy config:0];

  return v39;
}

@end