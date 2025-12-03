@interface ASCMetricsActivity
+ (NSDictionary)defaultFields;
- (ASCMetricsActivity)initWithCoder:(id)coder;
- (ASCMetricsActivity)initWithFields:(id)fields;
- (ASCMetricsActivity)metricsActivityWithValue:(id)value forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)metricsActivityByMergingFields:(id)fields uniquingFieldsWithBlock:(id)block;
- (id)metricsActivityByRemovingValueForKey:(id)key;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCMetricsActivity

+ (NSDictionary)defaultFields
{
  if (defaultFields_onceToken != -1)
  {
    +[ASCMetricsActivity defaultFields];
  }

  v3 = defaultFields_defaultFields;

  return v3;
}

void __35__ASCMetricsActivity_defaultFields__block_invoke()
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v0 = [MEMORY[0x277CCA8D8] asc_realMainBundle];
  v1 = objc_alloc(MEMORY[0x277CEE620]);
  v2 = [v0 bundleIdentifier];
  v3 = [v1 initWithBundleIdentifier:v2];

  v4 = [v3 bundleIdentifier];
  if (v4)
  {
    [v7 setObject:v4 forKeyedSubscript:@"hostApp"];
    [v7 setObject:v4 forKeyedSubscript:@"pageContext"];
  }

  v5 = [v7 copy];
  v6 = defaultFields_defaultFields;
  defaultFields_defaultFields = v5;
}

- (ASCMetricsActivity)initWithFields:(id)fields
{
  fieldsCopy = fields;
  v10.receiver = self;
  v10.super_class = ASCMetricsActivity;
  v5 = [(ASCMetricsActivity *)&v10 init];
  if (v5)
  {
    v6 = +[ASCMetricsActivity defaultFields];
    v7 = [v6 asc_dictionaryByMergingDictionary:fieldsCopy uniquingKeysWithBlock:&__block_literal_global_22];
    fields = v5->_fields;
    v5->_fields = v7;
  }

  return v5;
}

- (ASCMetricsActivity)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"fields"];

  if (v9)
  {
    self = [(ASCMetricsActivity *)self initWithFields:v9];
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCMetricsActivity initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fields = [(ASCMetricsActivity *)self fields];
  [coderCopy encodeObject:fields forKey:@"fields"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  fields = [(ASCMetricsActivity *)self fields];
  [(ASCHasher *)v3 combineObject:fields];

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
    fields = [(ASCMetricsActivity *)self fields];
    fields2 = [v7 fields];
    v10 = fields2;
    if (fields && fields2)
    {
      v11 = [fields isEqual:fields2];
    }

    else
    {
      v11 = fields == fields2;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  fields = [(ASCMetricsActivity *)self fields];
  [(ASCDescriber *)v3 addSensitiveObject:fields withName:@"fields"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (ASCMetricsActivity)metricsActivityWithValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  fields = [(ASCMetricsActivity *)self fields];
  v9 = [fields mutableCopy];

  [v9 setObject:valueCopy forKeyedSubscript:keyCopy];
  v10 = [objc_alloc(objc_opt_class()) initWithFields:v9];

  return v10;
}

- (id)metricsActivityByMergingFields:(id)fields uniquingFieldsWithBlock:(id)block
{
  blockCopy = block;
  fieldsCopy = fields;
  fields = [(ASCMetricsActivity *)self fields];
  v9 = [fields asc_dictionaryByMergingDictionary:fieldsCopy uniquingKeysWithBlock:blockCopy];

  v10 = [objc_alloc(objc_opt_class()) initWithFields:v9];

  return v10;
}

- (id)metricsActivityByRemovingValueForKey:(id)key
{
  keyCopy = key;
  fields = [(ASCMetricsActivity *)self fields];
  v6 = [fields mutableCopy];

  [v6 removeObjectForKey:keyCopy];
  v7 = [objc_alloc(objc_opt_class()) initWithFields:v6];

  return v7;
}

@end