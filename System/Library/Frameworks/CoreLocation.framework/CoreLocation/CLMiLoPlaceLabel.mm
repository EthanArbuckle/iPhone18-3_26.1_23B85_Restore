@interface CLMiLoPlaceLabel
- (CLMiLoPlaceLabel)initWithCoder:(id)coder;
- (CLMiLoPlaceLabel)initWithPlaceIdentifier:(id)identifier placeAdditionalInformation:(id)information;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoPlaceLabel

- (CLMiLoPlaceLabel)initWithPlaceIdentifier:(id)identifier placeAdditionalInformation:(id)information
{
  v8.receiver = self;
  v8.super_class = CLMiLoPlaceLabel;
  v6 = [(CLMiLoPlaceLabel *)&v8 init];
  if (v6)
  {
    v6->_placeIdentifier = [identifier copy];
    v6->_placeAdditionalInformation = [information copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPlaceLabel;
  [(CLMiLoPlaceLabel *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  placeIdentifier = self->_placeIdentifier;
  placeAdditionalInformation = self->_placeAdditionalInformation;

  return MEMORY[0x1EEE66B58](v4, sel_initWithPlaceIdentifier_placeAdditionalInformation_);
}

- (CLMiLoPlaceLabel)initWithCoder:(id)coder
{
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyLocationPlaceIdentifier"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyLocationPlaceAdditionalInformation"];

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaceIdentifier_placeAdditionalInformation_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_placeIdentifier forKey:@"kCLMiLoConnectionCodingKeyLocationPlaceIdentifier"];
  placeAdditionalInformation = self->_placeAdditionalInformation;

  [coder encodeObject:placeAdditionalInformation forKey:@"kCLMiLoConnectionCodingKeyLocationPlaceAdditionalInformation"];
}

@end