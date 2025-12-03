@interface CLMiLoServicePredictionLocationSimilarityList
- (CLMiLoServicePredictionLocationSimilarityList)initWithCoder:(id)coder;
- (CLMiLoServicePredictionLocationSimilarityList)initWithPlaces:(id)places;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CLMiLoServicePredictionLocationSimilarityList

- (CLMiLoServicePredictionLocationSimilarityList)initWithPlaces:(id)places
{
  v6.receiver = self;
  v6.super_class = CLMiLoServicePredictionLocationSimilarityList;
  v4 = [(CLMiLoServicePredictionLocationSimilarityList *)&v6 init];
  if (v4)
  {
    v4->_places = places;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServicePredictionLocationSimilarityList;
  [(CLMiLoServicePredictionLocationSimilarityList *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  places = self->_places;

  return MEMORY[0x1EEE66B58](v4, sel_initWithPlaces_);
}

- (CLMiLoServicePredictionLocationSimilarityList)initWithCoder:(id)coder
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeySimilarityListPlaces"}];

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaces_);
}

@end