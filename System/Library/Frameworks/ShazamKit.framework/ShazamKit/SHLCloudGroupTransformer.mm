@interface SHLCloudGroupTransformer
+ (id)baseCloudRecordFromGroup:(id)group;
+ (id)cloudBackedItemFromLibraryGroup:(id)group;
+ (id)libraryGroupFromCloudBackedItem:(id)item;
@end

@implementation SHLCloudGroupTransformer

+ (id)libraryGroupFromCloudBackedItem:(id)item
{
  itemCopy = item;
  record = [itemCopy record];
  recordType = [record recordType];
  v6 = [recordType isEqualToString:@"Group"];

  if (v6)
  {
    v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    record2 = [itemCopy record];
    [record2 encodeSystemFieldsWithCoder:v7];

    v9 = [SHLLibraryItemMetadata alloc];
    encodedData = [v7 encodedData];
    v11 = [(SHLLibraryItemMetadata *)v9 initWithEncodedSystemData:encodedData];

    v12 = [SHLLibraryGroup alloc];
    record3 = [itemCopy record];
    recordID = [record3 recordID];
    recordName = [recordID recordName];
    v16 = [(SHLLibraryGroup *)v12 initWithIdentifier:recordName metadata:v11];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)cloudBackedItemFromLibraryGroup:(id)group
{
  v3 = [self baseCloudRecordFromGroup:group];
  if (v3)
  {
    v4 = [[SHLCloudBackedItem alloc] initWithRecord:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)baseCloudRecordFromGroup:(id)group
{
  groupCopy = group;
  metadata = [groupCopy metadata];

  if (metadata)
  {
    v5 = [NSKeyedUnarchiver alloc];
    metadata2 = [groupCopy metadata];

    encodedSystemData = [metadata2 encodedSystemData];
    v16 = 0;
    v8 = [v5 initForReadingFromData:encodedSystemData error:&v16];

    v9 = [[CKRecord alloc] initWithCoder:v8];
    [v8 finishDecoding];
  }

  else
  {
    v10 = [CKRecordID alloc];
    identifier = [groupCopy identifier];

    v12 = +[SHLCloudContext sharedContext];
    shazamLibraryZone = [v12 shazamLibraryZone];
    zoneID = [shazamLibraryZone zoneID];
    v8 = [v10 initWithRecordName:identifier zoneID:zoneID];

    v9 = [[CKRecord alloc] initWithRecordType:@"Group" recordID:v8];
  }

  return v9;
}

@end