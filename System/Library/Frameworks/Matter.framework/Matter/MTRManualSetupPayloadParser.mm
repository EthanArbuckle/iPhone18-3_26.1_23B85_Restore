@interface MTRManualSetupPayloadParser
- (MTRManualSetupPayloadParser)initWithDecimalStringRepresentation:(NSString *)decimalStringRepresentation;
- (MTRSetupPayload)populatePayload:(NSError *)error;
@end

@implementation MTRManualSetupPayloadParser

- (MTRManualSetupPayloadParser)initWithDecimalStringRepresentation:(NSString *)decimalStringRepresentation
{
  v4 = decimalStringRepresentation;
  v8.receiver = self;
  v8.super_class = MTRManualSetupPayloadParser;
  v5 = [(MTRManualSetupPayloadParser *)&v8 init];
  v6 = v5->_decimalStringRepresentation;
  v5->_decimalStringRepresentation = v4;

  return v5;
}

- (MTRSetupPayload)populatePayload:(NSError *)error
{
  v4 = sub_2392E026C([MTRSetupPayload alloc], self->_decimalStringRepresentation);
  v5 = v4;
  if (error && !v4)
  {
    *error = [MTRError errorWithCode:4];
  }

  return v5;
}

@end