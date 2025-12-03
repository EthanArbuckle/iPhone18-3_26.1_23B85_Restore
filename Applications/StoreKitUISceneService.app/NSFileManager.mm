@interface NSFileManager
- (BOOL)isSignedByAppleFileAtPath:(id)path basicCheck:(BOOL)check;
@end

@implementation NSFileManager

- (BOOL)isSignedByAppleFileAtPath:(id)path basicCheck:(BOOL)check
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10 = sub_1000830B0(v6, v8, check);

  return v10 & 1;
}

@end