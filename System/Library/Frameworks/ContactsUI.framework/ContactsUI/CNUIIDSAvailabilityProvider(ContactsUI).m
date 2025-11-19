@interface CNUIIDSAvailabilityProvider(ContactsUI)
+ (id)validateHandlesForFaceTime:()ContactsUI availabilityProvider:schedulerProvider:handler:;
+ (id)validateHandlesForIMessage:()ContactsUI availabilityProvider:schedulerProvider:handler:;
@end

@implementation CNUIIDSAvailabilityProvider(ContactsUI)

+ (id)validateHandlesForIMessage:()ContactsUI availabilityProvider:schedulerProvider:handler:
{
  v9 = a6;
  v10 = a5;
  v11 = [a4 validateHandlesForIMessage:a3 schedulerProvider:v10];
  v12 = [v10 mainThreadScheduler];

  v13 = [v11 observeOn:v12];

  v14 = MEMORY[0x1E69967A0];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __117__CNUIIDSAvailabilityProvider_ContactsUI__validateHandlesForIMessage_availabilityProvider_schedulerProvider_handler___block_invoke;
  v19[3] = &unk_1E74E5228;
  v20 = v9;
  v15 = v9;
  v16 = [v14 observerWithResultBlock:v19];
  v17 = [v13 subscribe:v16];

  return v17;
}

+ (id)validateHandlesForFaceTime:()ContactsUI availabilityProvider:schedulerProvider:handler:
{
  v9 = a6;
  v10 = a5;
  v11 = [a4 validateHandlesForFaceTime:a3 schedulerProvider:v10];
  v12 = [v10 mainThreadScheduler];

  v13 = [v11 observeOn:v12];

  v14 = MEMORY[0x1E69967A0];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __117__CNUIIDSAvailabilityProvider_ContactsUI__validateHandlesForFaceTime_availabilityProvider_schedulerProvider_handler___block_invoke;
  v19[3] = &unk_1E74E5228;
  v20 = v9;
  v15 = v9;
  v16 = [v14 observerWithResultBlock:v19];
  v17 = [v13 subscribe:v16];

  return v17;
}

@end