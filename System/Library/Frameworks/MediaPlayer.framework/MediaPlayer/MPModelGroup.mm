@interface MPModelGroup
+ (void)__MPModelPropertyKeyGroupTitle__MAPPING_MISSING__;
- (id)humanDescription;
@end

@implementation MPModelGroup

- (id)humanDescription
{
  v3 = MEMORY[0x1E696AD60];
  identifiers = [(MPModelObject *)self identifiers];
  humanDescription = [identifiers humanDescription];
  v6 = [v3 stringWithFormat:@"group %@", humanDescription];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyKeyGroupTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    title = [(MPModelGroup *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", title];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyKeyGroupTitle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelGroup.m" lineNumber:38 description:@"Translator was missing mapping for MPModelPropertyKeyGroupTitle"];
}

@end