@interface CNSuggestedContactIdentifierPredicate
- (CNSuggestedContactIdentifierPredicate)initWithCoder:(id)a3;
- (CNSuggestedContactIdentifierPredicate)initWithSuggestionIdentifier:(unint64_t)a3;
- (NSString)description;
- (id)sgContactMatchesWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNSuggestedContactIdentifierPredicate

- (CNSuggestedContactIdentifierPredicate)initWithSuggestionIdentifier:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CNSuggestedContactIdentifierPredicate;
  v4 = [(CNPredicate *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_suggestionIdentifier = a3;
    v6 = v4;
  }

  return v5;
}

- (CNSuggestedContactIdentifierPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNSuggestedContactIdentifierPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_suggestionIdentifier = [v4 decodeInt64ForKey:@"_suggestionIdentifier"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNSuggestedContactIdentifierPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_suggestionIdentifier forKey:{@"_suggestionIdentifier", v5.receiver, v5.super_class}];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForSuggestionIdentifier:]"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CNSuggestedContactIdentifierPredicate suggestionIdentifier](self, "suggestionIdentifier")}];
  v6 = [v3 appendName:@"identifier" object:v5];

  v7 = [v3 build];

  return v7;
}

- (id)sgContactMatchesWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E6999288];
  v9 = a5;
  v10 = [v8 recordIdWithInternalEntityId:{-[CNSuggestedContactIdentifierPredicate suggestionIdentifier](self, "suggestionIdentifier")}];
  v11 = [v9 contactFromRecordID:v10 error:a6];

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