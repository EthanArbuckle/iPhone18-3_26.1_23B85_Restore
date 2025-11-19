@interface HKSemanticDate
+ (HKSemanticDate)semanticDateWithKeyPath:(id)a3 date:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HKSemanticDate)init;
- (HKSemanticDate)initWithCoder:(id)a3;
- (HKSemanticDate)initWithKeyPath:(id)a3 date:(id)a4;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSemanticDate

+ (HKSemanticDate)semanticDateWithKeyPath:(id)a3 date:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithKeyPath:v6 date:v5];

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

- (HKSemanticDate)initWithKeyPath:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
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
    v11 = [v7 copy];
    keyPath = v10->_keyPath;
    v10->_keyPath = v11;

    v13 = [v9 copy];
    date = v10->_date;
    v10->_date = v13;
  }

  return v10;
}

- (HKSemanticDate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKSemanticDate;
  v5 = [(HKSemanticDate *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KeyPath"];
    keyPath = v5->_keyPath;
    v5->_keyPath = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
    date = v5->_date;
    v5->_date = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKSemanticDate *)self keyPath];
  [v4 encodeObject:v5 forKey:@"KeyPath"];

  v6 = [(HKSemanticDate *)self date];
  [v4 encodeObject:v6 forKey:@"Date"];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
    v10 = [(HKSemanticDate *)self date];
    v11 = [v10 compare:v9];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HKSemanticDate *)self keyPath];
  v4 = [v3 hash];
  v5 = [(HKSemanticDate *)self date];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKSemanticDate *)self keyPath];
      v7 = [(HKSemanticDate *)v5 keyPath];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        v9 = [(HKSemanticDate *)self date];
        v10 = [(HKSemanticDate *)v5 date];
        v11 = [v9 isEqualToDate:v10];
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