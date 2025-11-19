@interface HKMedicationDoseEvent
+ (id)_metadataWithSyncIdentifier:(id)a3 syncVersion:(id)a4 isLastScheduledDose:(BOOL)a5;
+ (id)_newMedicationDoseEventWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 logOrigin:(int64_t)a8 scheduleItemIdentifier:(id)a9 medicationUUID:(id)a10 medicationIdentifier:(id)a11 scheduledDoseQuantity:(id)a12 doseQuantity:(id)a13 scheduledDate:(id)a14 logStatus:(int64_t)a15 doseUnitString:(id)a16 config:(id)a17;
+ (id)medicationDoseEventWithLogOrigin:(int64_t)a3 scheduleItemIdentifier:(id)a4 medicationIdentifier:(id)a5 scheduledDoseQuantity:(id)a6 doseQuantity:(id)a7 scheduledDate:(id)a8 startDate:(id)a9 logStatus:(int64_t)a10 doseUnitString:(id)a11 metadata:(id)a12;
+ (id)medicationDoseEventWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 logOrigin:(int64_t)a8 scheduleItemIdentifier:(id)a9 medicationIdentifier:(id)a10 scheduledDoseQuantity:(double)a11 doseQuantity:(double)a12 scheduledDate:(id)a13 logStatus:(int64_t)a14 medicationUuid:(id)a15;
+ (id)medicationDoseEventWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 logOrigin:(int64_t)a8 scheduleItemIdentifier:(id)a9 medicationIdentifier:(id)a10 scheduledDoseQuantity:(double)a11 doseQuantity:(double)a12 scheduledDate:(id)a13 logStatus:(int64_t)a14 medicationUuid:(id)a15 doseUnitString:(id)a16;
- (BOOL)isEquivalent:(id)a3;
- (BOOL)isLastScheduledDose;
- (HKMedicationDoseEvent)init;
- (HKMedicationDoseEvent)initWithCoder:(id)a3;
- (HKUnit)unit;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)sanitizedSample:(id)a3 forEntitlements:(id)a4;
- (void)_setMedicationConceptIdentifier:(id)a3;
- (void)_setMedicationIdentifier:(id)a3;
- (void)_setMedicationUUID:(id)a3;
- (void)_setScheduleItemIdentifier:(id)a3;
- (void)_setScheduledDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationDoseEvent

- (id)sanitizedSample:(id)a3 forEntitlements:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v5;
  v9 = v8;
  if (isKindOfClass)
  {
    v9 = v8;
    if (([v6 hasEntitlement:@"com.apple.private.healthkit"] & 1) == 0)
    {
      v10 = [v8 scheduleItemIdentifier];
      if (v10 || ([v8 medicationUUID], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {

LABEL_6:
        v9 = [v8 _copyByArchiving];

        [v9 _setScheduleItemIdentifier:0];
        [v9 _setMedicationIdentifier:&stru_1F05FF230];
        goto LABEL_7;
      }

      v12 = [v8 medicationIdentifier];
      v9 = v8;
      if (v12 != &stru_1F05FF230)
      {
        v13 = v12;
        v14 = [v8 medicationIdentifier];
        v15 = [v14 isEqualToString:&stru_1F05FF230];

        v9 = v8;
        if ((v15 & 1) == 0)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_7:

  return v9;
}

+ (id)medicationDoseEventWithLogOrigin:(int64_t)a3 scheduleItemIdentifier:(id)a4 medicationIdentifier:(id)a5 scheduledDoseQuantity:(id)a6 doseQuantity:(id)a7 scheduledDate:(id)a8 startDate:(id)a9 logStatus:(int64_t)a10 doseUnitString:(id)a11 metadata:(id)a12
{
  v18 = a12;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = +[(HKObjectType *)HKMedicationDoseEventType];
  v26 = [a1 _newMedicationDoseEventWithType:v25 startDate:v19 endDate:v19 device:0 metadata:v18 logOrigin:a3 scheduleItemIdentifier:v24 medicationUUID:0 medicationIdentifier:v23 scheduledDoseQuantity:v22 doseQuantity:v21 scheduledDate:v20 logStatus:a10 doseUnitString:0 config:0];

  return v26;
}

+ (id)_newMedicationDoseEventWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 logOrigin:(int64_t)a8 scheduleItemIdentifier:(id)a9 medicationUUID:(id)a10 medicationIdentifier:(id)a11 scheduledDoseQuantity:(id)a12 doseQuantity:(id)a13 scheduledDate:(id)a14 logStatus:(int64_t)a15 doseUnitString:(id)a16 config:(id)a17
{
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a16;
  v25 = a17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __241__HKMedicationDoseEvent__newMedicationDoseEventWithType_startDate_endDate_device_metadata_logOrigin_scheduleItemIdentifier_medicationUUID_medicationIdentifier_scheduledDoseQuantity_doseQuantity_scheduledDate_logStatus_doseUnitString_config___block_invoke;
  aBlock[3] = &unk_1E73813A0;
  v50 = v19;
  v51 = v18;
  v52 = v20;
  v53 = v21;
  v54 = v22;
  v55 = v24;
  v58 = a8;
  v59 = a15;
  v56 = v23;
  v57 = v25;
  v47 = v25;
  v45 = v23;
  v44 = v24;
  v43 = v22;
  v42 = v21;
  v26 = v20;
  v27 = v18;
  v28 = v19;
  v29 = a7;
  v30 = a6;
  v31 = a5;
  v32 = a4;
  v33 = a3;
  v34 = _Block_copy(aBlock);
  v48.receiver = a1;
  v48.super_class = &OBJC_METACLASS___HKMedicationDoseEvent;
  v35 = objc_msgSendSuper2(&v48, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v33, v32, v31, v30, v29, v34);

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
  v7 = [(NSUUID *)self->_medicationUUID UUIDString];
  v8 = [v11 stringWithFormat:@"<%@:%p super=%@, logOrigin = %ld, scheduleItemIdentifier = %@, medicationUUID = %@, medicationIdentifier = %@, scheduledDoseQuantity = %@, doseQuantity = %@, scheduledDate = %@, status = %ld, isLastScheduledDose = %d>", v10, self, v4, logOrigin, scheduleItemIdentifier, v7, self->_medicationIdentifier, self->_scheduledDoseQuantity, self->_doseQuantity, self->_scheduledDate, self->_logStatus, -[HKMedicationDoseEvent isLastScheduledDose](self, "isLastScheduledDose"), 0];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationDoseEvent;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_logOrigin forKey:{@"LogOrigin", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_scheduleItemIdentifier forKey:@"ScheduleItemIdentifier"];
  [v4 encodeObject:self->_medicationUUID forKey:@"MedicationUUID"];
  [v4 encodeObject:self->_medicationIdentifier forKey:@"MedicationIdentifier"];
  [v4 encodeObject:self->_scheduledDoseQuantity forKey:@"ScheduledDoseQuantity"];
  [v4 encodeObject:self->_doseQuantity forKey:@"DoseQuantity"];
  [v4 encodeObject:self->_doseUnitString forKey:@"DoseUnitString"];
  [v4 encodeObject:self->_scheduledDate forKey:@"ScheduledDate"];
  [v4 encodeInteger:self->_logStatus forKey:@"Status"];
}

- (HKMedicationDoseEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HKMedicationDoseEvent;
  v5 = [(HKSample *)&v21 initWithCoder:v4];
  if (v5)
  {
    v5->_logOrigin = [v4 decodeIntegerForKey:@"LogOrigin"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ScheduleItemIdentifier"];
    scheduleItemIdentifier = v5->_scheduleItemIdentifier;
    v5->_scheduleItemIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicationUUID"];
    medicationUUID = v5->_medicationUUID;
    v5->_medicationUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicationIdentifier"];
    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ScheduledDoseQuantity"];
    scheduledDoseQuantity = v5->_scheduledDoseQuantity;
    v5->_scheduledDoseQuantity = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DoseQuantity"];
    doseQuantity = v5->_doseQuantity;
    v5->_doseQuantity = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DoseUnitString"];
    doseUnitString = v5->_doseUnitString;
    v5->_doseUnitString = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ScheduledDate"];
    scheduledDate = v5->_scheduledDate;
    v5->_scheduledDate = v18;

    v5->_logStatus = [v4 decodeIntegerForKey:@"Status"];
  }

  return v5;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v49.receiver = self;
    v49.super_class = HKMedicationDoseEvent;
    if (![(HKSample *)&v49 isEquivalent:v5])
    {
      goto LABEL_35;
    }

    v6 = [(HKMedicationDoseEvent *)self logOrigin];
    if (v6 != [v5 logOrigin])
    {
      goto LABEL_35;
    }

    v7 = [(HKMedicationDoseEvent *)self scheduleItemIdentifier];
    v8 = [v5 scheduleItemIdentifier];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [v5 scheduleItemIdentifier];
      if (!v10)
      {
        goto LABEL_34;
      }

      v11 = v10;
      v12 = [(HKMedicationDoseEvent *)self scheduleItemIdentifier];
      v13 = [v5 scheduleItemIdentifier];
      v14 = [v12 isEqualToString:v13];

      if (!v14)
      {
        goto LABEL_35;
      }
    }

    v7 = [(HKMedicationDoseEvent *)self medicationIdentifier];
    v16 = [v5 medicationIdentifier];
    v9 = v16;
    if (v7 == v16)
    {
    }

    else
    {
      v17 = [v5 medicationIdentifier];
      if (!v17)
      {
        goto LABEL_34;
      }

      v18 = v17;
      v19 = [(HKMedicationDoseEvent *)self medicationIdentifier];
      v20 = [v5 medicationIdentifier];
      v21 = [v19 isEqualToString:v20];

      if (!v21)
      {
        goto LABEL_35;
      }
    }

    v7 = [(HKMedicationDoseEvent *)self scheduledDoseQuantity];
    v22 = [v5 scheduledDoseQuantity];
    v9 = v22;
    if (v7 == v22)
    {
    }

    else
    {
      v23 = [v5 scheduledDoseQuantity];
      if (!v23)
      {
        goto LABEL_34;
      }

      v24 = v23;
      v25 = [(HKMedicationDoseEvent *)self scheduledDoseQuantity];
      v26 = [v5 scheduledDoseQuantity];
      v27 = [v25 isEqual:v26];

      if (!v27)
      {
        goto LABEL_35;
      }
    }

    v7 = [(HKMedicationDoseEvent *)self doseQuantity];
    v28 = [v5 doseQuantity];
    v9 = v28;
    if (v7 == v28)
    {
    }

    else
    {
      v29 = [v5 doseQuantity];
      if (!v29)
      {
        goto LABEL_34;
      }

      v30 = v29;
      v31 = [(HKMedicationDoseEvent *)self doseQuantity];
      v32 = [v5 doseQuantity];
      v33 = [v31 isEqual:v32];

      if (!v33)
      {
        goto LABEL_35;
      }
    }

    v7 = [(HKMedicationDoseEvent *)self doseUnitString];
    v34 = [v5 doseUnitString];
    v9 = v34;
    if (v7 == v34)
    {
    }

    else
    {
      v35 = [v5 doseUnitString];
      if (!v35)
      {
        goto LABEL_34;
      }

      v36 = v35;
      v37 = [(HKMedicationDoseEvent *)self doseUnitString];
      v38 = [v5 doseUnitString];
      v39 = [v37 isEqual:v38];

      if (!v39)
      {
        goto LABEL_35;
      }
    }

    v7 = [(HKMedicationDoseEvent *)self scheduledDate];
    v40 = [v5 scheduledDate];
    v9 = v40;
    if (v7 == v40)
    {

LABEL_39:
      v47 = [(HKMedicationDoseEvent *)self logStatus];
      if (v47 == [v5 logStatus])
      {
        v48 = [(HKMedicationDoseEvent *)self isLastScheduledDose];
        v15 = v48 ^ [v5 isLastScheduledDose] ^ 1;
        goto LABEL_36;
      }

LABEL_35:
      LOBYTE(v15) = 0;
LABEL_36:

      goto LABEL_37;
    }

    v41 = [v5 scheduledDate];
    if (v41)
    {
      v42 = v41;
      v43 = [(HKMedicationDoseEvent *)self scheduledDate];
      v44 = [v5 scheduledDate];
      v45 = [v43 isEqual:v44];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) _init];
  v5 = [(HKSample *)self sampleType];
  [v4 _setSampleType:v5];

  v6 = [(HKSample *)self startDate];
  [v4 _setStartDate:v6];

  v7 = [(HKSample *)self endDate];
  [v4 _setEndDate:v7];

  [v4 _setLogOrigin:{-[HKMedicationDoseEvent logOrigin](self, "logOrigin")}];
  [v4 _setLogStatus:{-[HKMedicationDoseEvent logStatus](self, "logStatus")}];
  v8 = [(HKMedicationDoseEvent *)self medicationUUID];
  [v4 _setMedicationUUID:v8];

  v9 = [(HKMedicationDoseEvent *)self scheduleItemIdentifier];
  [v4 _setScheduleItemIdentifier:v9];

  v10 = [(HKMedicationDoseEvent *)self medicationIdentifier];
  [v4 _setMedicationIdentifier:v10];

  v11 = [(HKMedicationDoseEvent *)self scheduledDoseQuantity];
  [v4 _setScheduledDoseQuantity:v11];

  v12 = [(HKMedicationDoseEvent *)self doseQuantity];
  [v4 _setDoseQuantity:v12];

  v13 = [(HKMedicationDoseEvent *)self doseUnitString];
  [v4 _setDoseUnitString:v13];

  v14 = [(HKMedicationDoseEvent *)self scheduledDate];
  [v4 _setScheduledDate:v14];

  v15 = [(HKMedicationDoseEvent *)self medicationConceptIdentifier];
  [v4 _setMedicationConceptIdentifier:v15];

  return v4;
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

- (void)_setScheduleItemIdentifier:(id)a3
{
  v4 = [a3 copy];
  scheduleItemIdentifier = self->_scheduleItemIdentifier;
  self->_scheduleItemIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, scheduleItemIdentifier);
}

- (void)_setMedicationUUID:(id)a3
{
  v4 = [a3 copy];
  medicationUUID = self->_medicationUUID;
  self->_medicationUUID = v4;

  MEMORY[0x1EEE66BB8](v4, medicationUUID);
}

- (void)_setMedicationIdentifier:(id)a3
{
  v4 = [a3 copy];
  medicationIdentifier = self->_medicationIdentifier;
  self->_medicationIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, medicationIdentifier);
}

- (void)_setMedicationConceptIdentifier:(id)a3
{
  v4 = [a3 copy];
  medicationConceptIdentifier = self->_medicationConceptIdentifier;
  self->_medicationConceptIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, medicationConceptIdentifier);
}

- (void)_setScheduledDate:(id)a3
{
  v4 = [a3 copy];
  scheduledDate = self->_scheduledDate;
  self->_scheduledDate = v4;

  MEMORY[0x1EEE66BB8](v4, scheduledDate);
}

- (BOOL)isLastScheduledDose
{
  v2 = [(HKObject *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"_HKPrivateMetadataKeyIsLastScheduledDose"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v10.receiver = self;
  v10.super_class = HKMedicationDoseEvent;
  v5 = [(HKSample *)&v10 _validateWithConfiguration:a3.var0, a3.var1];
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

+ (id)_metadataWithSyncIdentifier:(id)a3 syncVersion:(id)a4 isLastScheduledDose:(BOOL)a5
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v16[0] = @"HKMetadataKeySyncIdentifier";
    v16[1] = @"HKMetadataKeySyncVersion";
    v17[0] = a3;
    v17[1] = a4;
    v16[2] = @"_HKPrivateMetadataKeyIsLastScheduledDose";
    v6 = MEMORY[0x1E696AD98];
    v7 = a4;
    v8 = a3;
    v9 = [v6 numberWithBool:1];
    v17[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  }

  else
  {
    v14[0] = @"HKMetadataKeySyncIdentifier";
    v14[1] = @"HKMetadataKeySyncVersion";
    v15[0] = a3;
    v15[1] = a4;
    v11 = MEMORY[0x1E695DF20];
    v8 = a4;
    v9 = a3;
    v10 = [v11 dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)medicationDoseEventWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 logOrigin:(int64_t)a8 scheduleItemIdentifier:(id)a9 medicationIdentifier:(id)a10 scheduledDoseQuantity:(double)a11 doseQuantity:(double)a12 scheduledDate:(id)a13 logStatus:(int64_t)a14 medicationUuid:(id)a15
{
  v21 = MEMORY[0x1E696AD98];
  v34 = a15;
  v22 = a13;
  v31 = a10;
  v29 = a9;
  v30 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v33 = [v21 numberWithDouble:a11];
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:a12];
  v37 = [a1 _newMedicationDoseEventWithType:v26 startDate:v25 endDate:v24 device:v23 metadata:v30 logOrigin:a8 scheduleItemIdentifier:v29 medicationUUID:v34 medicationIdentifier:v31 scheduledDoseQuantity:v33 doseQuantity:v27 scheduledDate:v22 logStatus:a14 doseUnitString:0 config:0];

  return v37;
}

+ (id)medicationDoseEventWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 logOrigin:(int64_t)a8 scheduleItemIdentifier:(id)a9 medicationIdentifier:(id)a10 scheduledDoseQuantity:(double)a11 doseQuantity:(double)a12 scheduledDate:(id)a13 logStatus:(int64_t)a14 medicationUuid:(id)a15 doseUnitString:(id)a16
{
  v22 = MEMORY[0x1E696AD98];
  v36 = a16;
  v23 = a15;
  v32 = a13;
  v24 = a10;
  v30 = a9;
  v31 = a7;
  v25 = a6;
  v26 = a5;
  v27 = a4;
  v28 = a3;
  v35 = [v22 numberWithDouble:a11];
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:a12];
  v39 = [a1 _newMedicationDoseEventWithType:v28 startDate:v27 endDate:v26 device:v25 metadata:v31 logOrigin:a8 scheduleItemIdentifier:v30 medicationUUID:v23 medicationIdentifier:v24 scheduledDoseQuantity:v35 doseQuantity:v33 scheduledDate:v32 logStatus:a14 doseUnitString:v36 config:0];

  return v39;
}

@end