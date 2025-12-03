@interface SRSleepSession
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SRSleepSession)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRSleepSession)initWithCoder:(id)coder;
- (SRSleepSession)initWithStartDate:(id)date identifier:(id)identifier duration:(double)duration;
- (id)binarySampleRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRSleepSession

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogSleepSession = os_log_create("com.apple.SensorKit", "SRLogSleepSession");
  }
}

- (SRSleepSession)initWithStartDate:(id)date identifier:(id)identifier duration:(double)duration
{
  v10.receiver = self;
  v10.super_class = SRSleepSession;
  v8 = [(SRSleepSession *)&v10 init];
  if (v8)
  {
    v8->_startDate = date;
    v8->_identifier = [identifier copy];
    v8->_duration = duration;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRSleepSession;
  [(SRSleepSession *)&v3 dealloc];
}

- (SRSleepSession)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v16 = *MEMORY[0x1E69E9840];
  if (![representation length])
  {
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = SRSleepSession;
  result = [(SRSleepSession *)&v13 init];
  if (result)
  {
    self = result;
    v12 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v12];
    if (v8)
    {
      v9 = v8;

      result = v9;
      goto LABEL_8;
    }

    v10 = SRLogSleepSession;
    if (os_log_type_enabled(SRLogSleepSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v12;
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive data because %{public}@", buf, 0xCu);
    }

LABEL_7:

    result = 0;
  }

LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)binarySampleRepresentation
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  result = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v6)
  {
    v4 = SRLogSleepSession;
    if (os_log_type_enabled(SRLogSleepSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Failed to archive the object: %@", buf, 0xCu);
    }

    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (SRSleepSession)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [coder decodeDoubleForKey:@"duration"];
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = SRLogSleepSession;
    if (os_log_type_enabled(SRLogSleepSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to encode the object. Session identifier: %@, start date: %@", buf, 0x16u);
    }

    v11 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v13 = v8;

    v14 = [SRSleepSession alloc];
    v15 = *MEMORY[0x1E69E9840];

    return [(SRSleepSession *)v14 initWithStartDate:v6 identifier:v7 duration:v13];
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:-[SRSleepSession startDate](self forKey:{"startDate"), @"startDate"}];
  [coder encodeObject:-[SRSleepSession identifier](self forKey:{"identifier"), @"identifier"}];
  [(SRSleepSession *)self duration];

  [coder encodeDouble:@"duration" forKey:?];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateStyle:1];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 stringFromDate:{-[SRSleepSession startDate](self, "startDate")}];
  identifier = [(SRSleepSession *)self identifier];
  [(SRSleepSession *)self duration];
  v10 = [v4 stringWithFormat:@"%@ (%p) {start date: %@, identifier: %@, duration: %f}", v6, self, v7, identifier, v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSDate isEqualToDate:](-[SRSleepSession startDate](self, "startDate"), "isEqualToDate:", [equal startDate]);
      if (v5)
      {
        v5 = -[NSString isEqual:](-[SRSleepSession identifier](self, "identifier"), "isEqual:", [equal identifier]);
        if (v5)
        {
          [(SRSleepSession *)self duration];
          v7 = v6;
          [equal duration];
          LOBYTE(v5) = vabdd_f64(v7, v8) < 0.00000011920929;
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_startDate hash];
  v4 = [(NSString *)self->_identifier hash]^ v3;
  return v4 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_duration), "hash"}];
}

@end