@interface ICCameraFile(PHImport)
- (id)uuid;
@end

@implementation ICCameraFile(PHImport)

- (id)uuid
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1 userData];
  v3 = [v2 objectForKeyedSubscript:@"PHImportFileUUID"];

  if (!v3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v3 = [v4 UUIDString];

    v5 = [v1 userData];
    [v5 setObject:v3 forKeyedSubscript:@"PHImportFileUUID"];
  }

  objc_sync_exit(v1);

  return v3;
}

@end