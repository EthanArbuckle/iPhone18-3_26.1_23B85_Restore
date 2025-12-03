@interface ASCViewMetrics
- (ASCViewMetrics)initWithCoder:(id)coder;
- (ASCViewMetrics)initWithInstructions:(id)instructions pageFields:(id)fields;
- (BOOL)isEqual:(id)equal;
- (id)dataForInvocationPoint:(id)point;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCViewMetrics

- (ASCViewMetrics)initWithInstructions:(id)instructions pageFields:(id)fields
{
  instructionsCopy = instructions;
  fieldsCopy = fields;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCViewMetrics;
  v8 = [(ASCViewMetrics *)&v14 init];
  if (v8)
  {
    v9 = [instructionsCopy copy];
    instructions = v8->_instructions;
    v8->_instructions = v9;

    v11 = [fieldsCopy copy];
    pageFields = v8->_pageFields;
    v8->_pageFields = v11;
  }

  return v8;
}

- (ASCViewMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"instructions"];
  if (v8)
  {
    v9 = ASCMetricsFieldsDecodeForKey(coderCopy, @"pageFields");
    if (v9)
    {
      self = [(ASCViewMetrics *)self initWithInstructions:v8 pageFields:v9];
      selfCopy = self;
    }

    else
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        [(ASCViewMetrics *)v19 initWithCoder:v20, v21, v22, v23, v24, v25, v26];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      [(ASCViewMetrics *)v11 initWithCoder:v12, v13, v14, v15, v16, v17, v18];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  instructions = [(ASCViewMetrics *)self instructions];
  [coderCopy encodeObject:instructions forKey:@"instructions"];

  pageFields = [(ASCViewMetrics *)self pageFields];
  [coderCopy encodeObject:pageFields forKey:@"pageFields"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  instructions = [(ASCViewMetrics *)self instructions];
  [(ASCHasher *)v3 combineObject:instructions];

  pageFields = [(ASCViewMetrics *)self pageFields];
  [(ASCHasher *)v3 combineObject:pageFields];

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
    instructions = [(ASCViewMetrics *)self instructions];
    instructions2 = [v7 instructions];
    v10 = instructions2;
    if (instructions && instructions2)
    {
      if ([instructions isEqual:instructions2])
      {
        goto LABEL_10;
      }
    }

    else if (instructions == instructions2)
    {
LABEL_10:
      pageFields = [(ASCViewMetrics *)self pageFields];
      pageFields2 = [v7 pageFields];
      v13 = pageFields2;
      if (pageFields && pageFields2)
      {
        v14 = [pageFields isEqual:pageFields2];
      }

      else
      {
        v14 = pageFields == pageFields2;
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
  instructions = [(ASCViewMetrics *)self instructions];
  [(ASCDescriber *)v3 addObject:instructions withName:@"instructions"];

  pageFields = [(ASCViewMetrics *)self pageFields];
  [(ASCDescriber *)v3 addSensitiveObject:pageFields withName:@"pageFields"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (id)dataForInvocationPoint:(id)point
{
  v23 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  instructions = [(ASCViewMetrics *)self instructions];
  v7 = [instructions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(instructions);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        invocationPoints = [v11 invocationPoints];
        v13 = [invocationPoints containsObject:pointCopy];

        if (v13)
        {
          data = [v11 data];
          [v5 addObject:data];
        }
      }

      v8 = [instructions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end