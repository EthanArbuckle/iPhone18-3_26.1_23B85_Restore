@interface CRLShapeSearchResult
- (BOOL)isEqual:(id)equal;
- (CRLShapeSearchResult)initWithIdentifier:(id)identifier matchingKeyword:(id)keyword priority:(unint64_t)priority score:(id)score;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRLShapeSearchResult

- (unint64_t)hash
{
  v6 = [self->_identifier hash];
  v3 = sub_100083B3C(&v6, 8, 0xCBF29CE484222325);
  v5 = [(NSString *)self->_matchingKeyword hash];
  return sub_100083B3C(&v5, 8, v3);
}

- (CRLShapeSearchResult)initWithIdentifier:(id)identifier matchingKeyword:(id)keyword priority:(unint64_t)priority score:(id)score
{
  identifierCopy = identifier;
  keywordCopy = keyword;
  scoreCopy = score;
  v19.receiver = self;
  v19.super_class = CRLShapeSearchResult;
  v14 = [(CRLShapeSearchResult *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    v16 = [keywordCopy copy];
    matchingKeyword = v15->_matchingKeyword;
    v15->_matchingKeyword = v16;

    v15->_priority = priority;
    objc_storeStrong(&v15->_score, score);
  }

  return v15;
}

- (id)description
{
  v3 = objc_opt_class();
  identifier = [(CRLShapeSearchResult *)self identifier];
  matchingKeyword = [(CRLShapeSearchResult *)self matchingKeyword];
  priority = [(CRLShapeSearchResult *)self priority];
  score = [(CRLShapeSearchResult *)self score];
  v8 = [NSString stringWithFormat:@"<%@: %p identifier=%@ matchingKeyword=%@ priority=%lu score=%@>", v3, self, identifier, matchingKeyword, priority, score];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  identifier = [(CRLShapeSearchResult *)self identifier];
  identifier2 = [v6 identifier];
  if ([identifier isEqual:identifier2])
  {
    matchingKeyword = [(CRLShapeSearchResult *)self matchingKeyword];
    matchingKeyword2 = [v6 matchingKeyword];
    v11 = [matchingKeyword isEqual:matchingKeyword2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end