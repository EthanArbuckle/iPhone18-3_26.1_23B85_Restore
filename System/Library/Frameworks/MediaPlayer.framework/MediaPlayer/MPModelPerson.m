@interface MPModelPerson
+ (void)__MPModelPropertyPersonHasSocialPosts__MAPPING_MISSING__;
+ (void)__MPModelPropertyPersonName__MAPPING_MISSING__;
@end

@implementation MPModelPerson

+ (void)__MPModelPropertyPersonHasSocialPosts__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPerson.m" lineNumber:18 description:@"Translator was missing mapping for MPModelPropertyPersonHasSocialPosts"];
}

+ (void)__MPModelPropertyPersonName__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPerson.m" lineNumber:17 description:@"Translator was missing mapping for MPModelPropertyPersonName"];
}

@end