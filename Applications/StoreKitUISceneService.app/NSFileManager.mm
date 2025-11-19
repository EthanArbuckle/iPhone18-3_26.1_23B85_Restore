@interface NSFileManager
- (BOOL)isSignedByAppleFileAtPath:(id)a3 basicCheck:(BOOL)a4;
@end

@implementation NSFileManager

- (BOOL)isSignedByAppleFileAtPath:(id)a3 basicCheck:(BOOL)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10 = sub_1000830B0(v6, v8, a4);

  return v10 & 1;
}

@end