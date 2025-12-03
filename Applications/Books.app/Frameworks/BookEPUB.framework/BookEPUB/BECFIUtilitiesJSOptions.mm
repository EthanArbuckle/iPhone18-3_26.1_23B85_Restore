@interface BECFIUtilitiesJSOptions
- (BECFIUtilitiesJSOptions)initWithManifestId:(id)id assetId:(id)assetId chapterIndex:(unint64_t)index spineIndex:(unint64_t)spineIndex;
- (NSString)jsonRepresentation;
- (id)_dictionaryRepresentation;
- (id)description;
@end

@implementation BECFIUtilitiesJSOptions

- (BECFIUtilitiesJSOptions)initWithManifestId:(id)id assetId:(id)assetId chapterIndex:(unint64_t)index spineIndex:(unint64_t)spineIndex
{
  idCopy = id;
  assetIdCopy = assetId;
  v18.receiver = self;
  v18.super_class = BECFIUtilitiesJSOptions;
  v12 = [(BECFIUtilitiesJSOptions *)&v18 init];
  if (v12)
  {
    v13 = [idCopy copy];
    manifestId = v12->_manifestId;
    v12->_manifestId = v13;

    v15 = [assetIdCopy copy];
    assetId = v12->_assetId;
    v12->_assetId = v15;

    v12->_chapterIndex = index;
    v12->_spineIndex = spineIndex;
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
  _dictionaryRepresentation = [(BECFIUtilitiesJSOptions *)self _dictionaryRepresentation];
  v6 = 0;
  v3 = [NSJSONSerialization dataWithJSONObject:_dictionaryRepresentation options:0 error:&v6];

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
  manifestId = [(BECFIUtilitiesJSOptions *)self manifestId];
  if ([manifestId length])
  {
    manifestId2 = [(BECFIUtilitiesJSOptions *)self manifestId];
    v9 = [NSString stringWithFormat:@"<%@:%p spine:%@ chapterIndex:%@ manifestID:%@>", v4, self, v5, v6, manifestId2];
  }

  else
  {
    v9 = [NSString stringWithFormat:@"<%@:%p spine:%@ chapterIndex:%@ manifestID:%@>", v4, self, v5, v6, @"{none}"];
  }

  return v9;
}

@end