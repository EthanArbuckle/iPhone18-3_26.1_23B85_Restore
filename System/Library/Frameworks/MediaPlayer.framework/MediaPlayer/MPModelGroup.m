@interface MPModelGroup
+ (void)__MPModelPropertyKeyGroupTitle__MAPPING_MISSING__;
- (id)humanDescription;
@end

@implementation MPModelGroup

- (id)humanDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(MPModelObject *)self identifiers];
  v5 = [v4 humanDescription];
  v6 = [v3 stringWithFormat:@"group %@", v5];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyKeyGroupTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MPModelGroup *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", v8];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyKeyGroupTitle__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGroup.m" lineNumber:38 description:@"Translator was missing mapping for MPModelPropertyKeyGroupTitle"];
}

@end