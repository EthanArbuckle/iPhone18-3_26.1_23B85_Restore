@interface RCLocalDropContext
+ (id)dropContextWithFolderType:(int64_t)type folderUUID:(id)d folderIndexPath:(id)path payloadType:(int64_t)payloadType;
@end

@implementation RCLocalDropContext

+ (id)dropContextWithFolderType:(int64_t)type folderUUID:(id)d folderIndexPath:(id)path payloadType:(int64_t)payloadType
{
  pathCopy = path;
  dCopy = d;
  v11 = objc_opt_new();
  [v11 setFolderType:type];
  [v11 setFolderUUID:dCopy];

  [v11 setFolderIndexPath:pathCopy];
  [v11 setPayloadType:payloadType];

  return v11;
}

@end