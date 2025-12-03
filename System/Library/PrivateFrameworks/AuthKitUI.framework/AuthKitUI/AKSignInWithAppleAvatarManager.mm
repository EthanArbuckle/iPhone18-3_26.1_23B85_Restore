@interface AKSignInWithAppleAvatarManager
+ (id)avatarImageForPrimaryAccountOwnerWithDiameter:(double)diameter;
+ (id)avatarImageForUserHandle:(id)handle diameter:(double)diameter;
+ (id)placeholderAvatarImageForPrimaryAccountOwnerWithDiameter:(double)diameter;
+ (void)avatarImageForPrimaryAccountOwnerWithDiameter:(double)diameter completion:(id)completion;
+ (void)avatarImageForUserHandle:(id)handle diameter:(double)diameter completion:(id)completion;
@end

@implementation AKSignInWithAppleAvatarManager

+ (id)avatarImageForUserHandle:(id)handle diameter:(double)diameter
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handle);
  diameterCopy = diameter;
  if (AuthenticationServicesLibraryCore(0))
  {
    v4 = objc_alloc_init(get_ASAccountSharingGroupMemberDataManagerClass());
  }

  else
  {
    v4 = objc_alloc_init(0);
  }

  v9 = v4;
  v8 = [v4 avatarImageForUserHandle:location[0] diameter:diameterCopy];
  v6 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (void)avatarImageForUserHandle:(id)handle diameter:(double)diameter completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handle);
  diameterCopy = diameter;
  v15 = 0;
  objc_storeStrong(&v15, completion);
  queue = dispatch_get_global_queue(25, 0);
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __79__AKSignInWithAppleAvatarManager_avatarImageForUserHandle_diameter_completion___block_invoke;
  v12 = &unk_2784A7E90;
  v14[1] = selfCopy;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14[2] = *&diameterCopy;
  v14[0] = MEMORY[0x277D82BE0](v15);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __79__AKSignInWithAppleAvatarManager_avatarImageForUserHandle_diameter_completion___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 48) avatarImageForUserHandle:*(a1 + 32) diameter:*(a1 + 56)];
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(v2, 0);
}

+ (id)avatarImageForPrimaryAccountOwnerWithDiameter:(double)diameter
{
  selfCopy = self;
  v9 = a2;
  diameterCopy = diameter;
  if (AuthenticationServicesLibraryCore(0))
  {
    v3 = objc_alloc_init(get_ASAccountSharingGroupMemberDataManagerClass());
  }

  else
  {
    v3 = objc_alloc_init(0);
  }

  v7 = v3;
  v6 = [v3 avatarImageForPrimaryAccountOwnerWithDiameter:diameterCopy];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);

  return v5;
}

+ (id)placeholderAvatarImageForPrimaryAccountOwnerWithDiameter:(double)diameter
{
  selfCopy = self;
  v9 = a2;
  diameterCopy = diameter;
  if (AuthenticationServicesLibraryCore(0))
  {
    v3 = objc_alloc_init(get_ASAccountSharingGroupMemberDataManagerClass());
  }

  else
  {
    v3 = objc_alloc_init(0);
  }

  v7 = v3;
  v6 = [v3 placeholderAvatarImageWithDiameter:diameterCopy];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);

  return v5;
}

+ (void)avatarImageForPrimaryAccountOwnerWithDiameter:(double)diameter completion:(id)completion
{
  selfCopy = self;
  v13 = a2;
  diameterCopy = diameter;
  location = 0;
  objc_storeStrong(&location, completion);
  queue = dispatch_get_global_queue(25, 0);
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __91__AKSignInWithAppleAvatarManager_avatarImageForPrimaryAccountOwnerWithDiameter_completion___block_invoke;
  v9 = &unk_2784A7EB8;
  v10[1] = selfCopy;
  v10[2] = *&diameterCopy;
  v10[0] = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&location, 0);
}

void __91__AKSignInWithAppleAvatarManager_avatarImageForPrimaryAccountOwnerWithDiameter_completion___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 40) avatarImageForPrimaryAccountOwnerWithDiameter:*(a1 + 48)];
  (*(*(a1 + 32) + 16))();
  objc_storeStrong(v2, 0);
}

@end