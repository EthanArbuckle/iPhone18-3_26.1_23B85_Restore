@interface SHLCloudTrackTransformer
+ (id)baseCloudRecordFromTrack:(id)a3 usingEncryption:(BOOL)a4;
+ (id)libraryTrackFromCloudBackedItem:(id)a3 usingEncryption:(BOOL)a4;
@end

@implementation SHLCloudTrackTransformer

+ (id)libraryTrackFromCloudBackedItem:(id)a3 usingEncryption:(BOOL)a4
{
  v5 = [a3 record];
  v6 = [v5 recordType];
  v7 = [v6 isEqualToString:@"Track"];

  if (!v7)
  {
    v12 = 0;
    goto LABEL_26;
  }

  if (a4)
  {
    v8 = [v5 encryptedValues];
    v9 = [v8 objectForKeyedSubscript:@"RecognitionIdentifier"];

    v10 = [v5 encryptedValues];
    v11 = [v10 objectForKeyedSubscript:@"ShazamKey"];
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:@"RecognitionIdentifier"];
    v11 = [v5 objectForKeyedSubscript:@"ShazamKey"];
  }

  v13 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 encodeSystemFieldsWithCoder:v13];
  v14 = [SHLLibraryItemMetadata alloc];
  v15 = [v13 encodedData];
  v16 = [(SHLLibraryItemMetadata *)v14 initWithEncodedSystemData:v15];

  if (a4)
  {
    v17 = v16;
    v18 = [SHLMutableLibraryTrack alloc];
    v19 = [v5 recordID];
    v20 = [v19 recordName];
    v53 = v17;
    v21 = [(SHLLibraryTrack *)v18 initWithIdentifier:v20 metadata:v17];

    [(SHLLibraryTrack *)v21 setRecognitionIdentifier:v9];
    v22 = [[SHLShazamKey alloc] initWithKey:v11];
    [(SHLLibraryTrack *)v21 setShazamKey:v22];

    v23 = [v5 encryptedValues];
    v24 = [v23 objectForKeyedSubscript:@"Date"];
    [(SHLLibraryTrack *)v21 setDate:v24];

    v25 = [v5 encryptedValues];
    v26 = [v25 objectForKeyedSubscript:@"Title"];
    [(SHLLibraryTrack *)v21 setTitle:v26];

    v27 = [v5 encryptedValues];
    v28 = [v27 objectForKeyedSubscript:@"Subtitle"];
    [(SHLLibraryTrack *)v21 setSubtitle:v28];

    v29 = [v5 encryptedValues];
    v30 = [v29 objectForKeyedSubscript:@"ProviderIdentifier"];
    [(SHLLibraryTrack *)v21 setProviderIdentifier:v30];

    v31 = [v5 encryptedValues];
    v32 = [v31 objectForKeyedSubscript:@"ProviderName"];
    [(SHLLibraryTrack *)v21 setProviderName:v32];

LABEL_12:
    v39 = [v5 encryptedValues];
    v40 = [v39 objectForKeyedSubscript:@"Location"];

    [SHLLocationTransformer coordinateFromLocation:v40];
    [(SHLLibraryTrack *)v21 setLocationCoordinate:?];
    v41 = [v5 objectForKeyedSubscript:@"AssociatedGroupIdentifier"];
    v42 = [v41 recordID];
    v43 = [v42 recordName];
    [(SHLLibraryTrack *)v21 setAssociatedGroupIdentifier:v43];

    v55 = v9;
    v54 = v13;
    if (a4)
    {
      v44 = [v5 encryptedValues];
      v45 = [v44 objectForKeyedSubscript:@"Labels"];
    }

    else
    {
      v45 = [v5 objectForKeyedSubscript:@"Labels"];
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v46 = v45;
    v47 = [v46 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v57;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v57 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = [[SHLLibraryLabel alloc] initWithName:*(*(&v56 + 1) + 8 * i)];
          if ([(SHLLibraryLabel *)v51 type])
          {
            [(SHLLibraryTrack *)v21 addLabel:v51];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v48);
    }

    v12 = [(SHLMutableLibraryTrack *)v21 copy];
    v9 = v55;
    v16 = v53;
    v13 = v54;
    goto LABEL_25;
  }

  v12 = 0;
  if (v9 && v11)
  {
    v33 = [[SHLShazamKey alloc] initWithKey:v11];
    if (v33)
    {
      v34 = v33;
      v53 = v16;
      v21 = [(SHLLibraryTrack *)[SHLMutableLibraryTrack alloc] initWithRecognitionIdentifier:v9 shazamKey:v33 metadata:v16];

      v35 = [v5 objectForKeyedSubscript:@"Date"];
      [(SHLLibraryTrack *)v21 setDate:v35];

      v36 = [v5 objectForKeyedSubscript:@"Title"];
      [(SHLLibraryTrack *)v21 setTitle:v36];

      v37 = [v5 objectForKeyedSubscript:@"Subtitle"];
      [(SHLLibraryTrack *)v21 setSubtitle:v37];

      v38 = [v5 objectForKeyedSubscript:@"ProviderIdentifier"];
      [(SHLLibraryTrack *)v21 setProviderIdentifier:v38];

      v31 = [v5 objectForKeyedSubscript:@"ProviderName"];
      [(SHLLibraryTrack *)v21 setProviderName:v31];
      goto LABEL_12;
    }

    v12 = 0;
  }

LABEL_25:

LABEL_26:

  return v12;
}

+ (id)baseCloudRecordFromTrack:(id)a3 usingEncryption:(BOOL)a4
{
  v4 = a3;
  v5 = [v4 metadata];

  if (v5)
  {
    v6 = [NSKeyedUnarchiver alloc];
    v7 = [v4 metadata];

    v8 = [v7 encodedSystemData];
    v17 = 0;
    v9 = [v6 initForReadingFromData:v8 error:&v17];

    v10 = [[CKRecord alloc] initWithCoder:v9];
    [v9 finishDecoding];
  }

  else
  {
    v11 = [CKRecordID alloc];
    v12 = [v4 identifier];

    v13 = +[SHLCloudContext sharedContext];
    v14 = [v13 shazamLibraryZone];
    v15 = [v14 zoneID];
    v9 = [v11 initWithRecordName:v12 zoneID:v15];

    v10 = [[CKRecord alloc] initWithRecordType:@"Track" recordID:v9];
  }

  return v10;
}

@end