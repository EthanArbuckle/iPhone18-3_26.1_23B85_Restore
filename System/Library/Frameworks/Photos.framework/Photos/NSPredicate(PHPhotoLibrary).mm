@interface NSPredicate(PHPhotoLibrary)
+ (id)predicateForCloudInvitationsInAssetCollection:()PHPhotoLibrary;
+ (id)predicateForCommentsInAsset:()PHPhotoLibrary;
+ (id)predicateForLikesInAsset:()PHPhotoLibrary;
@end

@implementation NSPredicate(PHPhotoLibrary)

+ (id)predicateForLikesInAsset:()PHPhotoLibrary
{
  v3 = MEMORY[0x1E696AE18];
  objectID = [a3 objectID];
  v5 = [v3 predicateWithFormat:@"likedPhoto = %@", objectID];

  return v5;
}

+ (id)predicateForCommentsInAsset:()PHPhotoLibrary
{
  v3 = MEMORY[0x1E696AE18];
  objectID = [a3 objectID];
  v5 = [v3 predicateWithFormat:@"commentedAsset = %@", objectID];

  return v5;
}

+ (id)predicateForCloudInvitationsInAssetCollection:()PHPhotoLibrary
{
  v3 = MEMORY[0x1E696AE18];
  objectID = [a3 objectID];
  v5 = [v3 predicateWithFormat:@"album = %@", objectID];

  return v5;
}

@end