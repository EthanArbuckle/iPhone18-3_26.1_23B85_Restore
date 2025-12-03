@interface ASCViewMetricsInstruction
- (ASCViewMetricsInstruction)initWithCoder:(id)coder;
- (ASCViewMetricsInstruction)initWithData:(id)data invocationPoints:(id)points;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCViewMetricsInstruction

- (ASCViewMetricsInstruction)initWithData:(id)data invocationPoints:(id)points
{
  dataCopy = data;
  pointsCopy = points;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCViewMetricsInstruction;
  v8 = [(ASCViewMetricsInstruction *)&v14 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = [pointsCopy copy];
    invocationPoints = v8->_invocationPoints;
    v8->_invocationPoints = v11;
  }

  return v8;
}

- (ASCViewMetricsInstruction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"invocationPoints"];
    if (v9)
    {
      self = [(ASCViewMetricsInstruction *)self initWithData:v5 invocationPoints:v9];
      selfCopy = self;
    }

    else
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        [(ASCViewMetricsInstruction *)v19 initWithCoder:v20, v21, v22, v23, v24, v25, v26];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      [(ASCViewMetricsInstruction *)v11 initWithCoder:v12, v13, v14, v15, v16, v17, v18];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(ASCViewMetricsInstruction *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  invocationPoints = [(ASCViewMetricsInstruction *)self invocationPoints];
  [coderCopy encodeObject:invocationPoints forKey:@"invocationPoints"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  data = [(ASCViewMetricsInstruction *)self data];
  [(ASCHasher *)v3 combineObject:data];

  invocationPoints = [(ASCViewMetricsInstruction *)self invocationPoints];
  [(ASCHasher *)v3 combineObject:invocationPoints];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
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
    data = [(ASCViewMetricsInstruction *)self data];
    data2 = [v7 data];
    v10 = data2;
    if (data && data2)
    {
      if ([data isEqual:data2])
      {
        goto LABEL_10;
      }
    }

    else if (data == data2)
    {
LABEL_10:
      invocationPoints = [(ASCViewMetricsInstruction *)self invocationPoints];
      invocationPoints2 = [v7 invocationPoints];
      v13 = invocationPoints2;
      if (invocationPoints && invocationPoints2)
      {
        v14 = [invocationPoints isEqual:invocationPoints2];
      }

      else
      {
        v14 = invocationPoints == invocationPoints2;
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
  data = [(ASCViewMetricsInstruction *)self data];
  [(ASCDescriber *)v3 addObject:data withName:@"data"];

  invocationPoints = [(ASCViewMetricsInstruction *)self invocationPoints];
  [(ASCDescriber *)v3 addObject:invocationPoints withName:@"invocationPoints"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end