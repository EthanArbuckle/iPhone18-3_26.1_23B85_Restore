@interface _VNImageAnalyzerMultiDetectorTilingObservationsRecipient
- (_VNImageAnalyzerMultiDetectorTilingObservationsRecipient)initWithObservationsRecipient:(id)recipient;
@end

@implementation _VNImageAnalyzerMultiDetectorTilingObservationsRecipient

- (_VNImageAnalyzerMultiDetectorTilingObservationsRecipient)initWithObservationsRecipient:(id)recipient
{
  recipientCopy = recipient;
  v9.receiver = self;
  v9.super_class = _VNImageAnalyzerMultiDetectorTilingObservationsRecipient;
  v6 = [(_VNImageAnalyzerMultiDetectorTilingObservationsRecipient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observationsRecipient, recipient);
  }

  return v7;
}

@end