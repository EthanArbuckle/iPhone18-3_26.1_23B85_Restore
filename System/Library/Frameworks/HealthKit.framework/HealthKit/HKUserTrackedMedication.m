@interface HKUserTrackedMedication
+ (id)_newUserTrackedMedicationWithNickname:(char)a3 isArchived:(char)a4 hasSchedule:(void *)a5 medication:(uint64_t)a6 device:(void *)a7 config:;
+ (id)userTrackedMedicationWithNickname:(id)a3 isArchived:(BOOL)a4 hasSchedule:(BOOL)a5 medication:(id)a6 device:(id)a7;
- (BOOL)isEquivalent:(id)a3;
- (HKUserTrackedMedication)init;
- (HKUserTrackedMedication)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUserTrackedMedication

- (HKUserTrackedMedication)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)userTrackedMedicationWithNickname:(id)a3 isArchived:(BOOL)a4 hasSchedule:(BOOL)a5 medication:(id)a6 device:(id)a7
{
  v7 = [(HKUserTrackedMedication *)a1 _newUserTrackedMedicationWithNickname:a3 isArchived:a4 hasSchedule:a5 medication:a6 device:a6 config:0];

  return v7;
}

+ (id)_newUserTrackedMedicationWithNickname:(char)a3 isArchived:(char)a4 hasSchedule:(void *)a5 medication:(uint64_t)a6 device:(void *)a7 config:
{
  v11 = a2;
  v12 = a5;
  v13 = a7;
  v14 = objc_opt_self();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__HKUserTrackedMedication__newUserTrackedMedicationWithNickname_isArchived_hasSchedule_medication_device_config___block_invoke;
  aBlock[3] = &unk_1E7384998;
  v27 = a3;
  v28 = a4;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = _Block_copy(aBlock);
  v19 = [(HKObjectType *)HKUserTrackedConceptType userTrackedConceptTypeForIdentifier:@"HKUserTrackedConceptTypeIdentifierMedication"];
  v22.receiver = v14;
  v22.super_class = &OBJC_METACLASS___HKUserTrackedMedication;
  v20 = objc_msgSendSuper2(&v22, sel__newUserTrackedConceptWithType_config_, v19, v18);

  return v20;
}

void __113__HKUserTrackedMedication__newUserTrackedMedicationWithNickname_isArchived_hasSchedule_medication_device_config___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v8[3];
  v8[3] = v3;

  *(v8 + 16) = *(a1 + 56);
  *(v8 + 17) = *(a1 + 57);
  v5 = [*(a1 + 40) copy];
  v6 = v8[4];
  v8[4] = v5;

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKUserTrackedMedication *)v5 nickname];
      v7 = [(HKUserTrackedMedication *)self nickname];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKUserTrackedMedication *)self nickname];
        if (!v9)
        {
          goto LABEL_16;
        }

        v10 = v9;
        v11 = [(HKUserTrackedMedication *)v5 nickname];
        v12 = [(HKUserTrackedMedication *)self nickname];
        v13 = [v11 isEqualToString:v12];

        if (!v13)
        {
          goto LABEL_17;
        }
      }

      v15 = [(HKUserTrackedMedication *)v5 isArchived];
      if (v15 != [(HKUserTrackedMedication *)self isArchived])
      {
        goto LABEL_17;
      }

      v16 = [(HKUserTrackedMedication *)v5 hasSchedule];
      if (v16 != [(HKUserTrackedMedication *)self hasSchedule])
      {
        goto LABEL_17;
      }

      v6 = [(HKUserTrackedMedication *)v5 medication];
      v17 = [(HKUserTrackedMedication *)self medication];
      v8 = v17;
      if (v6 == v17)
      {

LABEL_21:
        v14 = 1;
        goto LABEL_18;
      }

      v18 = [(HKUserTrackedMedication *)self medication];
      if (v18)
      {
        v19 = v18;
        v20 = [(HKUserTrackedMedication *)v5 medication];
        v21 = [(HKUserTrackedMedication *)self medication];
        v22 = [v20 isEqual:v21];

        if (v22)
        {
          goto LABEL_21;
        }

LABEL_17:
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_16:

      goto LABEL_17;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (HKUserTrackedMedication)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKUserTrackedMedication;
  v5 = [(HKUserTrackedConcept *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NicknameKey"];
    nickname = v5->_nickname;
    v5->_nickname = v6;

    v5->_isArchived = [v4 decodeBoolForKey:@"IsArchivedKey"];
    v5->_hasSchedule = [v4 decodeBoolForKey:@"HasScheduleKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicationKey"];
    medication = v5->_medication;
    v5->_medication = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  nickname = self->_nickname;
  v5 = a3;
  [v5 encodeObject:nickname forKey:@"NicknameKey"];
  [v5 encodeBool:self->_isArchived forKey:@"IsArchivedKey"];
  [v5 encodeBool:self->_hasSchedule forKey:@"HasScheduleKey"];
  [v5 encodeObject:self->_medication forKey:@"MedicationKey"];
}

@end