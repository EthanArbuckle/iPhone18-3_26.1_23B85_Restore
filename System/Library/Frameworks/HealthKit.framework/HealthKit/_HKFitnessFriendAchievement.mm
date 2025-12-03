@interface _HKFitnessFriendAchievement
+ (id)achievementWithTemplateUniqueName:(id)name completedDate:(id)date value:(id)value friendUUID:(id)d;
- (_HKFitnessFriendAchievement)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKFitnessFriendAchievement

+ (id)achievementWithTemplateUniqueName:(id)name completedDate:(id)date value:(id)value friendUUID:(id)d
{
  nameCopy = name;
  dateCopy = date;
  valueCopy = value;
  dCopy = d;
  if (nameCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_HKFitnessFriendAchievement achievementWithTemplateUniqueName:a2 completedDate:self value:? friendUUID:?];
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  [_HKFitnessFriendAchievement achievementWithTemplateUniqueName:a2 completedDate:self value:? friendUUID:?];
LABEL_3:
  v15 = +[HKObjectType fitnessFriendAchievementType];
  [dateCopy timeIntervalSinceReferenceDate];
  v17 = v16;
  [dateCopy timeIntervalSinceReferenceDate];
  v19 = v18;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __96___HKFitnessFriendAchievement_achievementWithTemplateUniqueName_completedDate_value_friendUUID___block_invoke;
  v27[3] = &unk_1E7381A18;
  v28 = dCopy;
  v29 = nameCopy;
  v30 = dateCopy;
  v31 = valueCopy;
  v26.receiver = self;
  v26.super_class = &OBJC_METACLASS____HKFitnessFriendAchievement;
  v20 = valueCopy;
  v21 = dateCopy;
  v22 = nameCopy;
  v23 = dCopy;
  v24 = objc_msgSendSuper2(&v26, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v15, 0, 0, v27, v17, v19);

  return v24;
}

- (_HKFitnessFriendAchievement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _HKFitnessFriendAchievement;
  v5 = [(HKSample *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FriendUUID"];
    friendUUID = v5->_friendUUID;
    v5->_friendUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TemplateUniqueName"];
    templateUniqueName = v5->_templateUniqueName;
    v5->_templateUniqueName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CompletedDate"];
    completedDate = v5->_completedDate;
    v5->_completedDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKFitnessFriendAchievement;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_friendUUID forKey:{@"FriendUUID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_templateUniqueName forKey:@"TemplateUniqueName"];
  [coderCopy encodeObject:self->_completedDate forKey:@"CompletedDate"];
  [coderCopy encodeObject:self->_value forKey:@"Value"];
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