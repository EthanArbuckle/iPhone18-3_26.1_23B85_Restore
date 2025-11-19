@interface HDClinicalProviderServiceModel
+ (BOOL)validateContent:(id)a3 error:(id *)a4;
+ (NSString)schemaName;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (HDClinicalProviderServiceModel)init;
- (HDClinicalProviderServiceModel)initWithContent:(id)a3;
- (id)_initWithoutValidatingContent:(id)a3;
- (id)createRawContentWithError:(id *)a3;
- (int64_t)revision;
- (unint64_t)hash;
@end

@implementation HDClinicalProviderServiceModel

+ (void)initialize
{
  v3 = HDHealthRecordsPluginBundle();
  v2 = [v3 resourceURL];
  [HKJSONValidator registerSearchPath:v2];
}

- (HDClinicalProviderServiceModel)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalProviderServiceModel)initWithContent:(id)a3
{
  v5 = a3;
  if (([objc_opt_class() validateContent:v5 error:0] & 1) == 0)
  {
    sub_9EC5C(a2, self);
  }

  v6 = [(HDClinicalProviderServiceModel *)self _initWithoutValidatingContent:v5];

  return v6;
}

- (id)_initWithoutValidatingContent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDClinicalProviderServiceModel;
  v5 = [(HDClinicalProviderServiceModel *)&v9 init];
  if (v5)
  {
    v6 = [v4 copyWithZone:0];
    content = v5->_content;
    v5->_content = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(HDClinicalProviderServiceModel *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(HDClinicalProviderServiceModel *)self content];
    v7 = [(HDClinicalProviderServiceModel *)v5 content];
    if (v6 == v7)
    {
      v11 = 1;
    }

    else
    {
      v8 = [(HDClinicalProviderServiceModel *)v5 content];
      if (v8)
      {
        v9 = [(HDClinicalProviderServiceModel *)self content];
        v10 = [(HDClinicalProviderServiceModel *)v5 content];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 hash];

  return v3;
}

- (id)createRawContentWithError:(id *)a3
{
  v4 = [(HDClinicalProviderServiceModel *)self content];
  v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:a3];

  return v5;
}

+ (BOOL)validateContent:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&unk_128828);
  if (!qword_128830)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = qword_128830;
    qword_128830 = v7;
  }

  v9 = [a1 schemaName];
  v10 = [qword_128830 objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = v10;
    os_unfair_lock_unlock(&unk_128828);
  }

  else
  {
    v12 = [HKJSONValidator alloc];
    v13 = HDHealthRecordsPluginBundle();
    v11 = [v12 initWithSchemaNamed:v9 bundle:v13];

    [qword_128830 setObject:v11 forKeyedSubscript:v9];
    os_unfair_lock_unlock(&unk_128828);
    if (!v11)
    {
      [NSError hk_assignError:a4 code:100 format:@"Failed to create validator for %@ with schema named %@", a1, v9];
      v14 = 0;
      goto LABEL_7;
    }
  }

  v14 = [v11 validateJSONObject:v6 error:a4];

LABEL_7:
  return v14;
}

- (int64_t)revision
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"updated"];
  v4 = [v3 longLongValue];

  return v4;
}

+ (NSString)schemaName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end