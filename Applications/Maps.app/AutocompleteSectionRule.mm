@interface AutocompleteSectionRule
+ (id)ruleExcludingSourceType:(int64_t)type sourceSubtype:(int64_t)subtype;
+ (id)ruleMatchingAnySourceType;
+ (id)ruleMatchingAnySourceTypeWithIndexInCompletionSections:(id)sections;
+ (id)ruleWithSourceType:(int64_t)type matchesAnySourceSubtype:(BOOL)subtype sourceSubtype:(int64_t)sourceSubtype indexInCompletionSections:(id)sections;
- (BOOL)matchesItemWithSourceType:(int64_t)type sourceSubtype:(int64_t)subtype indexInCompletionSections:(id)sections;
- (id)debugDescription;
- (id)initMatchingAnySourceType:(BOOL)type sourceType:(int64_t)sourceType matchesAnySourceSubtype:(BOOL)subtype sourceSubtype:(int64_t)sourceSubtype matchesAnyIndexInCompletionSections:(BOOL)sections indexInCompletionSections:(id)completionSections excludesAnySourceType:(BOOL)anySourceType excludedSourceType:(int64_t)self0 excludesAnySourceSubtype:(BOOL)self1 excludedSourceSubtype:(int64_t)self2;
@end

@implementation AutocompleteSectionRule

- (id)debugDescription
{
  sourceType = [(AutocompleteSectionRule *)self sourceType];
  sourceSubtype = [(AutocompleteSectionRule *)self sourceSubtype];
  indexInCompletionSections = [(AutocompleteSectionRule *)self indexInCompletionSections];
  v6 = [NSString stringWithFormat:@"Allow type:%ld subtype:%ld, indexInResponse:%@", sourceType, sourceSubtype, indexInCompletionSections];;

  return v6;
}

- (BOOL)matchesItemWithSourceType:(int64_t)type sourceSubtype:(int64_t)subtype indexInCompletionSections:(id)sections
{
  sectionsCopy = sections;
  if ([(AutocompleteSectionRule *)self excludesAnySourceType])
  {
    if (![(AutocompleteSectionRule *)self excludesAnySourceSubtype]|| [(AutocompleteSectionRule *)self excludedSourceType]!= type || [(AutocompleteSectionRule *)self excludedSourceSubtype]!= subtype)
    {
      v9 = [(AutocompleteSectionRule *)self excludedSourceType]!= type;
      goto LABEL_22;
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  if (![(AutocompleteSectionRule *)self matchesAnySourceType]&& [(AutocompleteSectionRule *)self sourceType]!= type || ![(AutocompleteSectionRule *)self matchesAnySourceSubtype]&& [(AutocompleteSectionRule *)self sourceSubtype]!= subtype)
  {
    goto LABEL_21;
  }

  if (![(AutocompleteSectionRule *)self matchesAnyIndexInCompletionSections])
  {
    indexInCompletionSections = [(AutocompleteSectionRule *)self indexInCompletionSections];
    v11 = indexInCompletionSections;
    if (!sectionsCopy && indexInCompletionSections)
    {

      goto LABEL_21;
    }

    indexInCompletionSections2 = [(AutocompleteSectionRule *)self indexInCompletionSections];

    if (sectionsCopy && !indexInCompletionSections2)
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
    indexInCompletionSections3 = [(AutocompleteSectionRule *)self indexInCompletionSections];

    v9 = 1;
    if (sectionsCopy && indexInCompletionSections3)
    {
      indexInCompletionSections4 = [(AutocompleteSectionRule *)self indexInCompletionSections];
      v9 = [indexInCompletionSections4 isEqualToNumber:sectionsCopy];
    }
  }

LABEL_22:

  return v9;
}

- (id)initMatchingAnySourceType:(BOOL)type sourceType:(int64_t)sourceType matchesAnySourceSubtype:(BOOL)subtype sourceSubtype:(int64_t)sourceSubtype matchesAnyIndexInCompletionSections:(BOOL)sections indexInCompletionSections:(id)completionSections excludesAnySourceType:(BOOL)anySourceType excludedSourceType:(int64_t)self0 excludesAnySourceSubtype:(BOOL)self1 excludedSourceSubtype:(int64_t)self2
{
  completionSectionsCopy = completionSections;
  v23.receiver = self;
  v23.super_class = AutocompleteSectionRule;
  v20 = [(AutocompleteSectionRule *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_matchesAnySourceType = type;
    v20->_matchesAnySourceSubtype = subtype;
    v20->_sourceType = sourceType;
    v20->_sourceSubtype = sourceSubtype;
    v20->_matchesAnyIndexInCompletionSections = sections;
    objc_storeStrong(&v20->_indexInCompletionSections, completionSections);
    v21->_excludesAnySourceType = anySourceType;
    v21->_excludesAnySourceSubtype = anySourceSubtype;
    v21->_excludedSourceType = excludedSourceType;
    v21->_excludedSourceSubtype = excludedSourceSubtype;
  }

  return v21;
}

+ (id)ruleExcludingSourceType:(int64_t)type sourceSubtype:(int64_t)subtype
{
  LOBYTE(v7) = subtype != 0;
  LOBYTE(v6) = 1;
  v4 = [[AutocompleteSectionRule alloc] initMatchingAnySourceType:0 sourceType:0 matchesAnySourceSubtype:0 sourceSubtype:0 matchesAnyIndexInCompletionSections:0 indexInCompletionSections:0 excludesAnySourceType:v6 excludedSourceType:type excludesAnySourceSubtype:v7 excludedSourceSubtype:subtype];

  return v4;
}

+ (id)ruleWithSourceType:(int64_t)type matchesAnySourceSubtype:(BOOL)subtype sourceSubtype:(int64_t)sourceSubtype indexInCompletionSections:(id)sections
{
  subtypeCopy = subtype;
  sectionsCopy = sections;
  LOBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  v10 = [[AutocompleteSectionRule alloc] initMatchingAnySourceType:0 sourceType:type matchesAnySourceSubtype:subtypeCopy sourceSubtype:sourceSubtype matchesAnyIndexInCompletionSections:0 indexInCompletionSections:sectionsCopy excludesAnySourceType:v12 excludedSourceType:0 excludesAnySourceSubtype:v13 excludedSourceSubtype:0];

  return v10;
}

+ (id)ruleMatchingAnySourceTypeWithIndexInCompletionSections:(id)sections
{
  sectionsCopy = sections;
  LOBYTE(v8) = 0;
  LOBYTE(v7) = 0;
  v5 = [[self alloc] initMatchingAnySourceType:1 sourceType:0 matchesAnySourceSubtype:1 sourceSubtype:0 matchesAnyIndexInCompletionSections:0 indexInCompletionSections:sectionsCopy excludesAnySourceType:v7 excludedSourceType:0 excludesAnySourceSubtype:v8 excludedSourceSubtype:0];

  return v5;
}

+ (id)ruleMatchingAnySourceType
{
  LOBYTE(v5) = 0;
  LOBYTE(v4) = 0;
  v2 = [[self alloc] initMatchingAnySourceType:1 sourceType:0 matchesAnySourceSubtype:1 sourceSubtype:0 matchesAnyIndexInCompletionSections:1 indexInCompletionSections:0 excludesAnySourceType:v4 excludedSourceType:0 excludesAnySourceSubtype:v5 excludedSourceSubtype:0];

  return v2;
}

@end