@interface ASCMetricsData
- (ASCMetricsData)initWithCoder:(id)a3;
- (ASCMetricsData)initWithTopic:(id)a3 shouldFlush:(BOOL)a4 fields:(id)a5 includingFields:(id)a6 excludingFields:(id)a7;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)metricsDataByMergingFields:(id)a3 uniquingFieldsWithBlock:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCMetricsData

- (ASCMetricsData)initWithTopic:(id)a3 shouldFlush:(BOOL)a4 fields:(id)a5 includingFields:(id)a6 excludingFields:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  +[ASCEligibility assertCurrentProcessEligibility];
  v26.receiver = self;
  v26.super_class = ASCMetricsData;
  v16 = [(ASCMetricsData *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    topic = v16->_topic;
    v16->_topic = v17;

    v16->_shouldFlush = a4;
    v19 = [v13 copy];
    fields = v16->_fields;
    v16->_fields = v19;

    v21 = [v14 copy];
    includingFields = v16->_includingFields;
    v16->_includingFields = v21;

    v23 = [v15 copy];
    excludingFields = v16->_excludingFields;
    v16->_excludingFields = v23;
  }

  return v16;
}

- (ASCMetricsData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  v6 = [v4 decodeBoolForKey:@"shouldFlush"];
  v7 = ASCMetricsFieldsDecodeForKey(v4, @"fields");
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = objc_opt_class();
    v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"includingFields"];
    if (v11)
    {
      v12 = [v4 decodeObjectOfClasses:v10 forKey:@"excludingFields"];
      if (v12)
      {
        self = [(ASCMetricsData *)self initWithTopic:v5 shouldFlush:v6 fields:v7 includingFields:v11 excludingFields:v12];
        v13 = self;
      }

      else
      {
        v30 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v30)
        {
          [(ASCMetricsData *)v30 initWithCoder:v31, v32, v33, v34, v35, v36, v37];
        }

        v13 = 0;
      }
    }

    else
    {
      v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v22)
      {
        [(ASCMetricsData *)v22 initWithCoder:v23, v24, v25, v26, v27, v28, v29];
      }

      v13 = 0;
    }
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(ASCMetricsData *)v14 initWithCoder:v15, v16, v17, v18, v19, v20, v21];
    }

    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCMetricsData *)self topic];
  [v4 encodeObject:v5 forKey:@"topic"];

  [v4 encodeBool:-[ASCMetricsData shouldFlush](self forKey:{"shouldFlush"), @"shouldFlush"}];
  v6 = [(ASCMetricsData *)self fields];
  [v4 encodeObject:v6 forKey:@"fields"];

  v7 = [(ASCMetricsData *)self includingFields];
  [v4 encodeObject:v7 forKey:@"includingFields"];

  v8 = [(ASCMetricsData *)self excludingFields];
  [v4 encodeObject:v8 forKey:@"excludingFields"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCMetricsData *)self topic];
  [(ASCHasher *)v3 combineObject:v4];

  [(ASCHasher *)v3 combineBool:[(ASCMetricsData *)self shouldFlush]];
  v5 = [(ASCMetricsData *)self fields];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCMetricsData *)self includingFields];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCMetricsData *)self excludingFields];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCHasher *)v3 finalizeHash];
  return v8;
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
    v8 = [(ASCMetricsData *)self topic];
    v9 = [v7 topic];
    v10 = v9;
    if (v8 && v9)
    {
      if (![v8 isEqual:v9])
      {
        goto LABEL_14;
      }
    }

    else if (v8 != v9)
    {
LABEL_14:
      v11 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v12 = [(ASCMetricsData *)self shouldFlush];
    if (v12 != [v7 shouldFlush])
    {
      goto LABEL_14;
    }

    v13 = [(ASCMetricsData *)self fields];
    v14 = [v7 fields];
    v15 = v14;
    if (v13 && v14)
    {
      if ([v13 isEqual:v14])
      {
LABEL_18:
        v16 = [(ASCMetricsData *)self includingFields];
        v17 = [v7 includingFields];
        v18 = v17;
        if (v16 && v17)
        {
          if ([v16 isEqual:v17])
          {
            goto LABEL_21;
          }
        }

        else if (v16 == v17)
        {
LABEL_21:
          v19 = [(ASCMetricsData *)self excludingFields];
          v20 = [v7 excludingFields];
          v21 = v20;
          v23 = v19;
          if (v19 && v20)
          {
            v11 = [v19 isEqual:v20];
          }

          else
          {
            v11 = v19 == v20;
          }

          goto LABEL_30;
        }

        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    else if (v13 == v14)
    {
      goto LABEL_18;
    }

    v11 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v11 = 0;
LABEL_33:

  return v11;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCMetricsData *)self topic];
  [(ASCDescriber *)v3 addObject:v4 withName:@"topic"];

  [(ASCDescriber *)v3 addBool:[(ASCMetricsData *)self shouldFlush] withName:@"shouldFlush"];
  v5 = [(ASCMetricsData *)self fields];
  [(ASCDescriber *)v3 addSensitiveObject:v5 withName:@"fields"];

  v6 = [(ASCMetricsData *)self includingFields];
  [(ASCDescriber *)v3 addSensitiveObject:v6 withName:@"includingFields"];

  v7 = [(ASCMetricsData *)self excludingFields];
  [(ASCDescriber *)v3 addSensitiveObject:v7 withName:@"excludingFields"];

  v8 = [(ASCDescriber *)v3 finalizeDescription];

  return v8;
}

- (id)metricsDataByMergingFields:(id)a3 uniquingFieldsWithBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASCMetricsData *)self fields];
  v9 = [v8 asc_dictionaryByMergingDictionary:v7 uniquingKeysWithBlock:v6];

  v10 = [ASCMetricsData alloc];
  v11 = [(ASCMetricsData *)self topic];
  v12 = [(ASCMetricsData *)self shouldFlush];
  v13 = [(ASCMetricsData *)self includingFields];
  v14 = [(ASCMetricsData *)self excludingFields];
  v15 = [(ASCMetricsData *)v10 initWithTopic:v11 shouldFlush:v12 fields:v9 includingFields:v13 excludingFields:v14];

  return v15;
}

@end