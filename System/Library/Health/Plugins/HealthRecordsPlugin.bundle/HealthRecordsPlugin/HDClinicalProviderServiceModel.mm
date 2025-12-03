@interface HDClinicalProviderServiceModel
+ (BOOL)validateContent:(id)content error:(id *)error;
+ (NSString)schemaName;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (HDClinicalProviderServiceModel)init;
- (HDClinicalProviderServiceModel)initWithContent:(id)content;
- (id)_initWithoutValidatingContent:(id)content;
- (id)createRawContentWithError:(id *)error;
- (int64_t)revision;
- (unint64_t)hash;
@end

@implementation HDClinicalProviderServiceModel

+ (void)initialize
{
  v3 = HDHealthRecordsPluginBundle();
  resourceURL = [v3 resourceURL];
  [HKJSONValidator registerSearchPath:resourceURL];
}

- (HDClinicalProviderServiceModel)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalProviderServiceModel)initWithContent:(id)content
{
  contentCopy = content;
  if (([objc_opt_class() validateContent:contentCopy error:0] & 1) == 0)
  {
    sub_9EC5C(a2, self);
  }

  v6 = [(HDClinicalProviderServiceModel *)self _initWithoutValidatingContent:contentCopy];

  return v6;
}

- (id)_initWithoutValidatingContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = HDClinicalProviderServiceModel;
  v5 = [(HDClinicalProviderServiceModel *)&v9 init];
  if (v5)
  {
    v6 = [contentCopy copyWithZone:0];
    content = v5->_content;
    v5->_content = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(HDClinicalProviderServiceModel *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    content = [(HDClinicalProviderServiceModel *)self content];
    content2 = [(HDClinicalProviderServiceModel *)v5 content];
    if (content == content2)
    {
      v11 = 1;
    }

    else
    {
      content3 = [(HDClinicalProviderServiceModel *)v5 content];
      if (content3)
      {
        content4 = [(HDClinicalProviderServiceModel *)self content];
        content5 = [(HDClinicalProviderServiceModel *)v5 content];
        v11 = [content4 isEqual:content5];
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
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content hash];

  return v3;
}

- (id)createRawContentWithError:(id *)error
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v5 = [NSJSONSerialization dataWithJSONObject:content options:0 error:error];

  return v5;
}

+ (BOOL)validateContent:(id)content error:(id *)error
{
  contentCopy = content;
  os_unfair_lock_lock(&unk_128828);
  if (!qword_128830)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = qword_128830;
    qword_128830 = v7;
  }

  schemaName = [self schemaName];
  v10 = [qword_128830 objectForKeyedSubscript:schemaName];
  if (v10)
  {
    v11 = v10;
    os_unfair_lock_unlock(&unk_128828);
  }

  else
  {
    v12 = [HKJSONValidator alloc];
    v13 = HDHealthRecordsPluginBundle();
    v11 = [v12 initWithSchemaNamed:schemaName bundle:v13];

    [qword_128830 setObject:v11 forKeyedSubscript:schemaName];
    os_unfair_lock_unlock(&unk_128828);
    if (!v11)
    {
      [NSError hk_assignError:error code:100 format:@"Failed to create validator for %@ with schema named %@", self, schemaName];
      v14 = 0;
      goto LABEL_7;
    }
  }

  v14 = [v11 validateJSONObject:contentCopy error:error];

LABEL_7:
  return v14;
}

- (int64_t)revision
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"updated"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

+ (NSString)schemaName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end