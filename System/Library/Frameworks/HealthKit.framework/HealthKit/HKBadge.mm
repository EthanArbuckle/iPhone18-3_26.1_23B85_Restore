@interface HKBadge
+ (HKBadge)errorBadge;
+ (HKBadge)indicatorBadge;
+ (id)badgeFromKeyValueRepresentation:(id)representation;
+ (id)numberBadgeWithCount:(int64_t)count;
- (BOOL)isEqual:(id)equal;
- (BOOL)isZeroBadge;
- (HKBadge)initWithCoder:(id)coder;
- (NSNumber)keyValueRepresentation;
- (NSObject)value;
- (NSString)stringValue;
- (id)badgeByAggregatingWithBadge:(id)badge;
- (id)badgeByIncrementingByCount:(int64_t)count;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKBadge

- (id)badgeByAggregatingWithBadge:(id)badge
{
  badgeCopy = badge;
  selfCopy = self;
  v6 = badgeCopy;
  if (-[HKBadge isErrorBadge](selfCopy, "isErrorBadge") || [v6 isErrorBadge])
  {
    v7 = +[HKBadge errorBadge];
    goto LABEL_4;
  }

  if ([(HKBadge *)selfCopy isZeroBadge])
  {
    goto LABEL_8;
  }

  if ([v6 isZeroBadge])
  {
    goto LABEL_10;
  }

  if ([(HKBadge *)selfCopy isIndicatorBadge])
  {
LABEL_8:
    v7 = v6;
    goto LABEL_4;
  }

  if ([v6 isIndicatorBadge])
  {
LABEL_10:
    v7 = selfCopy;
  }

  else
  {
    if (!-[HKBadge isNumberBadge](selfCopy, "isNumberBadge") || ([v6 isNumberBadge] & 1) == 0)
    {
      [HKBadge badgeByAggregatingWithBadge:];
    }

    v7 = [HKBadge numberBadgeWithCount:v6[1] + selfCopy->_count];
  }

LABEL_4:
  v8 = v7;

  return v8;
}

- (id)badgeByIncrementingByCount:(int64_t)count
{
  if (count < 0)
  {
    [(HKBadge *)a2 badgeByIncrementingByCount:?];
  }

  selfCopy = [(HKBadge *)self type];
  if (selfCopy == 2)
  {
LABEL_6:
    selfCopy = self;
    goto LABEL_8;
  }

  if (selfCopy != 1)
  {
    if (selfCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  selfCopy = [HKBadge numberBadgeWithCount:self->_count + count];
LABEL_8:

  return selfCopy;
}

- (id)description
{
  type = [(HKBadge *)self type];
  if (type == 1)
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

  else if (type == 2)
  {
    v4 = @"error";
  }

  else
  {
    v4 = @"indicator";
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if ([(HKBadge *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    type = [(HKBadge *)v5 type];
    if (type == [(HKBadge *)self type])
    {
      value = [(HKBadge *)v5 value];
      value2 = [(HKBadge *)self value];
      v9 = value == value2;
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
  type = [(HKBadge *)self type];
  value = [(HKBadge *)self value];
  v5 = [value hash];

  return v5 ^ type;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HKBadge type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:self->_count forKey:@"count"];
}

- (HKBadge)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeIntegerForKey:@"count"];

  selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isZeroBadge
{
  isNumberBadge = [(HKBadge *)self isNumberBadge];
  if (isNumberBadge)
  {
    LOBYTE(isNumberBadge) = self->_count == 0;
  }

  return isNumberBadge;
}

- (NSObject)value
{
  type = [(HKBadge *)self type];
  if (type == 1)
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

  else if (type == 2)
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
  value = [(HKBadge *)self value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = value;
LABEL_6:
      v5 = stringValue;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [value stringValue];
      goto LABEL_6;
    }

    _HKInitializeLogging();
    v6 = HKLogNotifications;
    if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = value;
      v11 = 2114;
      selfCopy = self;
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
  type = [(HKBadge *)self type];
  if (type == 1)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_count];
  }

  else if (type)
  {
    v4 = &unk_1F0683360;
  }

  else
  {
    v4 = &unk_1F0683378;
  }

  return v4;
}

+ (id)badgeFromKeyValueRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = +[HKBadge zeroBadge];
  if (representationCopy)
  {
    integerValue = [representationCopy integerValue];
    if (integerValue > -3)
    {
      if (integerValue == -1)
      {
        v7 = +[HKBadge indicatorBadge];
      }

      else
      {
        if (integerValue == -2)
        {
          +[HKBadge errorBadge];
        }

        else
        {
          [HKBadge numberBadgeWithCount:integerValue];
        }
        v7 = ;
      }

      goto LABEL_6;
    }

    _HKInitializeLogging();
    v6 = HKLogNotifications;
    if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_ERROR))
    {
      [(HKBadge(KeyValueEntitySupport) *)integerValue badgeFromKeyValueRepresentation:v6];
    }
  }

  v7 = v4;
LABEL_6:
  v8 = v7;

  return v8;
}

+ (HKBadge)indicatorBadge
{
  v2 = [self alloc];
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
  v2 = [self alloc];
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

+ (id)numberBadgeWithCount:(int64_t)count
{
  if (count < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKBadge.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"count >= 0"}];
  }

  v5 = [self alloc];
  if (v5)
  {
    v9.receiver = v5;
    v9.super_class = HKBadge;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    if (v5)
    {
      v5[1] = count;
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