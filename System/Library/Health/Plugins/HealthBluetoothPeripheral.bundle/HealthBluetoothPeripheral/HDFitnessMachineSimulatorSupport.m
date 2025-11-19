@interface HDFitnessMachineSimulatorSupport
- (HDFitnessMachineSimulatorSupport)initWithFitnessMachineType:(unint64_t)a3;
- (NSData)btIdentifierData;
- (NSString)btIdentifier;
- (void)updateAdvertisementDataForSimulation:(id)a3;
@end

@implementation HDFitnessMachineSimulatorSupport

- (HDFitnessMachineSimulatorSupport)initWithFitnessMachineType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = HDFitnessMachineSimulatorSupport;
  v4 = [(HDFitnessMachineSimulatorSupport *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_fitnessMachineType = a3;
    v6 = +[NSUUID UUID];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (NSData)btIdentifierData
{
  v4 = 0;
  v2 = [NSData dataWithBytes:&v4 length:8];

  return v2;
}

- (NSString)btIdentifier
{
  v2 = [(HDFitnessMachineSimulatorSupport *)self btIdentifierData];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

- (void)updateAdvertisementDataForSimulation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableData);
  v6 = v5;
  v9 = 1;
  v8 = 0;
  fitnessMachineType = self->_fitnessMachineType;
  if (fitnessMachineType > 3)
  {
    switch(fitnessMachineType)
    {
      case 4:
        LOWORD(fitnessMachineType) = 8;
        goto LABEL_12;
      case 5:
        LOWORD(fitnessMachineType) = 16;
        goto LABEL_12;
      case 6:
        LOWORD(fitnessMachineType) = 32;
        goto LABEL_12;
    }
  }

  else
  {
    if (fitnessMachineType == 1 || fitnessMachineType == 2)
    {
      goto LABEL_12;
    }

    if (fitnessMachineType == 3)
    {
      LOWORD(fitnessMachineType) = 4;
LABEL_12:
      v8 = fitnessMachineType;
    }
  }

  [v5 appendBytes:&v9 length:1];
  [v6 appendBytes:&v8 length:2];
  [v4 setAdvertisementData:v6];
}

@end