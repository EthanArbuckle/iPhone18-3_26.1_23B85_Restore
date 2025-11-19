@interface ADJasperPearlTelemetryData
- (ADJasperPearlTelemetryData)init;
@end

@implementation ADJasperPearlTelemetryData

- (ADJasperPearlTelemetryData)init
{
  v5.receiver = self;
  v5.super_class = ADJasperPearlTelemetryData;
  v2 = [(ADJasperPearlTelemetryData *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ADJasperPearlTelemetryData *)v2 setJpcErrorCode:0xFFFFFFFFLL];
    [(ADJasperPearlTelemetryData *)v3 setGmcjErrorCode:0x7FFFFFFFLL];
    [(ADJasperPearlTelemetryData *)v3 setGmcjOutputValidationErrorCode:0x7FFFFFFFLL];
    [(ADJasperPearlTelemetryData *)v3 setNumOfUniqueTOFSpots:-1];
    [(ADJasperPearlTelemetryData *)v3 setIrCamFOVCoveragePercent:-1.0];
    [(ADJasperPearlTelemetryData *)v3 setPearlToLastJasperBankTranslation:-1.0];
    [(ADJasperPearlTelemetryData *)v3 setPearlToLastJasperBankRotation:-1.0];
  }

  return v3;
}

@end