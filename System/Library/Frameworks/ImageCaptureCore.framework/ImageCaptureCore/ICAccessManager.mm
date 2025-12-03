@interface ICAccessManager
+ (BOOL)captureUserIntentForBundleIdentifier:(id)identifier withNotification:(id)notification;
+ (id)bundleIdentifiersAccessingExternalMediaDevices;
+ (id)bundleIdentifiersAccessingExternalMediaDevicesWithStatus;
+ (id)connection:(id)connection stateForAccessType:(id)type;
+ (id)internalAccessType:(unint64_t)type;
+ (unint64_t)bundleIdentifier:(id)identifier stateForAccessType:(unint64_t)type;
+ (void)addBundleIdentifier:(id)identifier;
+ (void)revokeBundleIdentifier:(id)identifier;
+ (void)updateBundleIdentifier:(id)identifier accessType:(unint64_t)type withState:(unint64_t)state;
@end

@implementation ICAccessManager

+ (id)internalAccessType:(unint64_t)type
{
  if (!type)
  {
    v4 = MEMORY[0x1E69A8AC0];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (type == 1)
  {
    v4 = MEMORY[0x1E69A8AC8];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

+ (id)bundleIdentifiersAccessingExternalMediaDevices
{
  mEMORY[0x1E69A8AE8] = [MEMORY[0x1E69A8AE8] sharedAccessManager];
  bundleIdentifiersAccessingExternalCameras = [mEMORY[0x1E69A8AE8] bundleIdentifiersAccessingExternalCameras];

  return bundleIdentifiersAccessingExternalCameras;
}

+ (id)bundleIdentifiersAccessingExternalMediaDevicesWithStatus
{
  mEMORY[0x1E69A8AE8] = [MEMORY[0x1E69A8AE8] sharedAccessManager];
  bundleIdentifiersAccessingExternalCamerasWithStatus = [mEMORY[0x1E69A8AE8] bundleIdentifiersAccessingExternalCamerasWithStatus];

  return bundleIdentifiersAccessingExternalCamerasWithStatus;
}

+ (void)addBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69A8AE8];
  identifierCopy = identifier;
  sharedAccessManager = [v3 sharedAccessManager];
  [sharedAccessManager addBundleIdentifier:identifierCopy];
}

+ (unint64_t)bundleIdentifier:(id)identifier stateForAccessType:(unint64_t)type
{
  identifierCopy = identifier;
  v6 = [ICAccessManager internalAccessType:type];
  if (v6)
  {
    mEMORY[0x1E69A8AE8] = [MEMORY[0x1E69A8AE8] sharedAccessManager];
    v8 = [mEMORY[0x1E69A8AE8] bundleIdentifier:identifierCopy stateForAccessType:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)connection:(id)connection stateForAccessType:(id)type
{
  connectionCopy = connection;
  v6 = +[ICAccessManager internalAccessType:](ICAccessManager, "internalAccessType:", [type unsignedIntegerValue]);
  if (v6)
  {
    mEMORY[0x1E69A8AE8] = [MEMORY[0x1E69A8AE8] sharedAccessManager];
    v8 = [mEMORY[0x1E69A8AE8] connection:connectionCopy stateForAccessType:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];

  return v9;
}

+ (void)updateBundleIdentifier:(id)identifier accessType:(unint64_t)type withState:(unint64_t)state
{
  identifierCopy = identifier;
  v7 = [ICAccessManager internalAccessType:type];
  if (v7)
  {
    mEMORY[0x1E69A8AE8] = [MEMORY[0x1E69A8AE8] sharedAccessManager];
    [mEMORY[0x1E69A8AE8] updateBundleIdentifier:identifierCopy accessType:v7 withState:state];
  }
}

+ (void)revokeBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69A8AE8];
  identifierCopy = identifier;
  sharedAccessManager = [v3 sharedAccessManager];
  [sharedAccessManager revokeBundleIdentifier:identifierCopy];
}

+ (BOOL)captureUserIntentForBundleIdentifier:(id)identifier withNotification:(id)notification
{
  v5 = MEMORY[0x1E69A8AE8];
  notificationCopy = notification;
  identifierCopy = identifier;
  sharedAccessManager = [v5 sharedAccessManager];
  v9 = [sharedAccessManager captureUserIntentForBundleIdentifier:identifierCopy withNotification:notificationCopy];

  return v9;
}

@end