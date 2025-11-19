@interface CLMiLoPlace
- (CLMiLoPlace)initWithCoder:(id)a3;
- (CLMiLoPlace)initWithPlaceIdentifier:(id)a3 score:(id)a4 confidence:(unint64_t)a5 placeMetadata:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoPlace

- (CLMiLoPlace)initWithPlaceIdentifier:(id)a3 score:(id)a4 confidence:(unint64_t)a5 placeMetadata:(id)a6
{
  v12.receiver = self;
  v12.super_class = CLMiLoPlace;
  v10 = [(CLMiLoPlace *)&v12 init];
  if (v10)
  {
    v10->_identifier = [a3 copy];
    v10->_score = [a4 copy];
    v10->_confidence = a5;
    v10->_metadata = a6;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPlace;
  [(CLMiLoPlace *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  score = self->_score;
  confidence = self->_confidence;
  metadata = self->_metadata;

  return MEMORY[0x1EEE66B58](v4, sel_initWithPlaceIdentifier_score_confidence_placeMetadata_);
}

- (CLMiLoPlace)initWithCoder:(id)a3
{
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyMiLoPlaceIdenfifier"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPlaceScore"];
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPlaceMetadata"];

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaceIdentifier_score_confidence_placeMetadata_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_identifier forKey:@"kCLMiLoConnectionCodingKeyMiLoPlaceIdenfifier"];
  [a3 encodeObject:self->_score forKey:@"kCLMiLoConnectionCodingKeyPlaceScore"];
  [a3 encodeInteger:self->_confidence forKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum"];
  metadata = self->_metadata;

  [a3 encodeObject:metadata forKey:@"kCLMiLoConnectionCodingKeyPlaceMetadata"];
}

@end