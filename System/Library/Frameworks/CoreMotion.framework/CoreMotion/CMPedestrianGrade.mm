@interface CMPedestrianGrade
+ (CLElevationGradeEntry)inputFromPreparedStatement:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CMPedestrianGrade)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMPedestrianGrade)initWithCoder:(id)a3;
- (CMPedestrianGrade)initWithRecordId:(unint64_t)a3 startDate:(id)a4 grade:(float)a5;
- (CMPedestrianGrade)initWithSample:(CLElevationGradeEntry *)a3;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMPedestrianGrade

- (CMPedestrianGrade)initWithRecordId:(unint64_t)a3 startDate:(id)a4 grade:(float)a5
{
  v11.receiver = self;
  v11.super_class = CMPedestrianGrade;
  v8 = [(CMPedestrianGrade *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->fRecordId = a3;
    v8->fStartDate = a4;
    v9->fGrade = a5;
  }

  return v9;
}

- (CMPedestrianGrade)initWithSample:(CLElevationGradeEntry *)a3
{
  v11.receiver = self;
  v11.super_class = CMPedestrianGrade;
  v4 = [(CMPedestrianGrade *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = a3->var0;
    v6 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, a3->var1);
    var2 = a3->var2;
    v5->fGrade = var2;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMPedestrianGrade;
  [(CMPedestrianGrade *)&v3 dealloc];
}

- (CMPedestrianGrade)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = CMPedestrianGrade;
  v5 = [(CMPedestrianGrade *)&v14 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMPedestrianGradeCodingKeyRecordId");
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMPedestrianGradeCodingKeyStartDate");
    v5->fStartDate = objc_msgSend_copy(v8, v9, v10);
    objc_msgSend_decodeDoubleForKey_(a3, v11, @"kCMPedestrianGradeCodingKeyGrade");
    *&v12 = v12;
    v5->fGrade = *&v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  fRecordId = self->fRecordId;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fStartDate, a2, a3);
  v7 = v6;
  fGrade = self->fGrade;
  v9 = objc_opt_class();
  v11 = objc_msgSend_allocWithZone_(v9, v10, a3);
  v14[0] = fRecordId;
  v14[1] = v7;
  *&v14[2] = fGrade;
  return objc_msgSend_initWithSample_(v11, v12, v14);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kCMPedestrianGradeCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fStartDate, @"kCMPedestrianGradeCodingKeyStartDate");
  *&v7 = self->fGrade;

  objc_msgSend_encodeFloat_forKey_(a3, v6, @"kCMPedestrianGradeCodingKeyGrade", v7);
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = objc_msgSend_recordId(self, v5, v6), v7 == objc_msgSend_recordId(a3, v8, v9)))
  {
    if (!objc_msgSend_startDate(self, v10, v11) && !objc_msgSend_startDate(a3, v12, v13) || (started = objc_msgSend_startDate(self, v12, v13), v17 = objc_msgSend_startDate(a3, v15, v16), (isEqualToDate = objc_msgSend_isEqualToDate_(started, v18, v17)) != 0))
    {
      objc_msgSend_grade(self, v12, v13);
      v21 = v20;
      objc_msgSend_grade(a3, v22, v23);
      LOBYTE(isEqualToDate) = v21 == v24;
    }
  }

  else
  {
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
  objc_msgSend_grade(self, v12, v13);
  return objc_msgSend_stringWithFormat_(v3, v15, @"%@, <recordId, %lu, startDate, %@, grade, %f>", v5, v8, started, v14);
}

+ (CLElevationGradeEntry)inputFromPreparedStatement:(SEL)a3
{
  retstr->var0 = sqlite3_column_int(a4, 0);
  retstr->var1 = sqlite3_column_double(a4, 1);
  retstr->var2 = sqlite3_column_double(a4, 2);
  return result;
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMPedestrianGrade)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMPedestrianGrade;
    v7 = [(CMPedestrianGrade *)&v14 init];
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
  v19[2] = *MEMORY[0x1E69E9840];
  v18[0] = @"startTime";
  v4 = MEMORY[0x1E696AD98];
  started = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v6, v7);
  v18[1] = @"grade";
  v19[0] = objc_msgSend_numberWithDouble_(v4, v8, v9);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_grade(self, v11, v12);
  v19[1] = objc_msgSend_numberWithFloat_(v10, v13, v14);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v19, v18, 2);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

@end