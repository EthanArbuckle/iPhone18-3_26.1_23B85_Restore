@interface AVTAvatarRecordSerializer
+ (id)avatarRecordFromData:(id)a3;
+ (id)dataFromAvatarRecord:(id)a3;
@end

@implementation AVTAvatarRecordSerializer

+ (id)dataFromAvatarRecord:(id)a3
{
  v3 = a3;
  v4 = [[AVTSerializedAvatarRecord alloc] initWithAvatarRecord:v3];

  v7 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v7];

  return v5;
}

+ (id)avatarRecordFromData:(id)a3
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v8 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v8];

  v6 = [v5 avatarRecord];

  return v6;
}

@end