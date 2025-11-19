@interface ABVCardExporter
+ (id)_vCard21RepresentationOfRecords:(id)a3;
+ (id)_vCard30RepresentationOfRecords:(id)a3;
+ (id)vCardRepresentationOfRecord:(void *)a3 mode:(int)a4;
+ (id)vCardRepresentationOfRecords:(id)a3 mode:(int)a4;
@end

@implementation ABVCardExporter

+ (id)_vCard21RepresentationOfRecords:(id)a3
{
  v3 = [a3 objectEnumerator];
  v4 = [MEMORY[0x1E695DF88] data];
  v5 = [v3 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [[ABVCardRecord alloc] initWithRecord:v6];
      [v4 appendData:{-[ABVCardRecord _21vCardRepresentationAsData](v7, "_21vCardRepresentationAsData")}];

      v6 = [v3 nextObject];
    }

    while (v6);
  }

  return v4;
}

+ (id)_vCard30RepresentationOfRecords:(id)a3
{
  v3 = [a3 objectEnumerator];
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [v3 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [[ABVCardRecord alloc] initWithRecord:v6];
      v8 = [(ABVCardRecord *)v7 _copyVCardRepresentationAsStringIncludeExternalProperties:0 withPhoto:0 extraPhotoParameters:0 includePrivateData:0 includeWallpaper:0];
      [v4 appendString:v8];

      v6 = [v3 nextObject];
    }

    while (v6);
  }

  v9 = [v4 copyABVCardDataRepresentation];
  ABRegulatoryLogReadTransmitContactsData();

  return v9;
}

+ (id)vCardRepresentationOfRecords:(id)a3 mode:(int)a4
{
  if (a4 == 1)
  {
    return [ABVCardExporter _vCard30RepresentationOfRecords:a3];
  }

  if (a4)
  {
    return 0;
  }

  return [ABVCardExporter _vCard21RepresentationOfRecords:a3];
}

+ (id)vCardRepresentationOfRecord:(void *)a3 mode:(int)a4
{
  v5 = [[ABVCardRecord alloc] initWithRecord:a3];
  v6 = v5;
  if (a4 == 1)
  {
    v8 = [(ABVCardRecord *)v5 _copyVCardRepresentationAsStringIncludeExternalProperties:0 withPhoto:0 extraPhotoParameters:0 includePrivateData:0 includeWallpaper:0];
    v7 = [v8 copyABVCardDataRepresentation];
    ABRegulatoryLogReadTransmitContactsData();
  }

  else if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(ABVCardRecord *)v5 _21vCardRepresentationAsData];
  }

  return v7;
}

@end