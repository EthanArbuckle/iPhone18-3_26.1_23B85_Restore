@interface MPModelPerson
+ (void)__MPModelPropertyPersonHasSocialPosts__MAPPING_MISSING__;
+ (void)__MPModelPropertyPersonName__MAPPING_MISSING__;
@end

@implementation MPModelPerson

+ (void)__MPModelPropertyPersonHasSocialPosts__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPerson.m" lineNumber:18 description:@"Translator was missing mapping for MPModelPropertyPersonHasSocialPosts"];
}

+ (void)__MPModelPropertyPersonName__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPerson.m" lineNumber:17 description:@"Translator was missing mapping for MPModelPropertyPersonName"];
}

@end