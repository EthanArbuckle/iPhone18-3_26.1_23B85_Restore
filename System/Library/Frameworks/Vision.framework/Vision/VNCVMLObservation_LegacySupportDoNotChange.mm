@interface VNCVMLObservation_LegacySupportDoNotChange
- (VNCVMLObservation_LegacySupportDoNotChange)initWithCoder:(id)coder;
- (VNCVMLObservation_LegacySupportDoNotChange)initWithData:(id)data forKey:(id)key;
@end

@implementation VNCVMLObservation_LegacySupportDoNotChange

- (VNCVMLObservation_LegacySupportDoNotChange)initWithData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v30.receiver = self;
  v30.super_class = VNCVMLObservation_LegacySupportDoNotChange;
  v8 = [(VNCVMLObservation_LegacySupportDoNotChange *)&v30 init];
  if (v8)
  {
    v29 = 0;
    v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v29];
    v10 = v29;
    v11 = v10;
    if (v9)
    {
      v12 = objc_opt_class();
      [v9 setClass:v12 forClassName:@"CVMLObservation"];
      [v9 setClass:objc_opt_class() forClassName:@"MPImageDescriptor"];
      [v9 setClass:objc_opt_class() forClassName:@"CVMLImageprintObservation"];
      v13 = [v9 decodeObjectOfClass:v12 forKey:keyCopy];

      if (v13)
      {
        [v9 finishDecoding];
LABEL_9:

        goto LABEL_10;
      }

      error = [v9 error];
      VNValidatedLog(4, @"[CVMLObservation initWithData:forKey:] failed with error: %@", v22, v23, v24, v25, v26, v27, error);
      v8 = error;
    }

    else
    {
      localizedDescription = [v10 localizedDescription];
      VNValidatedLog(4, @"Creating NSKeyedUnarchiver object failed with error: %@", v15, v16, v17, v18, v19, v20, localizedDescription);
    }

    v13 = 0;
    goto LABEL_9;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (VNCVMLObservation_LegacySupportDoNotChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy)
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
    selfCopy = self;
    goto LABEL_9;
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLObservation_CodingVersionCodingKey"];
  v6 = v5;
  if (v5 && ![v5 unsignedIntegerValue])
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLObservation_ConfidenceCodingKey"];
    [v8 floatValue];
    self->_confidence = v9;

    goto LABEL_8;
  }

LABEL_6:
  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

@end