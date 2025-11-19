@interface HKUserAnnotatedMedication
- (BOOL)isEqual:(id)a3;
- (HKUserAnnotatedMedication)init;
- (HKUserAnnotatedMedication)initWithCoder:(id)a3;
- (HKUserAnnotatedMedication)initWithNickname:(id)a3 isArchived:(BOOL)a4 hasSchedule:(BOOL)a5 medication:(id)a6;
- (void)encodeWithCoder:(id)a3;
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

- (HKUserAnnotatedMedication)initWithNickname:(id)a3 isArchived:(BOOL)a4 hasSchedule:(BOOL)a5 medication:(id)a6
{
  v11 = a3;
  v12 = a6;
  if (!v12)
  {
    [HKUserAnnotatedMedication initWithNickname:a2 isArchived:self hasSchedule:? medication:?];
  }

  v19.receiver = self;
  v19.super_class = HKUserAnnotatedMedication;
  v13 = [(HKUserAnnotatedMedication *)&v19 init];
  if (v13)
  {
    v14 = [v11 copy];
    nickname = v13->_nickname;
    v13->_nickname = v14;

    v13->_isArchived = a4;
    v13->_hasSchedule = a5;
    v16 = [v12 copy];
    medication = v13->_medication;
    v13->_medication = v16;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
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
      v6 = [(HKUserAnnotatedMedication *)v5 nickname];
      v7 = [(HKUserAnnotatedMedication *)self nickname];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKUserAnnotatedMedication *)self nickname];
        if (!v9)
        {
          goto LABEL_16;
        }

        v10 = v9;
        v11 = [(HKUserAnnotatedMedication *)v5 nickname];
        v12 = [(HKUserAnnotatedMedication *)self nickname];
        v13 = [v11 isEqualToString:v12];

        if (!v13)
        {
          goto LABEL_17;
        }
      }

      v15 = [(HKUserAnnotatedMedication *)v5 isArchived];
      if (v15 != [(HKUserAnnotatedMedication *)self isArchived])
      {
        goto LABEL_17;
      }

      v16 = [(HKUserAnnotatedMedication *)v5 hasSchedule];
      if (v16 != [(HKUserAnnotatedMedication *)self hasSchedule])
      {
        goto LABEL_17;
      }

      v6 = [(HKUserAnnotatedMedication *)v5 medication];
      v17 = [(HKUserAnnotatedMedication *)self medication];
      v8 = v17;
      if (v6 == v17)
      {

LABEL_21:
        v14 = 1;
        goto LABEL_18;
      }

      v18 = [(HKUserAnnotatedMedication *)self medication];
      if (v18)
      {
        v19 = v18;
        v20 = [(HKUserAnnotatedMedication *)v5 medication];
        v21 = [(HKUserAnnotatedMedication *)self medication];
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

- (HKUserAnnotatedMedication)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKUserAnnotatedMedication;
  v5 = [(HKUserAnnotatedMedication *)&v11 init];
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

- (void)initWithNickname:(uint64_t)a1 isArchived:(uint64_t)a2 hasSchedule:medication:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUserAnnotatedMedication.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"medication"}];
}

@end