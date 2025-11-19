@interface ASCViewMetrics
- (ASCViewMetrics)initWithCoder:(id)a3;
- (ASCViewMetrics)initWithInstructions:(id)a3 pageFields:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)dataForInvocationPoint:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCViewMetrics

- (ASCViewMetrics)initWithInstructions:(id)a3 pageFields:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCViewMetrics;
  v8 = [(ASCViewMetrics *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    instructions = v8->_instructions;
    v8->_instructions = v9;

    v11 = [v7 copy];
    pageFields = v8->_pageFields;
    v8->_pageFields = v11;
  }

  return v8;
}

- (ASCViewMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"instructions"];
  if (v8)
  {
    v9 = ASCMetricsFieldsDecodeForKey(v4, @"pageFields");
    if (v9)
    {
      self = [(ASCViewMetrics *)self initWithInstructions:v8 pageFields:v9];
      v10 = self;
    }

    else
    {
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        [(ASCViewMetrics *)v19 initWithCoder:v20, v21, v22, v23, v24, v25, v26];
      }

      v10 = 0;
    }
  }

  else
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      [(ASCViewMetrics *)v11 initWithCoder:v12, v13, v14, v15, v16, v17, v18];
    }

    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCViewMetrics *)self instructions];
  [v4 encodeObject:v5 forKey:@"instructions"];

  v6 = [(ASCViewMetrics *)self pageFields];
  [v4 encodeObject:v6 forKey:@"pageFields"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCViewMetrics *)self instructions];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCViewMetrics *)self pageFields];
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
    v8 = [(ASCViewMetrics *)self instructions];
    v9 = [v7 instructions];
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
      v11 = [(ASCViewMetrics *)self pageFields];
      v12 = [v7 pageFields];
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
  v4 = [(ASCViewMetrics *)self instructions];
  [(ASCDescriber *)v3 addObject:v4 withName:@"instructions"];

  v5 = [(ASCViewMetrics *)self pageFields];
  [(ASCDescriber *)v3 addSensitiveObject:v5 withName:@"pageFields"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

- (id)dataForInvocationPoint:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(ASCViewMetrics *)self instructions];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 invocationPoints];
        v13 = [v12 containsObject:v4];

        if (v13)
        {
          v14 = [v11 data];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

@end