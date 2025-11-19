@interface HKBadge
+ (HKBadge)errorBadge;
+ (HKBadge)indicatorBadge;
+ (id)badgeFromKeyValueRepresentation:(id)a3;
+ (id)numberBadgeWithCount:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isZeroBadge;
- (HKBadge)initWithCoder:(id)a3;
- (NSNumber)keyValueRepresentation;
- (NSObject)value;
- (NSString)stringValue;
- (id)badgeByAggregatingWithBadge:(id)a3;
- (id)badgeByIncrementingByCount:(int64_t)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKBadge

- (id)badgeByAggregatingWithBadge:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v4;
  if (-[HKBadge isErrorBadge](v5, "isErrorBadge") || [v6 isErrorBadge])
  {
    v7 = +[HKBadge errorBadge];
    goto LABEL_4;
  }

  if ([(HKBadge *)v5 isZeroBadge])
  {
    goto LABEL_8;
  }

  if ([v6 isZeroBadge])
  {
    goto LABEL_10;
  }

  if ([(HKBadge *)v5 isIndicatorBadge])
  {
LABEL_8:
    v7 = v6;
    goto LABEL_4;
  }

  if ([v6 isIndicatorBadge])
  {
LABEL_10:
    v7 = v5;
  }

  else
  {
    if (!-[HKBadge isNumberBadge](v5, "isNumberBadge") || ([v6 isNumberBadge] & 1) == 0)
    {
      [HKBadge badgeByAggregatingWithBadge:];
    }

    v7 = [HKBadge numberBadgeWithCount:v6[1] + v5->_count];
  }

LABEL_4:
  v8 = v7;

  return v8;
}

- (id)badgeByIncrementingByCount:(int64_t)a3
{
  if (a3 < 0)
  {
    [(HKBadge *)a2 badgeByIncrementingByCount:?];
  }

  v5 = [(HKBadge *)self type];
  if (v5 == 2)
  {
LABEL_6:
    v5 = self;
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v5 = [HKBadge numberBadgeWithCount:self->_count + a3];
LABEL_8:

  return v5;
}

- (id)description
{
  v3 = [(HKBadge *)self type];
  if (v3 == 1)
  {
    if ([(HKBadge *)self isZeroBadge])
    {
      v4 = @"none";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zd", self->_count];
    }
  }

  else if (v3 == 2)
  {
    v4 = @"error";
  }

  else
  {
    v4 = @"indicator";
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else if ([(HKBadge *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(HKBadge *)v5 type];
    if (v6 == [(HKBadge *)self type])
    {
      v7 = [(HKBadge *)v5 value];
      v8 = [(HKBadge *)self value];
      v9 = v7 == v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HKBadge *)self type];
  v4 = [(HKBadge *)self value];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HKBadge type](self forKey:{"type"), @"type"}];
  [v4 encodeInteger:self->_count forKey:@"count"];
}

- (HKBadge)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeIntegerForKey:@"count"];

  v7 = 0;
  if (v5 <= 2 && (v6 & 0x8000000000000000) == 0)
  {
    if (self)
    {
      v10.receiver = self;
      v10.super_class = HKBadge;
      v8 = [(HKBadge *)&v10 init];
      if (v8)
      {
        v8->_count = v6;
        v8->_type = v5;
      }
    }

    else
    {
      v8 = 0;
    }

    self = v8;
    v7 = self;
  }

  return v7;
}

- (BOOL)isZeroBadge
{
  v3 = [(HKBadge *)self isNumberBadge];
  if (v3)
  {
    LOBYTE(v3) = self->_count == 0;
  }

  return v3;
}

- (NSObject)value
{
  v3 = [(HKBadge *)self type];
  if (v3 == 1)
  {
    if ([(HKBadge *)self isZeroBadge])
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_count];
    }
  }

  else if (v3 == 2)
  {
    v4 = @"!";
  }

  else
  {
    v4 = &stru_1F05FF230;
  }

  return v4;
}

- (NSString)stringValue
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(HKBadge *)self value];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
LABEL_6:
      v5 = v4;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 stringValue];
      goto LABEL_6;
    }

    _HKInitializeLogging();
    v6 = HKLogNotifications;
    if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = v3;
      v11 = 2114;
      v12 = self;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "Invalid badge value %{public}@ for %{public}@.", &v9, 0x16u);
    }
  }

  v5 = 0;
LABEL_10:

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSNumber)keyValueRepresentation
{
  v3 = [(HKBadge *)self type];
  if (v3 == 1)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_count];
  }

  else if (v3)
  {
    v4 = &unk_1F0683360;
  }

  else
  {
    v4 = &unk_1F0683378;
  }

  return v4;
}

+ (id)badgeFromKeyValueRepresentation:(id)a3
{
  v3 = a3;
  v4 = +[HKBadge zeroBadge];
  if (v3)
  {
    v5 = [v3 integerValue];
    if (v5 > -3)
    {
      if (v5 == -1)
      {
        v7 = +[HKBadge indicatorBadge];
      }

      else
      {
        if (v5 == -2)
        {
          +[HKBadge errorBadge];
        }

        else
        {
          [HKBadge numberBadgeWithCount:v5];
        }
        v7 = ;
      }

      goto LABEL_6;
    }

    _HKInitializeLogging();
    v6 = HKLogNotifications;
    if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_ERROR))
    {
      [(HKBadge(KeyValueEntitySupport) *)v5 badgeFromKeyValueRepresentation:v6];
    }
  }

  v7 = v4;
LABEL_6:
  v8 = v7;

  return v8;
}

+ (HKBadge)indicatorBadge
{
  v2 = [a1 alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = HKBadge;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2[1] = 0;
      v2[2] = 0;
    }
  }

  return v2;
}

+ (HKBadge)errorBadge
{
  v2 = [a1 alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = HKBadge;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      *(v2 + 8) = xmmword_191D2F600;
    }
  }

  return v2;
}

+ (id)numberBadgeWithCount:(int64_t)a3
{
  if (a3 < 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"HKBadge.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"count >= 0"}];
  }

  v5 = [a1 alloc];
  if (v5)
  {
    v9.receiver = v5;
    v9.super_class = HKBadge;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    if (v5)
    {
      v5[1] = a3;
      v5[2] = 1;
    }
  }

  return v5;
}

- (void)badgeByAggregatingWithBadge:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"HKBadge * _Nonnull _aggregateBadges(HKBadge * _Nonnull __strong, HKBadge * _Nonnull __strong)"}];
  [v1 handleFailureInFunction:v0 file:@"HKBadge.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"badge1.isNumberBadge && badge2.isNumberBadge"}];
}

- (void)badgeByIncrementingByCount:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKBadge.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"count >= 0"}];
}

@end