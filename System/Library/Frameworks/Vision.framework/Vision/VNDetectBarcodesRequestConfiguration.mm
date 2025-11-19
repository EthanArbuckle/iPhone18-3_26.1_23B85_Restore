@interface VNDetectBarcodesRequestConfiguration
- (VNDetectBarcodesRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDefaultSymbologiesForRevision:(unint64_t)a3;
@end

@implementation VNDetectBarcodesRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNDetectBarcodesRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setSymbologies:self->_symbologies];
    [v5 setLocateMode:self->_locateMode];
    [v5 setStopAtFirstPyramidWith2DCode:self->_stopAtFirstPyramidWith2DCode];
    [v5 setUseMLDetector:self->_useMLDetector];
  }

  return v5;
}

- (VNDetectBarcodesRequestConfiguration)initWithRequestClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = VNDetectBarcodesRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v7 initWithRequestClass:a3];
  v4 = v3;
  if (v3)
  {
    [(VNDetectBarcodesRequestConfiguration *)v3 setDefaultSymbologiesForRevision:[(VNRequestConfiguration *)v3 resolvedRevision]];
    v5 = v4;
  }

  return v4;
}

- (void)setDefaultSymbologiesForRevision:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 > 3737841664)
    {
      if (a3 == 3737841665)
      {
        v10 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3Private];
      }

      else
      {
        if (a3 != 3737841666)
        {
          goto LABEL_14;
        }

        v10 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4Private];
      }
    }

    else
    {
      if (a3 != 4)
      {
        if (a3 == 3737841664)
        {
          v9 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2Private];
LABEL_21:
          symbologies = self->_symbologies;
          self->_symbologies = v9;

          self->_useMLDetector = 0;
          return;
        }

        goto LABEL_14;
      }

      v10 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev4];
    }

LABEL_19:
    v12 = self->_symbologies;
    self->_symbologies = v10;

    self->_useMLDetector = 1;
    return;
  }

  switch(a3)
  {
    case 1uLL:
      v9 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev1];
      goto LABEL_21;
    case 2uLL:
      v9 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev2];
      goto LABEL_21;
    case 3uLL:
      v10 = +[VNDetectBarcodesRequest _allBarcodeSymbologiesRev3];
      goto LABEL_19;
  }

LABEL_14:
  VNValidatedLog(4, @"Unable to obtain the supported barcode symbologies", a3, v3, v4, v5, v6, v7, v14);
  v11 = self->_symbologies;
  self->_symbologies = 0;
}

@end