@interface ASCViewMetricsInstruction
- (ASCViewMetricsInstruction)initWithCoder:(id)a3;
- (ASCViewMetricsInstruction)initWithData:(id)a3 invocationPoints:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCViewMetricsInstruction

- (ASCViewMetricsInstruction)initWithData:(id)a3 invocationPoints:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCViewMetricsInstruction;
  v8 = [(ASCViewMetricsInstruction *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = [v7 copy];
    invocationPoints = v8->_invocationPoints;
    v8->_invocationPoints = v11;
  }

  return v8;
}

- (ASCViewMetricsInstruction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"invocationPoints"];
    if (v9)
    {
      self = [(ASCViewMetricsInstruction *)self initWithData:v5 invocationPoints:v9];
      v10 = self;
    }

    else
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        [(ASCViewMetricsInstruction *)v19 initWithCoder:v20, v21, v22, v23, v24, v25, v26];
      }

      v10 = 0;
    }
  }

  else
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      [(ASCViewMetricsInstruction *)v11 initWithCoder:v12, v13, v14, v15, v16, v17, v18];
    }

    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCViewMetricsInstruction *)self data];
  [v4 encodeObject:v5 forKey:@"data"];

  v6 = [(ASCViewMetricsInstruction *)self invocationPoints];
  [v4 encodeObject:v6 forKey:@"invocationPoints"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCViewMetricsInstruction *)self data];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCViewMetricsInstruction *)self invocationPoints];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCHasher *)v3 finalizeHash];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(ASCViewMetricsInstruction *)self data];
    v9 = [v7 data];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
        goto LABEL_10;
      }
    }

    else if (v8 == v9)
    {
LABEL_10:
      v11 = [(ASCViewMetricsInstruction *)self invocationPoints];
      v12 = [v7 invocationPoints];
      v13 = v12;
      if (v11 && v12)
      {
        v14 = [v11 isEqual:v12];
      }

      else
      {
        v14 = v11 == v12;
      }

      goto LABEL_18;
    }

    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCViewMetricsInstruction *)self data];
  [(ASCDescriber *)v3 addObject:v4 withName:@"data"];

  v5 = [(ASCViewMetricsInstruction *)self invocationPoints];
  [(ASCDescriber *)v3 addObject:v5 withName:@"invocationPoints"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

@end