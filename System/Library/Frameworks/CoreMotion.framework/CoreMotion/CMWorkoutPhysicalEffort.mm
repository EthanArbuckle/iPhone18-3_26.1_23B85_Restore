@interface CMWorkoutPhysicalEffort
+ (HRRecoveryInputWR)inputFromPreparedStatement:(SEL)statement;
- (BOOL)isEqual:(id)equal;
- (CMWorkoutPhysicalEffort)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (CMWorkoutPhysicalEffort)initWithCoder:(id)coder;
- (CMWorkoutPhysicalEffort)initWithRecordId:(unint64_t)id startDate:(id)date mets:(double)mets gradeType:(int64_t)type grade:(double)grade userMets:(double)userMets metsSource:(int64_t)source;
- (CMWorkoutPhysicalEffort)initWithSample:(HRRecoveryInputWR *)sample;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMWorkoutPhysicalEffort

- (CMWorkoutPhysicalEffort)initWithRecordId:(unint64_t)id startDate:(id)date mets:(double)mets gradeType:(int64_t)type grade:(double)grade userMets:(double)userMets metsSource:(int64_t)source
{
  v19.receiver = self;
  v19.super_class = CMWorkoutPhysicalEffort;
  v16 = [(CMWorkoutPhysicalEffort *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->fRecordId = id;
    v16->fStartDate = date;
    v17->fMets = mets;
    v17->fGradeType = type;
    v17->fGrade = grade;
    v17->fUserMets = userMets;
    v17->fMetsSource = source;
  }

  return v17;
}

- (CMWorkoutPhysicalEffort)initWithSample:(HRRecoveryInputWR *)sample
{
  v10.receiver = self;
  v10.super_class = CMWorkoutPhysicalEffort;
  v4 = [(CMWorkoutPhysicalEffort *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = sample->var0;
    v6 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, sample->var1);
    v5->fMets = sample->var2;
    v5->fGradeType = sample->var3;
    v5->fGrade = sample->var4;
    v5->fUserMets = sample->var5;
    v5->fMetsSource = sample->var6;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWorkoutPhysicalEffort;
  [(CMWorkoutPhysicalEffort *)&v3 dealloc];
}

- (CMWorkoutPhysicalEffort)initWithCoder:(id)coder
{
  v20.receiver = self;
  v20.super_class = CMWorkoutPhysicalEffort;
  v5 = [(CMWorkoutPhysicalEffort *)&v20 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMWorkoutPhysicalEffortCodingKeyRecordId");
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCMWorkoutPhysicalEffortCodingKeyStartDate");
    v5->fStartDate = objc_msgSend_copy(v8, v9, v10);
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCMWorkoutPhysicalEffortCodingKeyMets");
    v5->fMets = v12;
    v5->fGradeType = objc_msgSend_decodeIntegerForKey_(coder, v13, @"kCMWorkoutPhysicalEffortCodingKeyGradeType");
    objc_msgSend_decodeDoubleForKey_(coder, v14, @"kCMWorkoutPhysicalEffortCodingKeyGrade");
    v5->fGrade = v15;
    objc_msgSend_decodeDoubleForKey_(coder, v16, @"kCMWorkoutPhysicalEffortCodingKeyUserMets");
    v5->fUserMets = v17;
    v5->fMetsSource = objc_msgSend_decodeIntegerForKey_(coder, v18, @"kCMWorkoutPhysicalEffortCodingKeyMetsSource");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  fRecordId = self->fRecordId;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fStartDate, a2, zone);
  v7 = v6;
  fMets = self->fMets;
  fGradeType = self->fGradeType;
  fGrade = self->fGrade;
  fUserMets = self->fUserMets;
  fMetsSource = self->fMetsSource;
  v13 = objc_opt_class();
  v15 = objc_msgSend_allocWithZone_(v13, v14, zone);
  v18[0] = fRecordId;
  v18[1] = v7;
  *&v18[2] = fMets;
  v19 = fGradeType;
  v20 = fGrade;
  v21 = fUserMets;
  v22 = fMetsSource;
  return objc_msgSend_initWithSample_(v15, v16, v18);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->fRecordId, @"kCMWorkoutPhysicalEffortCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->fStartDate, @"kCMWorkoutPhysicalEffortCodingKeyStartDate");
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMWorkoutPhysicalEffortCodingKeyMets", self->fMets);
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->fGradeType, @"kCMWorkoutPhysicalEffortCodingKeyGradeType");
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCMWorkoutPhysicalEffortCodingKeyGrade", self->fGrade);
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"kCMWorkoutPhysicalEffortCodingKeyUserMets", self->fUserMets);
  fMetsSource = self->fMetsSource;

  objc_msgSend_encodeInteger_forKey_(coder, v10, fMetsSource, @"kCMWorkoutPhysicalEffortCodingKeyMetsSource");
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = objc_msgSend_recordId(self, v5, v6);
  if (v7 != objc_msgSend_recordId(equal, v8, v9))
  {
    goto LABEL_11;
  }

  if (!objc_msgSend_startDate(self, v10, v11) && !objc_msgSend_startDate(equal, v12, v13) || (started = objc_msgSend_startDate(self, v12, v13), v17 = objc_msgSend_startDate(equal, v15, v16), (isEqualToDate = objc_msgSend_isEqualToDate_(started, v18, v17)) != 0))
  {
    objc_msgSend_mets(self, v12, v13);
    v21 = v20;
    objc_msgSend_mets(equal, v22, v23);
    if (v21 == v26)
    {
      v27 = objc_msgSend_gradeType(self, v24, v25);
      if (v27 == objc_msgSend_gradeType(equal, v28, v29))
      {
        objc_msgSend_grade(self, v30, v31);
        v33 = v32;
        objc_msgSend_grade(equal, v34, v35);
        if (v33 == v38)
        {
          objc_msgSend_userMets(self, v36, v37);
          v40 = v39;
          objc_msgSend_userMets(equal, v41, v42);
          if (v40 == v45)
          {
            v46 = objc_msgSend_metsSource(self, v43, v44);
            LOBYTE(isEqualToDate) = v46 == objc_msgSend_metsSource(equal, v47, v48);
            return isEqualToDate;
          }
        }
      }
    }

LABEL_11:
    LOBYTE(isEqualToDate) = 0;
  }

  return isEqualToDate;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_recordId(self, v6, v7);
  started = objc_msgSend_startDate(self, v9, v10);
  objc_msgSend_mets(self, v12, v13);
  v15 = v14;
  v18 = objc_msgSend_gradeType(self, v16, v17);
  objc_msgSend_grade(self, v19, v20);
  v22 = v21;
  objc_msgSend_userMets(self, v23, v24);
  v26 = v25;
  v29 = objc_msgSend_metsSource(self, v27, v28);
  return objc_msgSend_stringWithFormat_(v3, v30, @"%@, <recordId, %lu, startDate, %@, mets, %f, gradeType, %lu, grade, %f, userMets, %f, metsSource, %lu>", v5, v8, started, v15, v18, v22, v26, v29);
}

+ (HRRecoveryInputWR)inputFromPreparedStatement:(SEL)statement
{
  retstr->var0 = sqlite3_column_int(a4, 0);
  retstr->var1 = sqlite3_column_double(a4, 1);
  retstr->var2 = sqlite3_column_double(a4, 2);
  retstr->var3 = sqlite3_column_int(a4, 3);
  retstr->var4 = sqlite3_column_double(a4, 4);
  retstr->var5 = sqlite3_column_double(a4, 5);
  result = sqlite3_column_int(a4, 6);
  retstr->var6 = result;
  return result;
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMWorkoutPhysicalEffort)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if (objc_msgSend_length(representation, a2, representation, metadata, timestamp))
  {
    v14.receiver = self;
    v14.super_class = CMWorkoutPhysicalEffort;
    v7 = [(CMWorkoutPhysicalEffort *)&v14 init];
    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v8, v10, v9, representation, 0);
      if (v11)
      {
        v12 = v11;

        return v12;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

- (id)sr_dictionaryRepresentation
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28[0] = @"startTime";
  v4 = MEMORY[0x1E696AD98];
  started = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v6, v7);
  v29[0] = objc_msgSend_numberWithDouble_(v4, v8, v9);
  v28[1] = @"mets";
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_mets(self, v11, v12);
  v29[1] = objc_msgSend_numberWithDouble_(v10, v13, v14);
  v28[2] = @"grade";
  v15 = MEMORY[0x1E696AD98];
  objc_msgSend_grade(self, v16, v17);
  v29[2] = objc_msgSend_numberWithDouble_(v15, v18, v19);
  v28[3] = @"userMets";
  v20 = MEMORY[0x1E696AD98];
  objc_msgSend_userMets(self, v21, v22);
  v29[3] = objc_msgSend_numberWithDouble_(v20, v23, v24);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, v29, v28, 4);
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

@end