@interface CLMiLoPlaceLabel
- (CLMiLoPlaceLabel)initWithCoder:(id)a3;
- (CLMiLoPlaceLabel)initWithPlaceIdentifier:(id)a3 placeAdditionalInformation:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoPlaceLabel

- (CLMiLoPlaceLabel)initWithPlaceIdentifier:(id)a3 placeAdditionalInformation:(id)a4
{
  v8.receiver = self;
  v8.super_class = CLMiLoPlaceLabel;
  v6 = [(CLMiLoPlaceLabel *)&v8 init];
  if (v6)
  {
    v6->_placeIdentifier = [a3 copy];
    v6->_placeAdditionalInformation = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPlaceLabel;
  [(CLMiLoPlaceLabel *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  placeIdentifier = self->_placeIdentifier;
  placeAdditionalInformation = self->_placeAdditionalInformation;

  return MEMORY[0x1EEE66B58](v4, sel_initWithPlaceIdentifier_placeAdditionalInformation_);
}

- (CLMiLoPlaceLabel)initWithCoder:(id)a3
{
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyLocationPlaceIdentifier"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyLocationPlaceAdditionalInformation"];

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaceIdentifier_placeAdditionalInformation_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_placeIdentifier forKey:@"kCLMiLoConnectionCodingKeyLocationPlaceIdentifier"];
  placeAdditionalInformation = self->_placeAdditionalInformation;

  [a3 encodeObject:placeAdditionalInformation forKey:@"kCLMiLoConnectionCodingKeyLocationPlaceAdditionalInformation"];
}

@end