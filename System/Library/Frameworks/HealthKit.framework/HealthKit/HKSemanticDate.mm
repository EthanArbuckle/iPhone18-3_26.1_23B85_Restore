@interface HKSemanticDate
+ (HKSemanticDate)semanticDateWithKeyPath:(id)path date:(id)date;
- (BOOL)isEqual:(id)equal;
- (HKSemanticDate)init;
- (HKSemanticDate)initWithCoder:(id)coder;
- (HKSemanticDate)initWithKeyPath:(id)path date:(id)date;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSemanticDate

+ (HKSemanticDate)semanticDateWithKeyPath:(id)path date:(id)date
{
  dateCopy = date;
  pathCopy = path;
  v7 = [objc_alloc(objc_opt_class()) initWithKeyPath:pathCopy date:dateCopy];

  return v7;
}

- (HKSemanticDate)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSemanticDate)initWithKeyPath:(id)path date:(id)date
{
  pathCopy = path;
  dateCopy = date;
  v9 = dateCopy;
  if (pathCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKSemanticDate initWithKeyPath:a2 date:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [HKSemanticDate initWithKeyPath:a2 date:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = HKSemanticDate;
  v10 = [(HKSemanticDate *)&v16 init];
  if (v10)
  {
    v11 = [pathCopy copy];
    keyPath = v10->_keyPath;
    v10->_keyPath = v11;

    v13 = [v9 copy];
    date = v10->_date;
    v10->_date = v13;
  }

  return v10;
}

- (HKSemanticDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKSemanticDate;
  v5 = [(HKSemanticDate *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KeyPath"];
    keyPath = v5->_keyPath;
    v5->_keyPath = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
    date = v5->_date;
    v5->_date = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keyPath = [(HKSemanticDate *)self keyPath];
  [coderCopy encodeObject:keyPath forKey:@"KeyPath"];

  date = [(HKSemanticDate *)self date];
  [coderCopy encodeObject:date forKey:@"Date"];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = compareCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && ([v6 date], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    date = [(HKSemanticDate *)self date];
    v11 = [date compare:v9];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (unint64_t)hash
{
  keyPath = [(HKSemanticDate *)self keyPath];
  v4 = [keyPath hash];
  date = [(HKSemanticDate *)self date];
  v6 = [date hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      keyPath = [(HKSemanticDate *)self keyPath];
      keyPath2 = [(HKSemanticDate *)v5 keyPath];
      v8 = [keyPath isEqualToString:keyPath2];

      if (v8)
      {
        date = [(HKSemanticDate *)self date];
        date2 = [(HKSemanticDate *)v5 date];
        v11 = [date isEqualToDate:date2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)initWithKeyPath:(uint64_t)a1 date:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSemanticDate.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
}

- (void)initWithKeyPath:(uint64_t)a1 date:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSemanticDate.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"date"}];
}

@end