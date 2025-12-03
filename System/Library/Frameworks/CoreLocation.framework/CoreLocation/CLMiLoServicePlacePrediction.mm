@interface CLMiLoServicePlacePrediction
- (CLMiLoServicePlacePrediction)initWithCoder:(id)coder;
- (CLMiLoServicePlacePrediction)initWithPlaces:(id)places serviceType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoServicePlacePrediction

- (CLMiLoServicePlacePrediction)initWithPlaces:(id)places serviceType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = CLMiLoServicePlacePrediction;
  v6 = [(CLMiLoServicePlacePrediction *)&v8 init];
  if (v6)
  {
    v6->_places = places;
    v6->_serviceType = type;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServicePlacePrediction;
  [(CLMiLoServicePlacePrediction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  places = self->_places;
  serviceType = self->_serviceType;

  return MEMORY[0x1EEE66B58](v4, sel_initWithPlaces_serviceType_);
}

- (CLMiLoServicePlacePrediction)initWithCoder:(id)coder
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyPlacePredictionPlaces"}];
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyPlacePredictionServiceType"];

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaces_serviceType_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_places forKey:@"kCLMiLoConnectionCodingKeyPlacePredictionPlaces"];
  serviceType = self->_serviceType;

  [coder encodeInteger:serviceType forKey:@"kCLMiLoConnectionCodingKeyPlacePredictionServiceType"];
}

@end