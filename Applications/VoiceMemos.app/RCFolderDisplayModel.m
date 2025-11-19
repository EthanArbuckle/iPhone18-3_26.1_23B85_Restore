@interface RCFolderDisplayModel
+ (id)_folderImageForFolderOfType:(int64_t)a3;
+ (id)folderDisplayModelWithDisplayName:(id)a3 iconImage:(id)a4 recordingsCount:(int64_t)a5 folderType:(int64_t)a6 UUID:(id)a7;
+ (id)folderDisplayModelWithFolderModel:(id)a3;
+ (id)folderNameForBuiltInFolderOfType:(int64_t)a3;
+ (id)folderSystemImageNameForFolderOfType:(int64_t)a3;
- (id)description;
@end

@implementation RCFolderDisplayModel

+ (id)folderDisplayModelWithFolderModel:(id)a3
{
  v3 = a3;
  v4 = [v3 folderType];
  v5 = +[RCFolderDisplayModel _folderImageForFolderOfType:](RCFolderDisplayModel, "_folderImageForFolderOfType:", [v3 folderType]);
  if (v4 == 4)
  {
    [v3 name];
  }

  else
  {
    +[RCFolderDisplayModel folderNameForBuiltInFolderOfType:](RCFolderDisplayModel, "folderNameForBuiltInFolderOfType:", [v3 folderType]);
  }
  v6 = ;
  v7 = +[RCApplicationModel sharedApplicationModel];
  v8 = [v7 playableCountForFolder:v3];

  v9 = [v3 folderType];
  v10 = [v3 uuid];
  v11 = [RCFolderDisplayModel folderDisplayModelWithDisplayName:v6 iconImage:v5 recordingsCount:v8 folderType:v9 UUID:v10];

  return v11;
}

+ (id)_folderImageForFolderOfType:(int64_t)a3
{
  v3 = [a1 folderSystemImageNameForFolderOfType:a3];
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

+ (id)folderSystemImageNameForFolderOfType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_10028B140 + a3);
  }
}

+ (id)folderNameForBuiltInFolderOfType:(int64_t)a3
{
  if (a3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_10028B168 + a3);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100295BB8 table:0];
  }

  return v5;
}

+ (id)folderDisplayModelWithDisplayName:(id)a3 iconImage:(id)a4 recordingsCount:(int64_t)a5 folderType:(int64_t)a6 UUID:(id)a7
{
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  [v14 setDisplayName:v13];

  [v14 setIconImage:v12];
  [v14 setRecordingsCount:a5];
  [v14 setFolderType:a6];
  [v14 setUUID:v11];

  return v14;
}

- (id)description
{
  v3 = [(RCFolderDisplayModel *)self displayName];
  v4 = [(RCFolderDisplayModel *)self recordingsCount];
  v5 = [(RCFolderDisplayModel *)self folderType];
  v6 = [(RCFolderDisplayModel *)self UUID];
  v7 = [NSString stringWithFormat:@"displayName =%@, count = %lu, type = %lu, UUID = %@", v3, v4, v5, v6];

  return v7;
}

@end