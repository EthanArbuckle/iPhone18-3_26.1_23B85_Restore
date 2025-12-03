@interface AVTAvatarRecordSerializer
+ (id)avatarRecordFromData:(id)data;
+ (id)dataFromAvatarRecord:(id)record;
@end

@implementation AVTAvatarRecordSerializer

+ (id)dataFromAvatarRecord:(id)record
{
  recordCopy = record;
  v4 = [[AVTSerializedAvatarRecord alloc] initWithAvatarRecord:recordCopy];

  v7 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v7];

  return v5;
}

+ (id)avatarRecordFromData:(id)data
{
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v8 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v8];

  avatarRecord = [v5 avatarRecord];

  return avatarRecord;
}

@end