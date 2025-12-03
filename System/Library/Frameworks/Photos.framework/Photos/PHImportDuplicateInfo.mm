@interface PHImportDuplicateInfo
- (BOOL)hasVideoComplement;
- (BOOL)isInTrash;
- (BOOL)isLegacy;
- (PHImportDuplicateInfo)initWithAssetInfo:(id)info;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasVideoComplement
{
  v2 = [(NSMutableDictionary *)self->_info objectForKeyedSubscript:@"hasVideoComplement"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uuid = [(PHImportDuplicateInfo *)self uuid];
  fileSize = [(PHImportDuplicateInfo *)self fileSize];
  fileName = [(PHImportDuplicateInfo *)self fileName];
  imageDate = [(PHImportDuplicateInfo *)self imageDate];
  alternateImportImageDate = [(PHImportDuplicateInfo *)self alternateImportImageDate];
  if (alternateImportImageDate)
  {
    v9 = MEMORY[0x1E696AEC0];
    alternateImportImageDate2 = [(PHImportDuplicateInfo *)self alternateImportImageDate];
    v11 = [v9 stringWithFormat:@" (alt: %@)", alternateImportImageDate2];
    v12 = [v3 stringWithFormat:@"uuid: %@, size: %@, name: %@, date: %@%@", uuid, fileSize, fileName, imageDate, v11];
  }

  else
  {
    v12 = [v3 stringWithFormat:@"uuid: %@, size: %@, name: %@, date: %@%@", uuid, fileSize, fileName, imageDate, &stru_1F0FC60C8];
  }

  return v12;
}

- (BOOL)isLegacy
{
  alternateImportImageDate = [(PHImportDuplicateInfo *)self alternateImportImageDate];
  v3 = alternateImportImageDate == 0;

  return v3;
}

- (PHImportDuplicateInfo)initWithAssetInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v5 = [(PHImportDuplicateInfo *)self init];
    v6 = v5;
    if (v5)
    {
      [(PHImportDuplicateInfo *)v5 setInfo:infoCopy];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end