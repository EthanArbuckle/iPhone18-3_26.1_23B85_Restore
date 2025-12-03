@interface CLMiLoPlace
- (CLMiLoPlace)initWithCoder:(id)coder;
- (CLMiLoPlace)initWithPlaceIdentifier:(id)identifier score:(id)score confidence:(unint64_t)confidence placeMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoPlace

- (CLMiLoPlace)initWithPlaceIdentifier:(id)identifier score:(id)score confidence:(unint64_t)confidence placeMetadata:(id)metadata
{
  v12.receiver = self;
  v12.super_class = CLMiLoPlace;
  v10 = [(CLMiLoPlace *)&v12 init];
  if (v10)
  {
    v10->_identifier = [identifier copy];
    v10->_score = [score copy];
    v10->_confidence = confidence;
    v10->_metadata = metadata;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPlace;
  [(CLMiLoPlace *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  score = self->_score;
  confidence = self->_confidence;
  metadata = self->_metadata;

  return MEMORY[0x1EEE66B58](v4, sel_initWithPlaceIdentifier_score_confidence_placeMetadata_);
}

- (CLMiLoPlace)initWithCoder:(id)coder
{
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyMiLoPlaceIdenfifier"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPlaceScore"];
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyPlaceMetadata"];

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaceIdentifier_score_confidence_placeMetadata_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_identifier forKey:@"kCLMiLoConnectionCodingKeyMiLoPlaceIdenfifier"];
  [coder encodeObject:self->_score forKey:@"kCLMiLoConnectionCodingKeyPlaceScore"];
  [coder encodeInteger:self->_confidence forKey:@"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum"];
  metadata = self->_metadata;

  [coder encodeObject:metadata forKey:@"kCLMiLoConnectionCodingKeyPlaceMetadata"];
}

@end