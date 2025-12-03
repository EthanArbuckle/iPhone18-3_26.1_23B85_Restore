@interface _EXExtensionIdentity(MKRemoteUIExtras)
+ (id)mkRemoteUIIdentity;
@end

@implementation _EXExtensionIdentity(MKRemoteUIExtras)

+ (id)mkRemoteUIIdentity
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6966CE0] extensionPointIdentifierQuery:@"com.apple.mapkit.private.RemoteUI"];
  v5[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  v2 = [MEMORY[0x1E6966CF8] executeQueries:v1];
  firstObject = [v2 firstObject];

  return firstObject;
}

@end