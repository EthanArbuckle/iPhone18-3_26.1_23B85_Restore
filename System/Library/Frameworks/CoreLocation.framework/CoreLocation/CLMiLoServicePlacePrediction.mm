@interface CLMiLoServicePlacePrediction
- (CLMiLoServicePlacePrediction)initWithCoder:(id)a3;
- (CLMiLoServicePlacePrediction)initWithPlaces:(id)a3 serviceType:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoServicePlacePrediction

- (CLMiLoServicePlacePrediction)initWithPlaces:(id)a3 serviceType:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = CLMiLoServicePlacePrediction;
  v6 = [(CLMiLoServicePlacePrediction *)&v8 init];
  if (v6)
  {
    v6->_places = a3;
    v6->_serviceType = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServicePlacePrediction;
  [(CLMiLoServicePlacePrediction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  places = self->_places;
  serviceType = self->_serviceType;

  return MEMORY[0x1EEE66B58](v4, sel_initWithPlaces_serviceType_);
}

- (CLMiLoServicePlacePrediction)initWithCoder:(id)a3
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyPlacePredictionPlaces"}];
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyPlacePredictionServiceType"];

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaces_serviceType_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_places forKey:@"kCLMiLoConnectionCodingKeyPlacePredictionPlaces"];
  serviceType = self->_serviceType;

  [a3 encodeInteger:serviceType forKey:@"kCLMiLoConnectionCodingKeyPlacePredictionServiceType"];
}

@end