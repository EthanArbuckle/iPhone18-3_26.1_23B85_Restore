@interface AKSignInWithAppleAvatarManager
+ (id)avatarImageForPrimaryAccountOwnerWithDiameter:(double)a3;
+ (id)avatarImageForUserHandle:(id)a3 diameter:(double)a4;
+ (id)placeholderAvatarImageForPrimaryAccountOwnerWithDiameter:(double)a3;
+ (void)avatarImageForPrimaryAccountOwnerWithDiameter:(double)a3 completion:(id)a4;
+ (void)avatarImageForUserHandle:(id)a3 diameter:(double)a4 completion:(id)a5;
@end

@implementation AKSignInWithAppleAvatarManager

+ (id)avatarImageForUserHandle:(id)a3 diameter:(double)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  if (AuthenticationServicesLibraryCore(0))
  {
    v4 = objc_alloc_init(get_ASAccountSharingGroupMemberDataManagerClass());
  }

  else
  {
    v4 = objc_alloc_init(0);
  }

  v9 = v4;
  v8 = [v4 avatarImageForUserHandle:location[0] diameter:v10];
  v6 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (void)avatarImageForUserHandle:(id)a3 diameter:(double)a4 completion:(id)a5
{
  v18 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v15 = 0;
  objc_storeStrong(&v15, a5);
  queue = dispatch_get_global_queue(25, 0);
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __79__AKSignInWithAppleAvatarManager_avatarImageForUserHandle_diameter_completion___block_invoke;
  v12 = &unk_2784A7E90;
  v14[1] = v18;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14[2] = *&v16;
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

+ (id)avatarImageForPrimaryAccountOwnerWithDiameter:(double)a3
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  if (AuthenticationServicesLibraryCore(0))
  {
    v3 = objc_alloc_init(get_ASAccountSharingGroupMemberDataManagerClass());
  }

  else
  {
    v3 = objc_alloc_init(0);
  }

  v7 = v3;
  v6 = [v3 avatarImageForPrimaryAccountOwnerWithDiameter:v8];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);

  return v5;
}

+ (id)placeholderAvatarImageForPrimaryAccountOwnerWithDiameter:(double)a3
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  if (AuthenticationServicesLibraryCore(0))
  {
    v3 = objc_alloc_init(get_ASAccountSharingGroupMemberDataManagerClass());
  }

  else
  {
    v3 = objc_alloc_init(0);
  }

  v7 = v3;
  v6 = [v3 placeholderAvatarImageWithDiameter:v8];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);

  return v5;
}

+ (void)avatarImageForPrimaryAccountOwnerWithDiameter:(double)a3 completion:(id)a4
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  queue = dispatch_get_global_queue(25, 0);
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __91__AKSignInWithAppleAvatarManager_avatarImageForPrimaryAccountOwnerWithDiameter_completion___block_invoke;
  v9 = &unk_2784A7EB8;
  v10[1] = v14;
  v10[2] = *&v12;
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