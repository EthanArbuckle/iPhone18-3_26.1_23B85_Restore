@interface CMMotionTimeRange
+ ($F24F406B2B787EFB06265DBA3D28CBD5)CLMotionTimeRangeFromCMMotionTimeRange:(id)range;
+ (id)CMMotionTimeRangeFromCLMotionTimeRange:(id)range;
- (CMMotionTimeRange)initWithCoder:(id)coder;
- (CMMotionTimeRange)initWithStartDate:(double)date endDate:(double)endDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMMotionTimeRange

- (CMMotionTimeRange)initWithStartDate:(double)date endDate:(double)endDate
{
  v14.receiver = self;
  v14.super_class = CMMotionTimeRange;
  v6 = [(CMMotionTimeRange *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DF00]);
    v6->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v7, v8, v9, date);
    v10 = objc_alloc(MEMORY[0x1E695DF00]);
    v6->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v10, v11, v12, endDate);
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMMotionTimeRange;
  [(CMLogItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v12 = objc_msgSend_init(v7, v8, v9);
  if (v12)
  {
    v12[2] = objc_msgSend_copy(self->fStartDate, v10, v11);
    v12[3] = objc_msgSend_copy(self->fEndDate, v13, v14);
  }

  return v12;
}

- (CMMotionTimeRange)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CMMotionTimeRange;
  v4 = [(CMMotionTimeRange *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCMMotionTimeRangeCodingKeyStartDate");
    v7 = objc_opt_class();
    v4->fEndDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"kCMMotionTimeRangeCodingKeyEndDate");
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->fStartDate, @"kCMMotionTimeRangeCodingKeyStartDate");
  fEndDate = self->fEndDate;

  objc_msgSend_encodeObject_forKey_(coder, v5, fEndDate, @"kCMMotionTimeRangeCodingKeyEndDate");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_endDate(self, v9, v10);
  return objc_msgSend_stringWithFormat_(v3, v12, @"%@,<startDate %@, endDate %@>", v5, started, v11);
}

+ (id)CMMotionTimeRangeFromCLMotionTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v5 = [CMMotionTimeRange alloc];
  started = objc_msgSend_initWithStartDate_endDate_(v5, v6, v7, var0, var1);

  return started;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)CLMotionTimeRangeFromCMMotionTimeRange:(id)range
{
  if (!range)
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CMMotionTimeRange.mm", 101, @"Invalid parameter not satisfying: %@", @"timeRange");
  }

  started = objc_msgSend_startDate(range, a2, range);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v5, v6);
  v8 = v7;
  v11 = objc_msgSend_endDate(range, v9, v10);
  objc_msgSend_timeIntervalSinceReferenceDate(v11, v12, v13);
  v15 = v14;
  v16 = v8;
  result.var1 = v15;
  result.var0 = v16;
  return result;
}

@end