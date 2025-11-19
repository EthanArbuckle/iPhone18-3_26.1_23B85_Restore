@interface CloudBookmarkEncryptedObjectValueTransformer
- (CloudBookmarkEncryptedObjectValueTransformer)initWithObjectClass:(Class)a3;
- (CloudBookmarkEncryptedObjectValueTransformer)initWithObjectClasses:(id)a3;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation CloudBookmarkEncryptedObjectValueTransformer

- (CloudBookmarkEncryptedObjectValueTransformer)initWithObjectClass:(Class)a3
{
  v4 = [NSSet setWithObject:a3];
  v5 = [(CloudBookmarkEncryptedObjectValueTransformer *)self initWithObjectClasses:v4];

  return v5;
}

- (CloudBookmarkEncryptedObjectValueTransformer)initWithObjectClasses:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CloudBookmarkEncryptedObjectValueTransformer;
  v6 = [(CloudBookmarkEncryptedObjectValueTransformer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectClasses, a3);
    v8 = v7;
  }

  return v7;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  if ([(NSSet *)self->_objectClasses count]> 1 || ([(NSSet *)self->_objectClasses anyObject], (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v5 encodeObject:v4 forKey:NSKeyedArchiveRootObjectKey];
    v6 = [v5 encodedData];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)reverseTransformedValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (v5)
    {
      v13[0] = 0;
      v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:v13];
      v7 = v13[0];
      if (v7)
      {
        v8 = sub_1000D22B4();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = [v7 safari_privacyPreservingDescription];
          sub_100033174(v9, buf, v8);
        }
      }

      v10 = [v6 decodeObjectOfClasses:self->_objectClasses forKey:NSKeyedArchiveRootObjectKey];
      [v6 finishDecoding];
      if ([(NSSet *)self->_objectClasses count]> 1 || ([(NSSet *)self->_objectClasses anyObject], (objc_opt_isKindOfClass() & 1) != 0))
      {

        v10 = v10;
        v11 = v10;
      }

      else
      {

        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end