@interface HKUserTrackedMedication
+ (id)_newUserTrackedMedicationWithNickname:(char)nickname isArchived:(char)archived hasSchedule:(void *)schedule medication:(uint64_t)medication device:(void *)device config:;
+ (id)userTrackedMedicationWithNickname:(id)nickname isArchived:(BOOL)archived hasSchedule:(BOOL)schedule medication:(id)medication device:(id)device;
- (BOOL)isEquivalent:(id)equivalent;
- (HKUserTrackedMedication)init;
- (HKUserTrackedMedication)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

+ (id)userTrackedMedicationWithNickname:(id)nickname isArchived:(BOOL)archived hasSchedule:(BOOL)schedule medication:(id)medication device:(id)device
{
  v7 = [(HKUserTrackedMedication *)self _newUserTrackedMedicationWithNickname:nickname isArchived:archived hasSchedule:schedule medication:medication device:medication config:0];

  return v7;
}

+ (id)_newUserTrackedMedicationWithNickname:(char)nickname isArchived:(char)archived hasSchedule:(void *)schedule medication:(uint64_t)medication device:(void *)device config:
{
  v11 = a2;
  scheduleCopy = schedule;
  deviceCopy = device;
  v14 = objc_opt_self();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__HKUserTrackedMedication__newUserTrackedMedicationWithNickname_isArchived_hasSchedule_medication_device_config___block_invoke;
  aBlock[3] = &unk_1E7384998;
  nicknameCopy = nickname;
  archivedCopy = archived;
  v24 = v11;
  v25 = scheduleCopy;
  v26 = deviceCopy;
  v15 = deviceCopy;
  v16 = scheduleCopy;
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

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if (self == equivalentCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equivalentCopy;
      nickname = [(HKUserTrackedMedication *)v5 nickname];
      nickname2 = [(HKUserTrackedMedication *)self nickname];
      v8 = nickname2;
      if (nickname == nickname2)
      {
      }

      else
      {
        nickname3 = [(HKUserTrackedMedication *)self nickname];
        if (!nickname3)
        {
          goto LABEL_16;
        }

        v10 = nickname3;
        nickname4 = [(HKUserTrackedMedication *)v5 nickname];
        nickname5 = [(HKUserTrackedMedication *)self nickname];
        v13 = [nickname4 isEqualToString:nickname5];

        if (!v13)
        {
          goto LABEL_17;
        }
      }

      isArchived = [(HKUserTrackedMedication *)v5 isArchived];
      if (isArchived != [(HKUserTrackedMedication *)self isArchived])
      {
        goto LABEL_17;
      }

      hasSchedule = [(HKUserTrackedMedication *)v5 hasSchedule];
      if (hasSchedule != [(HKUserTrackedMedication *)self hasSchedule])
      {
        goto LABEL_17;
      }

      nickname = [(HKUserTrackedMedication *)v5 medication];
      medication = [(HKUserTrackedMedication *)self medication];
      v8 = medication;
      if (nickname == medication)
      {

LABEL_21:
        v14 = 1;
        goto LABEL_18;
      }

      medication2 = [(HKUserTrackedMedication *)self medication];
      if (medication2)
      {
        v19 = medication2;
        medication3 = [(HKUserTrackedMedication *)v5 medication];
        medication4 = [(HKUserTrackedMedication *)self medication];
        v22 = [medication3 isEqual:medication4];

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

- (HKUserTrackedMedication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKUserTrackedMedication;
  v5 = [(HKUserTrackedConcept *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NicknameKey"];
    nickname = v5->_nickname;
    v5->_nickname = v6;

    v5->_isArchived = [coderCopy decodeBoolForKey:@"IsArchivedKey"];
    v5->_hasSchedule = [coderCopy decodeBoolForKey:@"HasScheduleKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicationKey"];
    medication = v5->_medication;
    v5->_medication = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  nickname = self->_nickname;
  coderCopy = coder;
  [coderCopy encodeObject:nickname forKey:@"NicknameKey"];
  [coderCopy encodeBool:self->_isArchived forKey:@"IsArchivedKey"];
  [coderCopy encodeBool:self->_hasSchedule forKey:@"HasScheduleKey"];
  [coderCopy encodeObject:self->_medication forKey:@"MedicationKey"];
}

@end