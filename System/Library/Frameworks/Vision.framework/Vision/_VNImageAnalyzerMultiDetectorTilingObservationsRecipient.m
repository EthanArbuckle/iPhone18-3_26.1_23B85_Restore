@interface _VNImageAnalyzerMultiDetectorTilingObservationsRecipient
- (_VNImageAnalyzerMultiDetectorTilingObservationsRecipient)initWithObservationsRecipient:(id)a3;
@end

@implementation _VNImageAnalyzerMultiDetectorTilingObservationsRecipient

- (_VNImageAnalyzerMultiDetectorTilingObservationsRecipient)initWithObservationsRecipient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _VNImageAnalyzerMultiDetectorTilingObservationsRecipient;
  v6 = [(_VNImageAnalyzerMultiDetectorTilingObservationsRecipient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observationsRecipient, a3);
  }

  return v7;
}

@end