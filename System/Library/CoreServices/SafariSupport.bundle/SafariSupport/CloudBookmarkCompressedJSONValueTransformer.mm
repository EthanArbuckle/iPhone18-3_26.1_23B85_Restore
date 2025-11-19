@interface CloudBookmarkCompressedJSONValueTransformer
+ (id)defaultTransformer;
+ (id)jsonArrayTransformer;
+ (id)jsonDictionaryTransformer;
- (CloudBookmarkCompressedJSONValueTransformer)initWithRootJSONObjectType:(Class)a3;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation CloudBookmarkCompressedJSONValueTransformer

+ (id)defaultTransformer
{
  if (qword_100153E90 != -1)
  {
    sub_100031C68();
  }

  v3 = qword_100153E88;

  return v3;
}

+ (id)jsonArrayTransformer
{
  if (qword_100153EA0 != -1)
  {
    sub_100031C7C();
  }

  v3 = qword_100153E98;

  return v3;
}

+ (id)jsonDictionaryTransformer
{
  if (qword_100153EB0 != -1)
  {
    sub_100031C90();
  }

  v3 = qword_100153EA8;

  return v3;
}

- (CloudBookmarkCompressedJSONValueTransformer)initWithRootJSONObjectType:(Class)a3
{
  v8.receiver = self;
  v8.super_class = CloudBookmarkCompressedJSONValueTransformer;
  v4 = [(CloudBookmarkCompressedJSONValueTransformer *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_rootJSONObjectType, a3);
    v6 = v5;
  }

  return v5;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  if (v4 && (!self->_rootJSONObjectType || (objc_opt_isKindOfClass() & 1) != 0) && [NSJSONSerialization isValidJSONObject:v4])
  {
    v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:0];
    v6 = [v5 safari_dataByCompressingData];
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
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v5 = [v4 safari_dataByDecompressingData];
  if (!v5)
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100031DA8(v8);
    }

    v7 = 0;
    goto LABEL_17;
  }

  v6 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:0];
  if (!v6)
  {
    v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100031D64(v9);
    }

    goto LABEL_15;
  }

  if (self->_rootJSONObjectType && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100031CA4(&self->_rootJSONObjectType, v10);
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = v6;
LABEL_16:

LABEL_17:
LABEL_18:

  return v7;
}

@end