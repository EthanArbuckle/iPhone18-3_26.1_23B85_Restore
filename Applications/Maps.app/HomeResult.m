@interface HomeResult
- (BOOL)isCuratedCollectionSectionValid;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpiredAtDate:(id)a3;
- (GEOExploreGuides)exploreGuides;
- (HomeResult)initWithResponseResult:(id)a3 responseDate:(id)a4;
- (NSArray)curatedCollections;
- (NSDate)expirationDate;
- (NSString)curatedCollectionSectionName;
- (id)_successValue;
@end

@implementation HomeResult

- (NSDate)expirationDate
{
  [self->_responseResult isSuccess];
  GEOConfigGetDouble();
  if (v3 <= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSDate *)self->_responseDate dateByAddingTimeInterval:?];
  }

  return v4;
}

- (GEOExploreGuides)exploreGuides
{
  v2 = [(HomeResult *)self _successValue];
  v3 = [v2 sections];
  v4 = sub_100030774(v3, &stru_101654650);

  v5 = [v4 collectionSuggestionResult];
  v6 = [v5 exploreGuides];

  return v6;
}

- (NSArray)curatedCollections
{
  v2 = [(HomeResult *)self _successValue];
  v3 = [v2 sections];
  v4 = sub_100030774(v3, &stru_1016545F0);

  v5 = [v4 collectionSuggestionResult];
  v6 = [v5 collections];
  v7 = sub_100021DB0(v6, &stru_101654630);

  return v7;
}

- (NSString)curatedCollectionSectionName
{
  v2 = [(HomeResult *)self _successValue];
  v3 = [v2 sections];
  v4 = sub_100030774(v3, &stru_1016545D0);

  v5 = [v4 name];

  return v5;
}

- (BOOL)isCuratedCollectionSectionValid
{
  v3 = [(HomeResult *)self curatedCollections];
  if ([v3 count])
  {
    v4 = [(HomeResult *)self curatedCollectionSectionName];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_successValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100DB5780;
  v10 = sub_100DB5790;
  v11 = 0;
  responseResult = self->_responseResult;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DB5798;
  v5[3] = &unk_101654570;
  v5[4] = &v6;
  [responseResult withValue:v5 orError:&stru_101654590];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isExpiredAtDate:(id)a3
{
  v4 = a3;
  v5 = [(HomeResult *)self expirationDate];
  [v5 timeIntervalSinceDate:v4];
  v7 = v6;

  return v7 < 0.0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(HomeResult *)v6 responseResult];
    v8 = v7;
    if (v7 == self->_responseResult || [(Result *)v7 isEqual:?])
    {
      v9 = [(HomeResult *)v6 responseDate];
      v10 = v9;
      if (v9 == self->_responseDate)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(NSDate *)v9 isEqual:?];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HomeResult)initWithResponseResult:(id)a3 responseDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HomeResult;
  v9 = [(HomeResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_responseResult, a3);
    objc_storeStrong(&v10->_responseDate, a4);
  }

  return v10;
}

@end