@interface AMLRawSignalsDonation
- (AMLRawSignalsConfiguration)rawSignalsConfiguration;
- (id)donateRawSignals:(id)a3 metadata:(id)a4 completionBlock:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setRawSignalsConfiguration:(id)a3;
@end

@implementation AMLRawSignalsDonation

- (AMLRawSignalsConfiguration)rawSignalsConfiguration
{
  v2 = sub_21AF02278();

  return v2;
}

- (void)setRawSignalsConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AF022E0(v4);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AMLRawSignalsDonation.encode(with:)(v4);
}

- (id)donateRawSignals:(id)a3 metadata:(id)a4 completionBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_21AEB390C;
  }

  swift_unknownObjectRetain();
  v9 = a4;
  v10 = self;
  v11 = sub_21AF02C44(a3);
  sub_21AE9678C(v8);
  swift_unknownObjectRelease();

  return v11;
}

@end