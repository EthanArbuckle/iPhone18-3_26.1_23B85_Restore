@interface FPQueryEnumerationSettings
+ (BOOL)supportsSecureCoding;
- (FPQueryEnumerationSettings)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FPQueryEnumerationSettings

- (FPQueryEnumerationSettings)init
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = FPQueryEnumerationSettings;
  v2 = [(FPEnumerationSettings *)&v8 init];
  if (v2)
  {
    identifier = [*MEMORY[0x1E6982E48] identifier];
    v9[0] = identifier;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    allowedFileTypes = v2->_allowedFileTypes;
    v2->_allowedFileTypes = v4;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (BOOL)supportsSecureCoding
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPEnumerationSettings.m" lineNumber:180 description:@"UNREACHABLE: this shouldn't need to go over XPC"];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = FPQueryEnumerationSettings;
  v4 = [(FPEnumerationSettings *)&v18 copyWithZone:zone];
  v5 = [(NSArray *)self->_allowedProviders copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(NSNumber *)self->_desiredNumberOfItems copy];
  v8 = v4[5];
  v4[5] = v7;

  v9 = [(NSArray *)self->_excludedFileTypes copy];
  v10 = v4[6];
  v4[6] = v9;

  v11 = [(NSArray *)self->_allowedFileTypes copy];
  v12 = v4[7];
  v4[7] = v11;

  v13 = [(NSString *)self->_tagIdentifier copy];
  v14 = v4[8];
  v4[8] = v13;

  v15 = [(NSArray *)self->_excludedParentOIDs copy];
  v16 = v4[9];
  v4[9] = v15;

  *(v4 + 24) = self->_allowSemanticSearchResults;
  return v4;
}

@end