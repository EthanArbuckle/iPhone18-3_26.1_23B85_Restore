@interface CRLShapeSearchResult
- (BOOL)isEqual:(id)a3;
- (CRLShapeSearchResult)initWithIdentifier:(id)a3 matchingKeyword:(id)a4 priority:(unint64_t)a5 score:(id)a6;
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

- (CRLShapeSearchResult)initWithIdentifier:(id)a3 matchingKeyword:(id)a4 priority:(unint64_t)a5 score:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = CRLShapeSearchResult;
  v14 = [(CRLShapeSearchResult *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, a3);
    v16 = [v12 copy];
    matchingKeyword = v15->_matchingKeyword;
    v15->_matchingKeyword = v16;

    v15->_priority = a5;
    objc_storeStrong(&v15->_score, a6);
  }

  return v15;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(CRLShapeSearchResult *)self identifier];
  v5 = [(CRLShapeSearchResult *)self matchingKeyword];
  v6 = [(CRLShapeSearchResult *)self priority];
  v7 = [(CRLShapeSearchResult *)self score];
  v8 = [NSString stringWithFormat:@"<%@: %p identifier=%@ matchingKeyword=%@ priority=%lu score=%@>", v3, self, v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  v7 = [(CRLShapeSearchResult *)self identifier];
  v8 = [v6 identifier];
  if ([v7 isEqual:v8])
  {
    v9 = [(CRLShapeSearchResult *)self matchingKeyword];
    v10 = [v6 matchingKeyword];
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end