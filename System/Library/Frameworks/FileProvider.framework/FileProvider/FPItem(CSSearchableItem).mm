@interface FPItem(CSSearchableItem)
+ (void)fp_queryFetchAttributes;
- (void)toSearchableItem;
@end

@implementation FPItem(CSSearchableItem)

- (void)toSearchableItem
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFArrayRef _MDPropertyCreateUserTagStrings(CFIndex, __strong MDPropertyGetTagInfoBlock_t)"}];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:78 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)fp_queryFetchAttributes
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemFilename(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

@end