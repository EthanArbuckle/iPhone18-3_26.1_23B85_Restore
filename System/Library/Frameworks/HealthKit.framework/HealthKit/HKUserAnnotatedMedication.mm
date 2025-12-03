@interface HKUserAnnotatedMedication
- (BOOL)isEqual:(id)equal;
- (HKUserAnnotatedMedication)init;
- (HKUserAnnotatedMedication)initWithCoder:(id)coder;
- (HKUserAnnotatedMedication)initWithNickname:(id)nickname isArchived:(BOOL)archived hasSchedule:(BOOL)schedule medication:(id)medication;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUserAnnotatedMedication

- (HKUserAnnotatedMedication)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserAnnotatedMedication)initWithNickname:(id)nickname isArchived:(BOOL)archived hasSchedule:(BOOL)schedule medication:(id)medication
{
  nicknameCopy = nickname;
  medicationCopy = medication;
  if (!medicationCopy)
  {
    [HKUserAnnotatedMedication initWithNickname:a2 isArchived:self hasSchedule:? medication:?];
  }

  v19.receiver = self;
  v19.super_class = HKUserAnnotatedMedication;
  v13 = [(HKUserAnnotatedMedication *)&v19 init];
  if (v13)
  {
    v14 = [nicknameCopy copy];
    nickname = v13->_nickname;
    v13->_nickname = v14;

    v13->_isArchived = archived;
    v13->_hasSchedule = schedule;
    v16 = [medicationCopy copy];
    medication = v13->_medication;
    v13->_medication = v16;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      nickname = [(HKUserAnnotatedMedication *)v5 nickname];
      nickname2 = [(HKUserAnnotatedMedication *)self nickname];
      v8 = nickname2;
      if (nickname == nickname2)
      {
      }

      else
      {
        nickname3 = [(HKUserAnnotatedMedication *)self nickname];
        if (!nickname3)
        {
          goto LABEL_16;
        }

        v10 = nickname3;
        nickname4 = [(HKUserAnnotatedMedication *)v5 nickname];
        nickname5 = [(HKUserAnnotatedMedication *)self nickname];
        v13 = [nickname4 isEqualToString:nickname5];

        if (!v13)
        {
          goto LABEL_17;
        }
      }

      isArchived = [(HKUserAnnotatedMedication *)v5 isArchived];
      if (isArchived != [(HKUserAnnotatedMedication *)self isArchived])
      {
        goto LABEL_17;
      }

      hasSchedule = [(HKUserAnnotatedMedication *)v5 hasSchedule];
      if (hasSchedule != [(HKUserAnnotatedMedication *)self hasSchedule])
      {
        goto LABEL_17;
      }

      nickname = [(HKUserAnnotatedMedication *)v5 medication];
      medication = [(HKUserAnnotatedMedication *)self medication];
      v8 = medication;
      if (nickname == medication)
      {

LABEL_21:
        v14 = 1;
        goto LABEL_18;
      }

      medication2 = [(HKUserAnnotatedMedication *)self medication];
      if (medication2)
      {
        v19 = medication2;
        medication3 = [(HKUserAnnotatedMedication *)v5 medication];
        medication4 = [(HKUserAnnotatedMedication *)self medication];
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

- (HKUserAnnotatedMedication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKUserAnnotatedMedication;
  v5 = [(HKUserAnnotatedMedication *)&v11 init];
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

- (void)initWithNickname:(uint64_t)a1 isArchived:(uint64_t)a2 hasSchedule:medication:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUserAnnotatedMedication.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"medication"}];
}

@end