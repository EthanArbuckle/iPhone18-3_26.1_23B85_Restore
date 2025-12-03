@interface ASCMetricsData
- (ASCMetricsData)initWithCoder:(id)coder;
- (ASCMetricsData)initWithTopic:(id)topic shouldFlush:(BOOL)flush fields:(id)fields includingFields:(id)includingFields excludingFields:(id)excludingFields;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)metricsDataByMergingFields:(id)fields uniquingFieldsWithBlock:(id)block;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCMetricsData

- (ASCMetricsData)initWithTopic:(id)topic shouldFlush:(BOOL)flush fields:(id)fields includingFields:(id)includingFields excludingFields:(id)excludingFields
{
  topicCopy = topic;
  fieldsCopy = fields;
  includingFieldsCopy = includingFields;
  excludingFieldsCopy = excludingFields;
  +[ASCEligibility assertCurrentProcessEligibility];
  v26.receiver = self;
  v26.super_class = ASCMetricsData;
  v16 = [(ASCMetricsData *)&v26 init];
  if (v16)
  {
    v17 = [topicCopy copy];
    topic = v16->_topic;
    v16->_topic = v17;

    v16->_shouldFlush = flush;
    v19 = [fieldsCopy copy];
    fields = v16->_fields;
    v16->_fields = v19;

    v21 = [includingFieldsCopy copy];
    includingFields = v16->_includingFields;
    v16->_includingFields = v21;

    v23 = [excludingFieldsCopy copy];
    excludingFields = v16->_excludingFields;
    v16->_excludingFields = v23;
  }

  return v16;
}

- (ASCMetricsData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  v6 = [coderCopy decodeBoolForKey:@"shouldFlush"];
  v7 = ASCMetricsFieldsDecodeForKey(coderCopy, @"fields");
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = objc_opt_class();
    v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"includingFields"];
    if (v11)
    {
      v12 = [coderCopy decodeObjectOfClasses:v10 forKey:@"excludingFields"];
      if (v12)
      {
        self = [(ASCMetricsData *)self initWithTopic:v5 shouldFlush:v6 fields:v7 includingFields:v11 excludingFields:v12];
        selfCopy = self;
      }

      else
      {
        v30 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v30)
        {
          [(ASCMetricsData *)v30 initWithCoder:v31, v32, v33, v34, v35, v36, v37];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v22)
      {
        [(ASCMetricsData *)v22 initWithCoder:v23, v24, v25, v26, v27, v28, v29];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(ASCMetricsData *)v14 initWithCoder:v15, v16, v17, v18, v19, v20, v21];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topic = [(ASCMetricsData *)self topic];
  [coderCopy encodeObject:topic forKey:@"topic"];

  [coderCopy encodeBool:-[ASCMetricsData shouldFlush](self forKey:{"shouldFlush"), @"shouldFlush"}];
  fields = [(ASCMetricsData *)self fields];
  [coderCopy encodeObject:fields forKey:@"fields"];

  includingFields = [(ASCMetricsData *)self includingFields];
  [coderCopy encodeObject:includingFields forKey:@"includingFields"];

  excludingFields = [(ASCMetricsData *)self excludingFields];
  [coderCopy encodeObject:excludingFields forKey:@"excludingFields"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  topic = [(ASCMetricsData *)self topic];
  [(ASCHasher *)v3 combineObject:topic];

  [(ASCHasher *)v3 combineBool:[(ASCMetricsData *)self shouldFlush]];
  fields = [(ASCMetricsData *)self fields];
  [(ASCHasher *)v3 combineObject:fields];

  includingFields = [(ASCMetricsData *)self includingFields];
  [(ASCHasher *)v3 combineObject:includingFields];

  excludingFields = [(ASCMetricsData *)self excludingFields];
  [(ASCHasher *)v3 combineObject:excludingFields];

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
    topic = [(ASCMetricsData *)self topic];
    topic2 = [v7 topic];
    v10 = topic2;
    if (topic && topic2)
    {
      if (![topic isEqual:topic2])
      {
        goto LABEL_14;
      }
    }

    else if (topic != topic2)
    {
LABEL_14:
      v11 = 0;
LABEL_32:

      goto LABEL_33;
    }

    shouldFlush = [(ASCMetricsData *)self shouldFlush];
    if (shouldFlush != [v7 shouldFlush])
    {
      goto LABEL_14;
    }

    fields = [(ASCMetricsData *)self fields];
    fields2 = [v7 fields];
    v15 = fields2;
    if (fields && fields2)
    {
      if ([fields isEqual:fields2])
      {
LABEL_18:
        includingFields = [(ASCMetricsData *)self includingFields];
        includingFields2 = [v7 includingFields];
        v18 = includingFields2;
        if (includingFields && includingFields2)
        {
          if ([includingFields isEqual:includingFields2])
          {
            goto LABEL_21;
          }
        }

        else if (includingFields == includingFields2)
        {
LABEL_21:
          excludingFields = [(ASCMetricsData *)self excludingFields];
          excludingFields2 = [v7 excludingFields];
          v21 = excludingFields2;
          v23 = excludingFields;
          if (excludingFields && excludingFields2)
          {
            v11 = [excludingFields isEqual:excludingFields2];
          }

          else
          {
            v11 = excludingFields == excludingFields2;
          }

          goto LABEL_30;
        }

        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    else if (fields == fields2)
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
  topic = [(ASCMetricsData *)self topic];
  [(ASCDescriber *)v3 addObject:topic withName:@"topic"];

  [(ASCDescriber *)v3 addBool:[(ASCMetricsData *)self shouldFlush] withName:@"shouldFlush"];
  fields = [(ASCMetricsData *)self fields];
  [(ASCDescriber *)v3 addSensitiveObject:fields withName:@"fields"];

  includingFields = [(ASCMetricsData *)self includingFields];
  [(ASCDescriber *)v3 addSensitiveObject:includingFields withName:@"includingFields"];

  excludingFields = [(ASCMetricsData *)self excludingFields];
  [(ASCDescriber *)v3 addSensitiveObject:excludingFields withName:@"excludingFields"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (id)metricsDataByMergingFields:(id)fields uniquingFieldsWithBlock:(id)block
{
  blockCopy = block;
  fieldsCopy = fields;
  fields = [(ASCMetricsData *)self fields];
  v9 = [fields asc_dictionaryByMergingDictionary:fieldsCopy uniquingKeysWithBlock:blockCopy];

  v10 = [ASCMetricsData alloc];
  topic = [(ASCMetricsData *)self topic];
  shouldFlush = [(ASCMetricsData *)self shouldFlush];
  includingFields = [(ASCMetricsData *)self includingFields];
  excludingFields = [(ASCMetricsData *)self excludingFields];
  v15 = [(ASCMetricsData *)v10 initWithTopic:topic shouldFlush:shouldFlush fields:v9 includingFields:includingFields excludingFields:excludingFields];

  return v15;
}

@end