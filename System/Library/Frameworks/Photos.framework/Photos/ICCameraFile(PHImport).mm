@interface ICCameraFile(PHImport)
- (id)uuid;
@end

@implementation ICCameraFile(PHImport)

- (id)uuid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userData = [selfCopy userData];
  uUIDString = [userData objectForKeyedSubscript:@"PHImportFileUUID"];

  if (!uUIDString)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    userData2 = [selfCopy userData];
    [userData2 setObject:uUIDString forKeyedSubscript:@"PHImportFileUUID"];
  }

  objc_sync_exit(selfCopy);

  return uUIDString;
}

@end