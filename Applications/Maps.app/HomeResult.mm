@interface HomeResult
- (BOOL)isCuratedCollectionSectionValid;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpiredAtDate:(id)date;
- (GEOExploreGuides)exploreGuides;
- (HomeResult)initWithResponseResult:(id)result responseDate:(id)date;
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
  _successValue = [(HomeResult *)self _successValue];
  sections = [_successValue sections];
  v4 = sub_100030774(sections, &stru_101654650);

  collectionSuggestionResult = [v4 collectionSuggestionResult];
  exploreGuides = [collectionSuggestionResult exploreGuides];

  return exploreGuides;
}

- (NSArray)curatedCollections
{
  _successValue = [(HomeResult *)self _successValue];
  sections = [_successValue sections];
  v4 = sub_100030774(sections, &stru_1016545F0);

  collectionSuggestionResult = [v4 collectionSuggestionResult];
  collections = [collectionSuggestionResult collections];
  v7 = sub_100021DB0(collections, &stru_101654630);

  return v7;
}

- (NSString)curatedCollectionSectionName
{
  _successValue = [(HomeResult *)self _successValue];
  sections = [_successValue sections];
  v4 = sub_100030774(sections, &stru_1016545D0);

  name = [v4 name];

  return name;
}

- (BOOL)isCuratedCollectionSectionValid
{
  curatedCollections = [(HomeResult *)self curatedCollections];
  if ([curatedCollections count])
  {
    curatedCollectionSectionName = [(HomeResult *)self curatedCollectionSectionName];
    v5 = [curatedCollectionSectionName length] != 0;
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

- (BOOL)isExpiredAtDate:(id)date
{
  dateCopy = date;
  expirationDate = [(HomeResult *)self expirationDate];
  [expirationDate timeIntervalSinceDate:dateCopy];
  v7 = v6;

  return v7 < 0.0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    responseResult = [(HomeResult *)v6 responseResult];
    v8 = responseResult;
    if (responseResult == self->_responseResult || [(Result *)responseResult isEqual:?])
    {
      responseDate = [(HomeResult *)v6 responseDate];
      v10 = responseDate;
      if (responseDate == self->_responseDate)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(NSDate *)responseDate isEqual:?];
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

- (HomeResult)initWithResponseResult:(id)result responseDate:(id)date
{
  resultCopy = result;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = HomeResult;
  v9 = [(HomeResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_responseResult, result);
    objc_storeStrong(&v10->_responseDate, date);
  }

  return v10;
}

@end