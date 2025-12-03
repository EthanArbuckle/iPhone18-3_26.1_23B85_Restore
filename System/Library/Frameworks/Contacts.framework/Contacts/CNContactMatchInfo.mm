@interface CNContactMatchInfo
- (CNContactMatchInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactMatchInfo

- (CNContactMatchInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = CNContactMatchInfo;
  v5 = [(CNContactMatchInfo *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_relevanceScore"];
    v7 = [v6 copy];
    relevanceScore = v5->_relevanceScore;
    v5->_relevanceScore = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_matchedProperties"];
    v14 = [v13 copy];
    matchedProperties = v5->_matchedProperties;
    v5->_matchedProperties = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_excerpt"];
    v17 = [v16 copy];
    excerpt = v5->_excerpt;
    v5->_excerpt = v17;

    v5->_matchedNameProperty = [coderCopy decodeBoolForKey:@"_matchedNameProperty"];
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"_matchedTerms"];
    v23 = [v22 copy];
    matchedTerms = v5->_matchedTerms;
    v5->_matchedTerms = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  relevanceScore = self->_relevanceScore;
  coderCopy = coder;
  [coderCopy encodeObject:relevanceScore forKey:@"_relevanceScore"];
  [coderCopy encodeObject:self->_matchedProperties forKey:@"_matchedProperties"];
  [coderCopy encodeObject:self->_excerpt forKey:@"_excerpt"];
  [coderCopy encodeObject:self->_matchedTerms forKey:@"_matchedTerms"];
  [coderCopy encodeBool:self->_matchedNameProperty forKey:@"_matchedNameProperty"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CNContactMatchInfo);
  excerpt = [(CNContactMatchInfo *)self excerpt];
  v6 = [excerpt copy];
  [(CNContactMatchInfo *)v4 setExcerpt:v6];

  relevanceScore = [(CNContactMatchInfo *)self relevanceScore];
  [(CNContactMatchInfo *)v4 setRelevanceScore:relevanceScore];

  matchedProperties = [(CNContactMatchInfo *)self matchedProperties];
  v9 = [matchedProperties copy];
  [(CNContactMatchInfo *)v4 setMatchedProperties:v9];

  matchedTerms = [(CNContactMatchInfo *)self matchedTerms];
  v11 = [matchedTerms copy];
  [(CNContactMatchInfo *)v4 setMatchedTerms:v11];

  [(CNContactMatchInfo *)v4 setMatchedNameProperty:[(CNContactMatchInfo *)self matchedNameProperty]];
  return v4;
}

@end