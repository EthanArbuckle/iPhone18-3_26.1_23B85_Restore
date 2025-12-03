@interface RCFolderDisplayModel
+ (id)_folderImageForFolderOfType:(int64_t)type;
+ (id)folderDisplayModelWithDisplayName:(id)name iconImage:(id)image recordingsCount:(int64_t)count folderType:(int64_t)type UUID:(id)d;
+ (id)folderDisplayModelWithFolderModel:(id)model;
+ (id)folderNameForBuiltInFolderOfType:(int64_t)type;
+ (id)folderSystemImageNameForFolderOfType:(int64_t)type;
- (id)description;
@end

@implementation RCFolderDisplayModel

+ (id)folderDisplayModelWithFolderModel:(id)model
{
  modelCopy = model;
  folderType = [modelCopy folderType];
  v5 = +[RCFolderDisplayModel _folderImageForFolderOfType:](RCFolderDisplayModel, "_folderImageForFolderOfType:", [modelCopy folderType]);
  if (folderType == 4)
  {
    [modelCopy name];
  }

  else
  {
    +[RCFolderDisplayModel folderNameForBuiltInFolderOfType:](RCFolderDisplayModel, "folderNameForBuiltInFolderOfType:", [modelCopy folderType]);
  }
  v6 = ;
  v7 = +[RCApplicationModel sharedApplicationModel];
  v8 = [v7 playableCountForFolder:modelCopy];

  folderType2 = [modelCopy folderType];
  uuid = [modelCopy uuid];
  v11 = [RCFolderDisplayModel folderDisplayModelWithDisplayName:v6 iconImage:v5 recordingsCount:v8 folderType:folderType2 UUID:uuid];

  return v11;
}

+ (id)_folderImageForFolderOfType:(int64_t)type
{
  v3 = [self folderSystemImageNameForFolderOfType:type];
  if (v3)
  {
    v4 = [UIImage systemImageNamed:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)folderSystemImageNameForFolderOfType:(int64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_10028B140 + type);
  }
}

+ (id)folderNameForBuiltInFolderOfType:(int64_t)type
{
  if (type > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_10028B168 + type);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100295BB8 table:0];
  }

  return v5;
}

+ (id)folderDisplayModelWithDisplayName:(id)name iconImage:(id)image recordingsCount:(int64_t)count folderType:(int64_t)type UUID:(id)d
{
  dCopy = d;
  imageCopy = image;
  nameCopy = name;
  v14 = objc_opt_new();
  [v14 setDisplayName:nameCopy];

  [v14 setIconImage:imageCopy];
  [v14 setRecordingsCount:count];
  [v14 setFolderType:type];
  [v14 setUUID:dCopy];

  return v14;
}

- (id)description
{
  displayName = [(RCFolderDisplayModel *)self displayName];
  recordingsCount = [(RCFolderDisplayModel *)self recordingsCount];
  folderType = [(RCFolderDisplayModel *)self folderType];
  uUID = [(RCFolderDisplayModel *)self UUID];
  v7 = [NSString stringWithFormat:@"displayName =%@, count = %lu, type = %lu, UUID = %@", displayName, recordingsCount, folderType, uUID];

  return v7;
}

@end