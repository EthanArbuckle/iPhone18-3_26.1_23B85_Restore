@interface _HKFitnessFriendAchievement
+ (id)achievementWithTemplateUniqueName:(id)a3 completedDate:(id)a4 value:(id)a5 friendUUID:(id)a6;
- (_HKFitnessFriendAchievement)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKFitnessFriendAchievement

+ (id)achievementWithTemplateUniqueName:(id)a3 completedDate:(id)a4 value:(id)a5 friendUUID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_HKFitnessFriendAchievement achievementWithTemplateUniqueName:a2 completedDate:a1 value:? friendUUID:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [_HKFitnessFriendAchievement achievementWithTemplateUniqueName:a2 completedDate:a1 value:? friendUUID:?];
LABEL_3:
  v15 = +[HKObjectType fitnessFriendAchievementType];
  [v12 timeIntervalSinceReferenceDate];
  v17 = v16;
  [v12 timeIntervalSinceReferenceDate];
  v19 = v18;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __96___HKFitnessFriendAchievement_achievementWithTemplateUniqueName_completedDate_value_friendUUID___block_invoke;
  v27[3] = &unk_1E7381A18;
  v28 = v14;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v26.receiver = a1;
  v26.super_class = &OBJC_METACLASS____HKFitnessFriendAchievement;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  v23 = v14;
  v24 = objc_msgSendSuper2(&v26, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v15, 0, 0, v27, v17, v19);

  return v24;
}

- (_HKFitnessFriendAchievement)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _HKFitnessFriendAchievement;
  v5 = [(HKSample *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FriendUUID"];
    friendUUID = v5->_friendUUID;
    v5->_friendUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TemplateUniqueName"];
    templateUniqueName = v5->_templateUniqueName;
    v5->_templateUniqueName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CompletedDate"];
    completedDate = v5->_completedDate;
    v5->_completedDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKFitnessFriendAchievement;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_friendUUID forKey:{@"FriendUUID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_templateUniqueName forKey:@"TemplateUniqueName"];
  [v4 encodeObject:self->_completedDate forKey:@"CompletedDate"];
  [v4 encodeObject:self->_value forKey:@"Value"];
}

+ (void)achievementWithTemplateUniqueName:(uint64_t)a1 completedDate:(uint64_t)a2 value:friendUUID:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKFitnessFriendAchievement.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"templateUniqueName != nil"}];
}

+ (void)achievementWithTemplateUniqueName:(uint64_t)a1 completedDate:(uint64_t)a2 value:friendUUID:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKFitnessFriendAchievement.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"completedDate != nil"}];
}

@end