@interface ABVCardExporter
+ (id)_vCard21RepresentationOfRecords:(id)records;
+ (id)_vCard30RepresentationOfRecords:(id)records;
+ (id)vCardRepresentationOfRecord:(void *)record mode:(int)mode;
+ (id)vCardRepresentationOfRecords:(id)records mode:(int)mode;
@end

@implementation ABVCardExporter

+ (id)_vCard21RepresentationOfRecords:(id)records
{
  objectEnumerator = [records objectEnumerator];
  data = [MEMORY[0x1E695DF88] data];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v7 = [[ABVCardRecord alloc] initWithRecord:nextObject2];
      [data appendData:{-[ABVCardRecord _21vCardRepresentationAsData](v7, "_21vCardRepresentationAsData")}];

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  return data;
}

+ (id)_vCard30RepresentationOfRecords:(id)records
{
  objectEnumerator = [records objectEnumerator];
  string = [MEMORY[0x1E696AD60] string];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v7 = [[ABVCardRecord alloc] initWithRecord:nextObject2];
      v8 = [(ABVCardRecord *)v7 _copyVCardRepresentationAsStringIncludeExternalProperties:0 withPhoto:0 extraPhotoParameters:0 includePrivateData:0 includeWallpaper:0];
      [string appendString:v8];

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  copyABVCardDataRepresentation = [string copyABVCardDataRepresentation];
  ABRegulatoryLogReadTransmitContactsData();

  return copyABVCardDataRepresentation;
}

+ (id)vCardRepresentationOfRecords:(id)records mode:(int)mode
{
  if (mode == 1)
  {
    return [ABVCardExporter _vCard30RepresentationOfRecords:records];
  }

  if (mode)
  {
    return 0;
  }

  return [ABVCardExporter _vCard21RepresentationOfRecords:records];
}

+ (id)vCardRepresentationOfRecord:(void *)record mode:(int)mode
{
  v5 = [[ABVCardRecord alloc] initWithRecord:record];
  v6 = v5;
  if (mode == 1)
  {
    v8 = [(ABVCardRecord *)v5 _copyVCardRepresentationAsStringIncludeExternalProperties:0 withPhoto:0 extraPhotoParameters:0 includePrivateData:0 includeWallpaper:0];
    copyABVCardDataRepresentation = [v8 copyABVCardDataRepresentation];
    ABRegulatoryLogReadTransmitContactsData();
  }

  else if (mode)
  {
    copyABVCardDataRepresentation = 0;
  }

  else
  {
    copyABVCardDataRepresentation = [(ABVCardRecord *)v5 _21vCardRepresentationAsData];
  }

  return copyABVCardDataRepresentation;
}

@end