@interface VNCVMLObservation_LegacySupportDoNotChange
- (VNCVMLObservation_LegacySupportDoNotChange)initWithCoder:(id)a3;
- (VNCVMLObservation_LegacySupportDoNotChange)initWithData:(id)a3 forKey:(id)a4;
@end

@implementation VNCVMLObservation_LegacySupportDoNotChange

- (VNCVMLObservation_LegacySupportDoNotChange)initWithData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = VNCVMLObservation_LegacySupportDoNotChange;
  v8 = [(VNCVMLObservation_LegacySupportDoNotChange *)&v30 init];
  if (v8)
  {
    v29 = 0;
    v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v6 error:&v29];
    v10 = v29;
    v11 = v10;
    if (v9)
    {
      v12 = objc_opt_class();
      [v9 setClass:v12 forClassName:@"CVMLObservation"];
      [v9 setClass:objc_opt_class() forClassName:@"MPImageDescriptor"];
      [v9 setClass:objc_opt_class() forClassName:@"CVMLImageprintObservation"];
      v13 = [v9 decodeObjectOfClass:v12 forKey:v7];

      if (v13)
      {
        [v9 finishDecoding];
LABEL_9:

        goto LABEL_10;
      }

      v21 = [v9 error];
      VNValidatedLog(4, @"[CVMLObservation initWithData:forKey:] failed with error: %@", v22, v23, v24, v25, v26, v27, v21);
      v8 = v21;
    }

    else
    {
      v14 = [v10 localizedDescription];
      VNValidatedLog(4, @"Creating NSKeyedUnarchiver object failed with error: %@", v15, v16, v17, v18, v19, v20, v14);
    }

    v13 = 0;
    goto LABEL_9;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (VNCVMLObservation_LegacySupportDoNotChange)initWithCoder:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_6;
  }

  v11.receiver = self;
  v11.super_class = VNCVMLObservation_LegacySupportDoNotChange;
  self = [(VNCVMLObservation_LegacySupportDoNotChange *)&v11 init];
  if (!self)
  {
LABEL_8:
    self = self;
    v7 = self;
    goto LABEL_9;
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CVMLObservation_CodingVersionCodingKey"];
  v6 = v5;
  if (v5 && ![v5 unsignedIntegerValue])
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CVMLObservation_ConfidenceCodingKey"];
    [v8 floatValue];
    self->_confidence = v9;

    goto LABEL_8;
  }

LABEL_6:
  v7 = 0;
LABEL_9:

  return v7;
}

@end