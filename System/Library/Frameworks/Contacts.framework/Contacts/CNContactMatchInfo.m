@interface CNContactMatchInfo
- (CNContactMatchInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactMatchInfo

- (CNContactMatchInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CNContactMatchInfo;
  v5 = [(CNContactMatchInfo *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_relevanceScore"];
    v7 = [v6 copy];
    relevanceScore = v5->_relevanceScore;
    v5->_relevanceScore = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_matchedProperties"];
    v14 = [v13 copy];
    matchedProperties = v5->_matchedProperties;
    v5->_matchedProperties = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_excerpt"];
    v17 = [v16 copy];
    excerpt = v5->_excerpt;
    v5->_excerpt = v17;

    v5->_matchedNameProperty = [v4 decodeBoolForKey:@"_matchedNameProperty"];
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"_matchedTerms"];
    v23 = [v22 copy];
    matchedTerms = v5->_matchedTerms;
    v5->_matchedTerms = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  relevanceScore = self->_relevanceScore;
  v5 = a3;
  [v5 encodeObject:relevanceScore forKey:@"_relevanceScore"];
  [v5 encodeObject:self->_matchedProperties forKey:@"_matchedProperties"];
  [v5 encodeObject:self->_excerpt forKey:@"_excerpt"];
  [v5 encodeObject:self->_matchedTerms forKey:@"_matchedTerms"];
  [v5 encodeBool:self->_matchedNameProperty forKey:@"_matchedNameProperty"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CNContactMatchInfo);
  v5 = [(CNContactMatchInfo *)self excerpt];
  v6 = [v5 copy];
  [(CNContactMatchInfo *)v4 setExcerpt:v6];

  v7 = [(CNContactMatchInfo *)self relevanceScore];
  [(CNContactMatchInfo *)v4 setRelevanceScore:v7];

  v8 = [(CNContactMatchInfo *)self matchedProperties];
  v9 = [v8 copy];
  [(CNContactMatchInfo *)v4 setMatchedProperties:v9];

  v10 = [(CNContactMatchInfo *)self matchedTerms];
  v11 = [v10 copy];
  [(CNContactMatchInfo *)v4 setMatchedTerms:v11];

  [(CNContactMatchInfo *)v4 setMatchedNameProperty:[(CNContactMatchInfo *)self matchedNameProperty]];
  return v4;
}

@end