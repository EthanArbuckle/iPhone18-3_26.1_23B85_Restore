@interface PHImportDuplicateInfo
- (BOOL)hasVideoComplement;
- (BOOL)isInTrash;
- (BOOL)isLegacy;
- (PHImportDuplicateInfo)initWithAssetInfo:(id)a3;
- (double)timezoneOffset;
- (id)description;
@end

@implementation PHImportDuplicateInfo

- (double)timezoneOffset
{
  v2 = [(NSMutableDictionary *)self->_info objectForKeyedSubscript:@"timeZoneOffset"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (BOOL)isInTrash
{
  v2 = [(NSMutableDictionary *)self->_info objectForKeyedSubscript:@"asset.trashedState"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasVideoComplement
{
  v2 = [(NSMutableDictionary *)self->_info objectForKeyedSubscript:@"hasVideoComplement"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PHImportDuplicateInfo *)self uuid];
  v5 = [(PHImportDuplicateInfo *)self fileSize];
  v6 = [(PHImportDuplicateInfo *)self fileName];
  v7 = [(PHImportDuplicateInfo *)self imageDate];
  v8 = [(PHImportDuplicateInfo *)self alternateImportImageDate];
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(PHImportDuplicateInfo *)self alternateImportImageDate];
    v11 = [v9 stringWithFormat:@" (alt: %@)", v10];
    v12 = [v3 stringWithFormat:@"uuid: %@, size: %@, name: %@, date: %@%@", v4, v5, v6, v7, v11];
  }

  else
  {
    v12 = [v3 stringWithFormat:@"uuid: %@, size: %@, name: %@, date: %@%@", v4, v5, v6, v7, &stru_1F0FC60C8];
  }

  return v12;
}

- (BOOL)isLegacy
{
  v2 = [(PHImportDuplicateInfo *)self alternateImportImageDate];
  v3 = v2 == 0;

  return v3;
}

- (PHImportDuplicateInfo)initWithAssetInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PHImportDuplicateInfo *)self init];
    v6 = v5;
    if (v5)
    {
      [(PHImportDuplicateInfo *)v5 setInfo:v4];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end