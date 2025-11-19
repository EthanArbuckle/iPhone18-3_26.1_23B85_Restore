@interface NIAlgorithmConvergence
- (BOOL)isEqual:(id)a3;
- (NIAlgorithmConvergence)initWithCoder:(id)a3;
- (NIAlgorithmConvergence)initWithStatus:(int64_t)a3 andReasons:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIAlgorithmConvergence

- (NIAlgorithmConvergence)initWithStatus:(int64_t)a3 andReasons:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NIAlgorithmConvergence;
  v8 = [(NIAlgorithmConvergence *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = a3;
    objc_storeStrong(&v8->_reasons, a4);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_reasons)
  {
    v4 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{a3), "initWithArray:copyItems:", self->_reasons, 1}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [[NIAlgorithmConvergence alloc] initWithStatus:self->_status andReasons:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->_status forKey:@"status"];
  reasons = self->_reasons;
  if (reasons)
  {
    [v5 encodeObject:reasons forKey:@"reasons"];
  }
}

- (NIAlgorithmConvergence)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"status"];
  if (![v4 containsValueForKey:@"reasons"])
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"reasons"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_5:
    v10 = [[NIAlgorithmConvergence alloc] initWithStatus:v5 andReasons:v9];
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 status];
    status = self->_status;
    v8 = [v5 reasons];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = self->_reasons == 0;
    }

    v11 = [v5 reasons];
    v12 = [v11 isEqualToArray:self->_reasons];

    v10 = (v6 == status) & (v9 | v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  v4 = [v3 hash];
  v5 = [(NSArray *)self->_reasons hash];

  return v5 ^ v4;
}

@end