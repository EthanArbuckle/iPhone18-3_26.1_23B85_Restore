@interface AVTStubbedStoreBackend
- (id)duplicateAvatarRecord:(id)record error:(id *)error;
@end

@implementation AVTStubbedStoreBackend

- (id)duplicateAvatarRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v5 = [AVTAvatarRecord alloc];
  avatarData = [recordCopy avatarData];
  v7 = [avatarData copy];
  orderDate = [recordCopy orderDate];

  v9 = [orderDate dateByAddingTimeInterval:1.0];
  v10 = [(AVTAvatarRecord *)v5 initWithAvatarData:v7 orderDate:v9];

  return v10;
}

@end