@interface RCLocalDropContext
+ (id)dropContextWithFolderType:(int64_t)a3 folderUUID:(id)a4 folderIndexPath:(id)a5 payloadType:(int64_t)a6;
@end

@implementation RCLocalDropContext

+ (id)dropContextWithFolderType:(int64_t)a3 folderUUID:(id)a4 folderIndexPath:(id)a5 payloadType:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_new();
  [v11 setFolderType:a3];
  [v11 setFolderUUID:v10];

  [v11 setFolderIndexPath:v9];
  [v11 setPayloadType:a6];

  return v11;
}

@end