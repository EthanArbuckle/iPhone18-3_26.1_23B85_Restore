@interface SHLCloudTrackTransformer
+ (id)baseCloudRecordFromTrack:(id)track usingEncryption:(BOOL)encryption;
+ (id)libraryTrackFromCloudBackedItem:(id)item usingEncryption:(BOOL)encryption;
@end

@implementation SHLCloudTrackTransformer

+ (id)libraryTrackFromCloudBackedItem:(id)item usingEncryption:(BOOL)encryption
{
  record = [item record];
  recordType = [record recordType];
  v7 = [recordType isEqualToString:@"Track"];

  if (!v7)
  {
    v12 = 0;
    goto LABEL_26;
  }

  if (encryption)
  {
    encryptedValues = [record encryptedValues];
    v9 = [encryptedValues objectForKeyedSubscript:@"RecognitionIdentifier"];

    encryptedValues2 = [record encryptedValues];
    v11 = [encryptedValues2 objectForKeyedSubscript:@"ShazamKey"];
  }

  else
  {
    v9 = [record objectForKeyedSubscript:@"RecognitionIdentifier"];
    v11 = [record objectForKeyedSubscript:@"ShazamKey"];
  }

  v13 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [record encodeSystemFieldsWithCoder:v13];
  v14 = [SHLLibraryItemMetadata alloc];
  encodedData = [v13 encodedData];
  v16 = [(SHLLibraryItemMetadata *)v14 initWithEncodedSystemData:encodedData];

  if (encryption)
  {
    v17 = v16;
    v18 = [SHLMutableLibraryTrack alloc];
    recordID = [record recordID];
    recordName = [recordID recordName];
    v53 = v17;
    v21 = [(SHLLibraryTrack *)v18 initWithIdentifier:recordName metadata:v17];

    [(SHLLibraryTrack *)v21 setRecognitionIdentifier:v9];
    v22 = [[SHLShazamKey alloc] initWithKey:v11];
    [(SHLLibraryTrack *)v21 setShazamKey:v22];

    encryptedValues3 = [record encryptedValues];
    v24 = [encryptedValues3 objectForKeyedSubscript:@"Date"];
    [(SHLLibraryTrack *)v21 setDate:v24];

    encryptedValues4 = [record encryptedValues];
    v26 = [encryptedValues4 objectForKeyedSubscript:@"Title"];
    [(SHLLibraryTrack *)v21 setTitle:v26];

    encryptedValues5 = [record encryptedValues];
    v28 = [encryptedValues5 objectForKeyedSubscript:@"Subtitle"];
    [(SHLLibraryTrack *)v21 setSubtitle:v28];

    encryptedValues6 = [record encryptedValues];
    v30 = [encryptedValues6 objectForKeyedSubscript:@"ProviderIdentifier"];
    [(SHLLibraryTrack *)v21 setProviderIdentifier:v30];

    encryptedValues7 = [record encryptedValues];
    v32 = [encryptedValues7 objectForKeyedSubscript:@"ProviderName"];
    [(SHLLibraryTrack *)v21 setProviderName:v32];

LABEL_12:
    encryptedValues8 = [record encryptedValues];
    v40 = [encryptedValues8 objectForKeyedSubscript:@"Location"];

    [SHLLocationTransformer coordinateFromLocation:v40];
    [(SHLLibraryTrack *)v21 setLocationCoordinate:?];
    v41 = [record objectForKeyedSubscript:@"AssociatedGroupIdentifier"];
    recordID2 = [v41 recordID];
    recordName2 = [recordID2 recordName];
    [(SHLLibraryTrack *)v21 setAssociatedGroupIdentifier:recordName2];

    v55 = v9;
    v54 = v13;
    if (encryption)
    {
      encryptedValues9 = [record encryptedValues];
      v45 = [encryptedValues9 objectForKeyedSubscript:@"Labels"];
    }

    else
    {
      v45 = [record objectForKeyedSubscript:@"Labels"];
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

      v35 = [record objectForKeyedSubscript:@"Date"];
      [(SHLLibraryTrack *)v21 setDate:v35];

      v36 = [record objectForKeyedSubscript:@"Title"];
      [(SHLLibraryTrack *)v21 setTitle:v36];

      v37 = [record objectForKeyedSubscript:@"Subtitle"];
      [(SHLLibraryTrack *)v21 setSubtitle:v37];

      v38 = [record objectForKeyedSubscript:@"ProviderIdentifier"];
      [(SHLLibraryTrack *)v21 setProviderIdentifier:v38];

      encryptedValues7 = [record objectForKeyedSubscript:@"ProviderName"];
      [(SHLLibraryTrack *)v21 setProviderName:encryptedValues7];
      goto LABEL_12;
    }

    v12 = 0;
  }

LABEL_25:

LABEL_26:

  return v12;
}

+ (id)baseCloudRecordFromTrack:(id)track usingEncryption:(BOOL)encryption
{
  trackCopy = track;
  metadata = [trackCopy metadata];

  if (metadata)
  {
    v6 = [NSKeyedUnarchiver alloc];
    metadata2 = [trackCopy metadata];

    encodedSystemData = [metadata2 encodedSystemData];
    v17 = 0;
    v9 = [v6 initForReadingFromData:encodedSystemData error:&v17];

    v10 = [[CKRecord alloc] initWithCoder:v9];
    [v9 finishDecoding];
  }

  else
  {
    v11 = [CKRecordID alloc];
    identifier = [trackCopy identifier];

    v13 = +[SHLCloudContext sharedContext];
    shazamLibraryZone = [v13 shazamLibraryZone];
    zoneID = [shazamLibraryZone zoneID];
    v9 = [v11 initWithRecordName:identifier zoneID:zoneID];

    v10 = [[CKRecord alloc] initWithRecordType:@"Track" recordID:v9];
  }

  return v10;
}

@end