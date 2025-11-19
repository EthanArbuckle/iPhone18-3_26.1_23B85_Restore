@interface CMWorkoutPhysicalEffort
+ (HRRecoveryInputWR)inputFromPreparedStatement:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CMWorkoutPhysicalEffort)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMWorkoutPhysicalEffort)initWithCoder:(id)a3;
- (CMWorkoutPhysicalEffort)initWithRecordId:(unint64_t)a3 startDate:(id)a4 mets:(double)a5 gradeType:(int64_t)a6 grade:(double)a7 userMets:(double)a8 metsSource:(int64_t)a9;
- (CMWorkoutPhysicalEffort)initWithSample:(HRRecoveryInputWR *)a3;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMWorkoutPhysicalEffort

- (CMWorkoutPhysicalEffort)initWithRecordId:(unint64_t)a3 startDate:(id)a4 mets:(double)a5 gradeType:(int64_t)a6 grade:(double)a7 userMets:(double)a8 metsSource:(int64_t)a9
{
  v19.receiver = self;
  v19.super_class = CMWorkoutPhysicalEffort;
  v16 = [(CMWorkoutPhysicalEffort *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->fRecordId = a3;
    v16->fStartDate = a4;
    v17->fMets = a5;
    v17->fGradeType = a6;
    v17->fGrade = a7;
    v17->fUserMets = a8;
    v17->fMetsSource = a9;
  }

  return v17;
}

- (CMWorkoutPhysicalEffort)initWithSample:(HRRecoveryInputWR *)a3
{
  v10.receiver = self;
  v10.super_class = CMWorkoutPhysicalEffort;
  v4 = [(CMWorkoutPhysicalEffort *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = a3->var0;
    v6 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, a3->var1);
    v5->fMets = a3->var2;
    v5->fGradeType = a3->var3;
    v5->fGrade = a3->var4;
    v5->fUserMets = a3->var5;
    v5->fMetsSource = a3->var6;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWorkoutPhysicalEffort;
  [(CMWorkoutPhysicalEffort *)&v3 dealloc];
}

- (CMWorkoutPhysicalEffort)initWithCoder:(id)a3
{
  v20.receiver = self;
  v20.super_class = CMWorkoutPhysicalEffort;
  v5 = [(CMWorkoutPhysicalEffort *)&v20 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMWorkoutPhysicalEffortCodingKeyRecordId");
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMWorkoutPhysicalEffortCodingKeyStartDate");
    v5->fStartDate = objc_msgSend_copy(v8, v9, v10);
    objc_msgSend_decodeDoubleForKey_(a3, v11, @"kCMWorkoutPhysicalEffortCodingKeyMets");
    v5->fMets = v12;
    v5->fGradeType = objc_msgSend_decodeIntegerForKey_(a3, v13, @"kCMWorkoutPhysicalEffortCodingKeyGradeType");
    objc_msgSend_decodeDoubleForKey_(a3, v14, @"kCMWorkoutPhysicalEffortCodingKeyGrade");
    v5->fGrade = v15;
    objc_msgSend_decodeDoubleForKey_(a3, v16, @"kCMWorkoutPhysicalEffortCodingKeyUserMets");
    v5->fUserMets = v17;
    v5->fMetsSource = objc_msgSend_decodeIntegerForKey_(a3, v18, @"kCMWorkoutPhysicalEffortCodingKeyMetsSource");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  fRecordId = self->fRecordId;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fStartDate, a2, a3);
  v7 = v6;
  fMets = self->fMets;
  fGradeType = self->fGradeType;
  fGrade = self->fGrade;
  fUserMets = self->fUserMets;
  fMetsSource = self->fMetsSource;
  v13 = objc_opt_class();
  v15 = objc_msgSend_allocWithZone_(v13, v14, a3);
  v18[0] = fRecordId;
  v18[1] = v7;
  *&v18[2] = fMets;
  v19 = fGradeType;
  v20 = fGrade;
  v21 = fUserMets;
  v22 = fMetsSource;
  return objc_msgSend_initWithSample_(v15, v16, v18);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kCMWorkoutPhysicalEffortCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fStartDate, @"kCMWorkoutPhysicalEffortCodingKeyStartDate");
  objc_msgSend_encodeDouble_forKey_(a3, v6, @"kCMWorkoutPhysicalEffortCodingKeyMets", self->fMets);
  objc_msgSend_encodeInteger_forKey_(a3, v7, self->fGradeType, @"kCMWorkoutPhysicalEffortCodingKeyGradeType");
  objc_msgSend_encodeDouble_forKey_(a3, v8, @"kCMWorkoutPhysicalEffortCodingKeyGrade", self->fGrade);
  objc_msgSend_encodeDouble_forKey_(a3, v9, @"kCMWorkoutPhysicalEffortCodingKeyUserMets", self->fUserMets);
  fMetsSource = self->fMetsSource;

  objc_msgSend_encodeInteger_forKey_(a3, v10, fMetsSource, @"kCMWorkoutPhysicalEffortCodingKeyMetsSource");
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = objc_msgSend_recordId(self, v5, v6);
  if (v7 != objc_msgSend_recordId(a3, v8, v9))
  {
    goto LABEL_11;
  }

  if (!objc_msgSend_startDate(self, v10, v11) && !objc_msgSend_startDate(a3, v12, v13) || (started = objc_msgSend_startDate(self, v12, v13), v17 = objc_msgSend_startDate(a3, v15, v16), (isEqualToDate = objc_msgSend_isEqualToDate_(started, v18, v17)) != 0))
  {
    objc_msgSend_mets(self, v12, v13);
    v21 = v20;
    objc_msgSend_mets(a3, v22, v23);
    if (v21 == v26)
    {
      v27 = objc_msgSend_gradeType(self, v24, v25);
      if (v27 == objc_msgSend_gradeType(a3, v28, v29))
      {
        objc_msgSend_grade(self, v30, v31);
        v33 = v32;
        objc_msgSend_grade(a3, v34, v35);
        if (v33 == v38)
        {
          objc_msgSend_userMets(self, v36, v37);
          v40 = v39;
          objc_msgSend_userMets(a3, v41, v42);
          if (v40 == v45)
          {
            v46 = objc_msgSend_metsSource(self, v43, v44);
            LOBYTE(isEqualToDate) = v46 == objc_msgSend_metsSource(a3, v47, v48);
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

+ (HRRecoveryInputWR)inputFromPreparedStatement:(SEL)a3
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

- (CMWorkoutPhysicalEffort)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMWorkoutPhysicalEffort;
    v7 = [(CMWorkoutPhysicalEffort *)&v14 init];
    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v8, v10, v9, a3, 0);
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