@interface CNSuggestedContactIdentifierPredicate
- (CNSuggestedContactIdentifierPredicate)initWithCoder:(id)coder;
- (CNSuggestedContactIdentifierPredicate)initWithSuggestionIdentifier:(unint64_t)identifier;
- (NSString)description;
- (id)sgContactMatchesWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNSuggestedContactIdentifierPredicate

- (CNSuggestedContactIdentifierPredicate)initWithSuggestionIdentifier:(unint64_t)identifier
{
  v8.receiver = self;
  v8.super_class = CNSuggestedContactIdentifierPredicate;
  v4 = [(CNPredicate *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_suggestionIdentifier = identifier;
    v6 = v4;
  }

  return v5;
}

- (CNSuggestedContactIdentifierPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CNSuggestedContactIdentifierPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_suggestionIdentifier = [coderCopy decodeInt64ForKey:@"_suggestionIdentifier"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNSuggestedContactIdentifierPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_suggestionIdentifier forKey:{@"_suggestionIdentifier", v5.receiver, v5.super_class}];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForSuggestionIdentifier:]"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CNSuggestedContactIdentifierPredicate suggestionIdentifier](self, "suggestionIdentifier")}];
  v6 = [v3 appendName:@"identifier" object:v5];

  build = [v3 build];

  return build;
}

- (id)sgContactMatchesWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E6999288];
  serviceCopy = service;
  v10 = [v8 recordIdWithInternalEntityId:{-[CNSuggestedContactIdentifierPredicate suggestionIdentifier](self, "suggestionIdentifier")}];
  v11 = [serviceCopy contactFromRecordID:v10 error:error];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E69991F8]);
    v13 = [v12 initWithContact:v11 matchTokens:MEMORY[0x1E695E0F0] matchInfo:MEMORY[0x1E695E0F0]];
    v16[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end