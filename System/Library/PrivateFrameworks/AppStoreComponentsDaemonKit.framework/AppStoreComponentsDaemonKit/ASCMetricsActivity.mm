@interface ASCMetricsActivity
+ (NSDictionary)defaultFields;
- (ASCMetricsActivity)initWithCoder:(id)a3;
- (ASCMetricsActivity)initWithFields:(id)a3;
- (ASCMetricsActivity)metricsActivityWithValue:(id)a3 forKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)metricsActivityByMergingFields:(id)a3 uniquingFieldsWithBlock:(id)a4;
- (id)metricsActivityByRemovingValueForKey:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (ASCMetricsActivity)initWithFields:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASCMetricsActivity;
  v5 = [(ASCMetricsActivity *)&v10 init];
  if (v5)
  {
    v6 = +[ASCMetricsActivity defaultFields];
    v7 = [v6 asc_dictionaryByMergingDictionary:v4 uniquingKeysWithBlock:&__block_literal_global_22];
    fields = v5->_fields;
    v5->_fields = v7;
  }

  return v5;
}

- (ASCMetricsActivity)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"fields"];

  if (v9)
  {
    self = [(ASCMetricsActivity *)self initWithFields:v9];
    v10 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCMetricsActivity initWithCoder:];
    }

    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCMetricsActivity *)self fields];
  [v4 encodeObject:v5 forKey:@"fields"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCMetricsActivity *)self fields];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCHasher *)v3 finalizeHash];
  return v5;
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
    v8 = [(ASCMetricsActivity *)self fields];
    v9 = [v7 fields];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [v8 isEqual:v9];
    }

    else
    {
      v11 = v8 == v9;
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
  v4 = [(ASCMetricsActivity *)self fields];
  [(ASCDescriber *)v3 addSensitiveObject:v4 withName:@"fields"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

- (ASCMetricsActivity)metricsActivityWithValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASCMetricsActivity *)self fields];
  v9 = [v8 mutableCopy];

  [v9 setObject:v7 forKeyedSubscript:v6];
  v10 = [objc_alloc(objc_opt_class()) initWithFields:v9];

  return v10;
}

- (id)metricsActivityByMergingFields:(id)a3 uniquingFieldsWithBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASCMetricsActivity *)self fields];
  v9 = [v8 asc_dictionaryByMergingDictionary:v7 uniquingKeysWithBlock:v6];

  v10 = [objc_alloc(objc_opt_class()) initWithFields:v9];

  return v10;
}

- (id)metricsActivityByRemovingValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(ASCMetricsActivity *)self fields];
  v6 = [v5 mutableCopy];

  [v6 removeObjectForKey:v4];
  v7 = [objc_alloc(objc_opt_class()) initWithFields:v6];

  return v7;
}

@end