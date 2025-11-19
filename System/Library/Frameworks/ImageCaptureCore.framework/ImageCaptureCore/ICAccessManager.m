@interface ICAccessManager
+ (BOOL)captureUserIntentForBundleIdentifier:(id)a3 withNotification:(id)a4;
+ (id)bundleIdentifiersAccessingExternalMediaDevices;
+ (id)bundleIdentifiersAccessingExternalMediaDevicesWithStatus;
+ (id)connection:(id)a3 stateForAccessType:(id)a4;
+ (id)internalAccessType:(unint64_t)a3;
+ (unint64_t)bundleIdentifier:(id)a3 stateForAccessType:(unint64_t)a4;
+ (void)addBundleIdentifier:(id)a3;
+ (void)revokeBundleIdentifier:(id)a3;
+ (void)updateBundleIdentifier:(id)a3 accessType:(unint64_t)a4 withState:(unint64_t)a5;
@end

@implementation ICAccessManager

+ (id)internalAccessType:(unint64_t)a3
{
  if (!a3)
  {
    v4 = MEMORY[0x1E69A8AC0];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x1E69A8AC8];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

+ (id)bundleIdentifiersAccessingExternalMediaDevices
{
  v2 = [MEMORY[0x1E69A8AE8] sharedAccessManager];
  v3 = [v2 bundleIdentifiersAccessingExternalCameras];

  return v3;
}

+ (id)bundleIdentifiersAccessingExternalMediaDevicesWithStatus
{
  v2 = [MEMORY[0x1E69A8AE8] sharedAccessManager];
  v3 = [v2 bundleIdentifiersAccessingExternalCamerasWithStatus];

  return v3;
}

+ (void)addBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69A8AE8];
  v4 = a3;
  v5 = [v3 sharedAccessManager];
  [v5 addBundleIdentifier:v4];
}

+ (unint64_t)bundleIdentifier:(id)a3 stateForAccessType:(unint64_t)a4
{
  v5 = a3;
  v6 = [ICAccessManager internalAccessType:a4];
  if (v6)
  {
    v7 = [MEMORY[0x1E69A8AE8] sharedAccessManager];
    v8 = [v7 bundleIdentifier:v5 stateForAccessType:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)connection:(id)a3 stateForAccessType:(id)a4
{
  v5 = a3;
  v6 = +[ICAccessManager internalAccessType:](ICAccessManager, "internalAccessType:", [a4 unsignedIntegerValue]);
  if (v6)
  {
    v7 = [MEMORY[0x1E69A8AE8] sharedAccessManager];
    v8 = [v7 connection:v5 stateForAccessType:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];

  return v9;
}

+ (void)updateBundleIdentifier:(id)a3 accessType:(unint64_t)a4 withState:(unint64_t)a5
{
  v9 = a3;
  v7 = [ICAccessManager internalAccessType:a4];
  if (v7)
  {
    v8 = [MEMORY[0x1E69A8AE8] sharedAccessManager];
    [v8 updateBundleIdentifier:v9 accessType:v7 withState:a5];
  }
}

+ (void)revokeBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69A8AE8];
  v4 = a3;
  v5 = [v3 sharedAccessManager];
  [v5 revokeBundleIdentifier:v4];
}

+ (BOOL)captureUserIntentForBundleIdentifier:(id)a3 withNotification:(id)a4
{
  v5 = MEMORY[0x1E69A8AE8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedAccessManager];
  v9 = [v8 captureUserIntentForBundleIdentifier:v7 withNotification:v6];

  return v9;
}

@end