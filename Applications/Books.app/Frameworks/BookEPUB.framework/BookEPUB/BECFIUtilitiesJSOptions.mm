@interface BECFIUtilitiesJSOptions
- (BECFIUtilitiesJSOptions)initWithManifestId:(id)a3 assetId:(id)a4 chapterIndex:(unint64_t)a5 spineIndex:(unint64_t)a6;
- (NSString)jsonRepresentation;
- (id)_dictionaryRepresentation;
- (id)description;
@end

@implementation BECFIUtilitiesJSOptions

- (BECFIUtilitiesJSOptions)initWithManifestId:(id)a3 assetId:(id)a4 chapterIndex:(unint64_t)a5 spineIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = BECFIUtilitiesJSOptions;
  v12 = [(BECFIUtilitiesJSOptions *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    manifestId = v12->_manifestId;
    v12->_manifestId = v13;

    v15 = [v11 copy];
    assetId = v12->_assetId;
    v12->_assetId = v15;

    v12->_chapterIndex = a5;
    v12->_spineIndex = a6;
  }

  return v12;
}

- (id)_dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSString *)self->_manifestId length])
  {
    [v3 setObject:self->_manifestId forKeyedSubscript:@"manifestId"];
  }

  if ([(NSString *)self->_assetId length])
  {
    [v3 setObject:self->_assetId forKeyedSubscript:@"assetId"];
  }

  v4 = [NSNumber numberWithUnsignedInteger:self->_chapterIndex];
  [v3 setObject:v4 forKeyedSubscript:@"chapterIndex"];

  v5 = [NSNumber numberWithUnsignedInteger:self->_spineIndex];
  [v3 setObject:v5 forKeyedSubscript:@"spineIndex"];

  return v3;
}

- (NSString)jsonRepresentation
{
  v2 = [(BECFIUtilitiesJSOptions *)self _dictionaryRepresentation];
  v6 = 0;
  v3 = [NSJSONSerialization dataWithJSONObject:v2 options:0 error:&v6];

  if ([v3 length])
  {
    v4 = [[NSString alloc] initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSNumber numberWithUnsignedInteger:[(BECFIUtilitiesJSOptions *)self spineIndex]];
  v6 = [NSNumber numberWithUnsignedInteger:[(BECFIUtilitiesJSOptions *)self chapterIndex]];
  v7 = [(BECFIUtilitiesJSOptions *)self manifestId];
  if ([v7 length])
  {
    v8 = [(BECFIUtilitiesJSOptions *)self manifestId];
    v9 = [NSString stringWithFormat:@"<%@:%p spine:%@ chapterIndex:%@ manifestID:%@>", v4, self, v5, v6, v8];
  }

  else
  {
    v9 = [NSString stringWithFormat:@"<%@:%p spine:%@ chapterIndex:%@ manifestID:%@>", v4, self, v5, v6, @"{none}"];
  }

  return v9;
}

@end