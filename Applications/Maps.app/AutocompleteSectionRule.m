@interface AutocompleteSectionRule
+ (id)ruleExcludingSourceType:(int64_t)a3 sourceSubtype:(int64_t)a4;
+ (id)ruleMatchingAnySourceType;
+ (id)ruleMatchingAnySourceTypeWithIndexInCompletionSections:(id)a3;
+ (id)ruleWithSourceType:(int64_t)a3 matchesAnySourceSubtype:(BOOL)a4 sourceSubtype:(int64_t)a5 indexInCompletionSections:(id)a6;
- (BOOL)matchesItemWithSourceType:(int64_t)a3 sourceSubtype:(int64_t)a4 indexInCompletionSections:(id)a5;
- (id)debugDescription;
- (id)initMatchingAnySourceType:(BOOL)a3 sourceType:(int64_t)a4 matchesAnySourceSubtype:(BOOL)a5 sourceSubtype:(int64_t)a6 matchesAnyIndexInCompletionSections:(BOOL)a7 indexInCompletionSections:(id)a8 excludesAnySourceType:(BOOL)a9 excludedSourceType:(int64_t)a10 excludesAnySourceSubtype:(BOOL)a11 excludedSourceSubtype:(int64_t)a12;
@end

@implementation AutocompleteSectionRule

- (id)debugDescription
{
  v3 = [(AutocompleteSectionRule *)self sourceType];
  v4 = [(AutocompleteSectionRule *)self sourceSubtype];
  v5 = [(AutocompleteSectionRule *)self indexInCompletionSections];
  v6 = [NSString stringWithFormat:@"Allow type:%ld subtype:%ld, indexInResponse:%@", v3, v4, v5];;

  return v6;
}

- (BOOL)matchesItemWithSourceType:(int64_t)a3 sourceSubtype:(int64_t)a4 indexInCompletionSections:(id)a5
{
  v8 = a5;
  if ([(AutocompleteSectionRule *)self excludesAnySourceType])
  {
    if (![(AutocompleteSectionRule *)self excludesAnySourceSubtype]|| [(AutocompleteSectionRule *)self excludedSourceType]!= a3 || [(AutocompleteSectionRule *)self excludedSourceSubtype]!= a4)
    {
      v9 = [(AutocompleteSectionRule *)self excludedSourceType]!= a3;
      goto LABEL_22;
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  if (![(AutocompleteSectionRule *)self matchesAnySourceType]&& [(AutocompleteSectionRule *)self sourceType]!= a3 || ![(AutocompleteSectionRule *)self matchesAnySourceSubtype]&& [(AutocompleteSectionRule *)self sourceSubtype]!= a4)
  {
    goto LABEL_21;
  }

  if (![(AutocompleteSectionRule *)self matchesAnyIndexInCompletionSections])
  {
    v10 = [(AutocompleteSectionRule *)self indexInCompletionSections];
    v11 = v10;
    if (!v8 && v10)
    {

      goto LABEL_21;
    }

    v14 = [(AutocompleteSectionRule *)self indexInCompletionSections];

    if (v8 && !v14)
    {
      goto LABEL_21;
    }
  }

  if ([(AutocompleteSectionRule *)self matchesAnyIndexInCompletionSections])
  {
    v9 = 1;
  }

  else
  {
    v12 = [(AutocompleteSectionRule *)self indexInCompletionSections];

    v9 = 1;
    if (v8 && v12)
    {
      v13 = [(AutocompleteSectionRule *)self indexInCompletionSections];
      v9 = [v13 isEqualToNumber:v8];
    }
  }

LABEL_22:

  return v9;
}

- (id)initMatchingAnySourceType:(BOOL)a3 sourceType:(int64_t)a4 matchesAnySourceSubtype:(BOOL)a5 sourceSubtype:(int64_t)a6 matchesAnyIndexInCompletionSections:(BOOL)a7 indexInCompletionSections:(id)a8 excludesAnySourceType:(BOOL)a9 excludedSourceType:(int64_t)a10 excludesAnySourceSubtype:(BOOL)a11 excludedSourceSubtype:(int64_t)a12
{
  v19 = a8;
  v23.receiver = self;
  v23.super_class = AutocompleteSectionRule;
  v20 = [(AutocompleteSectionRule *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_matchesAnySourceType = a3;
    v20->_matchesAnySourceSubtype = a5;
    v20->_sourceType = a4;
    v20->_sourceSubtype = a6;
    v20->_matchesAnyIndexInCompletionSections = a7;
    objc_storeStrong(&v20->_indexInCompletionSections, a8);
    v21->_excludesAnySourceType = a9;
    v21->_excludesAnySourceSubtype = a11;
    v21->_excludedSourceType = a10;
    v21->_excludedSourceSubtype = a12;
  }

  return v21;
}

+ (id)ruleExcludingSourceType:(int64_t)a3 sourceSubtype:(int64_t)a4
{
  LOBYTE(v7) = a4 != 0;
  LOBYTE(v6) = 1;
  v4 = [[AutocompleteSectionRule alloc] initMatchingAnySourceType:0 sourceType:0 matchesAnySourceSubtype:0 sourceSubtype:0 matchesAnyIndexInCompletionSections:0 indexInCompletionSections:0 excludesAnySourceType:v6 excludedSourceType:a3 excludesAnySourceSubtype:v7 excludedSourceSubtype:a4];

  return v4;
}

+ (id)ruleWithSourceType:(int64_t)a3 matchesAnySourceSubtype:(BOOL)a4 sourceSubtype:(int64_t)a5 indexInCompletionSections:(id)a6
{
  v7 = a4;
  v9 = a6;
  LOBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  v10 = [[AutocompleteSectionRule alloc] initMatchingAnySourceType:0 sourceType:a3 matchesAnySourceSubtype:v7 sourceSubtype:a5 matchesAnyIndexInCompletionSections:0 indexInCompletionSections:v9 excludesAnySourceType:v12 excludedSourceType:0 excludesAnySourceSubtype:v13 excludedSourceSubtype:0];

  return v10;
}

+ (id)ruleMatchingAnySourceTypeWithIndexInCompletionSections:(id)a3
{
  v4 = a3;
  LOBYTE(v8) = 0;
  LOBYTE(v7) = 0;
  v5 = [[a1 alloc] initMatchingAnySourceType:1 sourceType:0 matchesAnySourceSubtype:1 sourceSubtype:0 matchesAnyIndexInCompletionSections:0 indexInCompletionSections:v4 excludesAnySourceType:v7 excludedSourceType:0 excludesAnySourceSubtype:v8 excludedSourceSubtype:0];

  return v5;
}

+ (id)ruleMatchingAnySourceType
{
  LOBYTE(v5) = 0;
  LOBYTE(v4) = 0;
  v2 = [[a1 alloc] initMatchingAnySourceType:1 sourceType:0 matchesAnySourceSubtype:1 sourceSubtype:0 matchesAnyIndexInCompletionSections:1 indexInCompletionSections:0 excludesAnySourceType:v4 excludedSourceType:0 excludesAnySourceSubtype:v5 excludedSourceSubtype:0];

  return v2;
}

@end