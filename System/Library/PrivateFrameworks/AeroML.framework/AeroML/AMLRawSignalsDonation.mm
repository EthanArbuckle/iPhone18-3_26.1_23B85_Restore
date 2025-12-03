@interface AMLRawSignalsDonation
- (AMLRawSignalsConfiguration)rawSignalsConfiguration;
- (id)donateRawSignals:(id)signals metadata:(id)metadata completionBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)setRawSignalsConfiguration:(id)configuration;
@end

@implementation AMLRawSignalsDonation

- (AMLRawSignalsConfiguration)rawSignalsConfiguration
{
  v2 = sub_21AF02278();

  return v2;
}

- (void)setRawSignalsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_21AF022E0(configurationCopy);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AMLRawSignalsDonation.encode(with:)(coderCopy);
}

- (id)donateRawSignals:(id)signals metadata:(id)metadata completionBlock:(id)block
{
  v8 = _Block_copy(block);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_21AEB390C;
  }

  swift_unknownObjectRetain();
  metadataCopy = metadata;
  selfCopy = self;
  v11 = sub_21AF02C44(signals);
  sub_21AE9678C(v8);
  swift_unknownObjectRelease();

  return v11;
}

@end