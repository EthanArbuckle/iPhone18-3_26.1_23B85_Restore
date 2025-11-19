@interface AVTStubbedStoreBackend
- (id)duplicateAvatarRecord:(id)a3 error:(id *)a4;
@end

@implementation AVTStubbedStoreBackend

- (id)duplicateAvatarRecord:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [AVTAvatarRecord alloc];
  v6 = [v4 avatarData];
  v7 = [v6 copy];
  v8 = [v4 orderDate];

  v9 = [v8 dateByAddingTimeInterval:1.0];
  v10 = [(AVTAvatarRecord *)v5 initWithAvatarData:v7 orderDate:v9];

  return v10;
}

@end