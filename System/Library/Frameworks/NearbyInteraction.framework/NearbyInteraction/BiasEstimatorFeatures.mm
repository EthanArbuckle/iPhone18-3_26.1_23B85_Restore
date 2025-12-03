@interface BiasEstimatorFeatures
- (BOOL)isEqual:(id)equal;
- (BiasEstimatorFeatures)initWithBiasEstimatorFeatures:(id)features;
- (BiasEstimatorFeatures)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)populateOrderedInputFeature;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BiasEstimatorFeatures

- (BiasEstimatorFeatures)initWithBiasEstimatorFeatures:(id)features
{
  featuresCopy = features;
  if (!featuresCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UWBSignalFeatures.mm" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"features"}];
  }

  v31.receiver = self;
  v31.super_class = BiasEstimatorFeatures;
  v6 = [(BiasEstimatorFeatures *)&v31 init];
  if (v6)
  {
    v6->_antennaMask = [featuresCopy antennaMask];
    [featuresCopy uwbTime];
    v6->_uwbTime = v7;
    [featuresCopy timestamp];
    v6->_timestamp = v8;
    [featuresCopy tofPicSecond];
    v6->_tofPicSecond = v9;
    [featuresCopy rssiDbm];
    v6->_rssiDbm = v10;
    [featuresCopy soiRssiDbm];
    v6->_soiRssiDbm = v11;
    [featuresCopy toaNoiseRms];
    v6->_toaNoiseRms = v12;
    [featuresCopy toaPpwinRms];
    v6->_toaPpwinRms = v13;
    [featuresCopy toaPpwinPeak];
    v6->_toaPpwinPeak = v14;
    [featuresCopy rttInitiator];
    v6->_rttInitiator = v15;
    [featuresCopy tatInitiator];
    v6->_tatInitiator = v16;
    [featuresCopy rttResponder];
    v6->_rttResponder = v17;
    [featuresCopy tatResponder];
    v6->_tatResponder = v18;
    cirPacket1 = [featuresCopy cirPacket1];
    v20 = [cirPacket1 copy];
    cirPacket1 = v6->_cirPacket1;
    v6->_cirPacket1 = v20;

    [featuresCopy leadingEdgePacket1];
    v6->_leadingEdgePacket1 = v22;
    [featuresCopy firstPathIndexPacket1];
    v6->_firstPathIndexPacket1 = v23;
    v6->_rxAntennaPacket1 = [featuresCopy rxAntennaPacket1];
    cirPacket2 = [featuresCopy cirPacket2];
    v25 = [cirPacket2 copy];
    cirPacket2 = v6->_cirPacket2;
    v6->_cirPacket2 = v25;

    [featuresCopy leadingEdgePacket2];
    v6->_leadingEdgePacket2 = v27;
    [featuresCopy firstPathIndexPacket2];
    v6->_firstPathIndexPacket2 = v28;
    v6->_rxAntennaPacket2 = [featuresCopy rxAntennaPacket2];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_antennaMask forKey:@"antennaMask"];
  [coderCopy encodeDouble:@"uwbTime" forKey:self->_uwbTime];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeDouble:@"tofPicSecond" forKey:self->_tofPicSecond];
  [coderCopy encodeDouble:@"rssiDbm" forKey:self->_rssiDbm];
  [coderCopy encodeDouble:@"soiRssiDbm" forKey:self->_soiRssiDbm];
  [coderCopy encodeDouble:@"toaNoiseRms" forKey:self->_toaNoiseRms];
  [coderCopy encodeDouble:@"toaPpwinRms" forKey:self->_toaPpwinRms];
  [coderCopy encodeDouble:@"toaPpwinPeak" forKey:self->_toaPpwinPeak];
  [coderCopy encodeDouble:@"rttInitiator" forKey:self->_rttInitiator];
  [coderCopy encodeDouble:@"tatInitiator" forKey:self->_tatInitiator];
  [coderCopy encodeDouble:@"rttResponder" forKey:self->_rttResponder];
  [coderCopy encodeDouble:@"tatResponder" forKey:self->_tatResponder];
  [coderCopy encodeObject:self->_cirPacket1 forKey:@"cirPacket1"];
  [coderCopy encodeDouble:@"leadingEdgePacket1" forKey:self->_leadingEdgePacket1];
  [coderCopy encodeDouble:@"firstPathIndexPacket1" forKey:self->_firstPathIndexPacket1];
  [coderCopy encodeInt:self->_rxAntennaPacket1 forKey:@"rxAntennaPacket1"];
  [coderCopy encodeObject:self->_cirPacket2 forKey:@"cirPacket2"];
  [coderCopy encodeDouble:@"leadingEdgePacket2" forKey:self->_leadingEdgePacket2];
  [coderCopy encodeDouble:@"firstPathIndexPacket2" forKey:self->_firstPathIndexPacket2];
  [coderCopy encodeInt:self->_rxAntennaPacket2 forKey:@"rxAntennaPacket2"];
}

- (BiasEstimatorFeatures)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"antennaMask"];
  [coderCopy decodeDoubleForKey:@"uwbTime"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"timestamp"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"tofPicSecond"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"soiRssiDbm"];
  v44 = v12;
  [coderCopy decodeDoubleForKey:@"rssiDbm"];
  v14 = v13;
  [coderCopy decodeDoubleForKey:@"toaNoiseRms"];
  v16 = v15;
  [coderCopy decodeDoubleForKey:@"toaPpwinRms"];
  v43 = v17;
  [coderCopy decodeDoubleForKey:@"toaPpwinPeak"];
  v42 = v18;
  [coderCopy decodeDoubleForKey:@"rttInitiator"];
  v41 = v19;
  [coderCopy decodeDoubleForKey:@"tatInitiator"];
  v40 = v20;
  [coderCopy decodeDoubleForKey:@"rttResponder"];
  v39 = v21;
  [coderCopy decodeDoubleForKey:@"tatResponder"];
  v38 = v22;
  v23 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"cirPacket1"];
  [coderCopy decodeDoubleForKey:@"leadingEdgePacket1"];
  v25 = v24;
  [coderCopy decodeDoubleForKey:@"firstPathIndexPacket1"];
  v37 = v26;
  v27 = [coderCopy decodeIntForKey:@"rxAntennaPacket1"];
  v28 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"cirPacket2"];
  [coderCopy decodeDoubleForKey:@"leadingEdgePacket2"];
  v30 = v29;
  [coderCopy decodeDoubleForKey:@"firstPathIndexPacket2"];
  v32 = v31;
  v33 = [coderCopy decodeIntForKey:@"rxAntennaPacket2"];
  v45.receiver = self;
  v45.super_class = BiasEstimatorFeatures;
  v34 = [(BiasEstimatorFeatures *)&v45 init];
  v35 = v34;
  if (v34)
  {
    [(BiasEstimatorFeatures *)v34 setAntennaMask:v5];
    [(BiasEstimatorFeatures *)v35 setUwbTime:v7];
    [(BiasEstimatorFeatures *)v35 setTimestamp:v9];
    [(BiasEstimatorFeatures *)v35 setTofPicSecond:v11];
    [(BiasEstimatorFeatures *)v35 setRssiDbm:v14];
    [(BiasEstimatorFeatures *)v35 setSoiRssiDbm:v44];
    [(BiasEstimatorFeatures *)v35 setToaNoiseRms:v16];
    [(BiasEstimatorFeatures *)v35 setToaPpwinRms:v43];
    [(BiasEstimatorFeatures *)v35 setToaPpwinPeak:v42];
    [(BiasEstimatorFeatures *)v35 setRttInitiator:v41];
    [(BiasEstimatorFeatures *)v35 setTatInitiator:v40];
    [(BiasEstimatorFeatures *)v35 setRttResponder:v39];
    [(BiasEstimatorFeatures *)v35 setTatResponder:v38];
    [(BiasEstimatorFeatures *)v35 setCirPacket1:v23];
    [(BiasEstimatorFeatures *)v35 setLeadingEdgePacket1:v25];
    [(BiasEstimatorFeatures *)v35 setFirstPathIndexPacket1:v37];
    [(BiasEstimatorFeatures *)v35 setRxAntennaPacket1:v27];
    [(BiasEstimatorFeatures *)v35 setCirPacket2:v28];
    [(BiasEstimatorFeatures *)v35 setLeadingEdgePacket2:v30];
    [(BiasEstimatorFeatures *)v35 setFirstPathIndexPacket2:v32];
    [(BiasEstimatorFeatures *)v35 setRxAntennaPacket2:v33];
  }

  return v35;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithBiasEstimatorFeatures:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v55 = 1;
LABEL_30:

      goto LABEL_31;
    }

    antennaMask = self->_antennaMask;
    antennaMask = [(BiasEstimatorFeatures *)v5 antennaMask];
    uwbTime = self->_uwbTime;
    [(BiasEstimatorFeatures *)v6 uwbTime];
    v11 = v10;
    timestamp = self->_timestamp;
    [(BiasEstimatorFeatures *)v6 timestamp];
    v14 = v13;
    rssiDbm = self->_rssiDbm;
    [(BiasEstimatorFeatures *)v6 rssiDbm];
    v17 = v16;
    soiRssiDbm = self->_soiRssiDbm;
    [(BiasEstimatorFeatures *)v6 soiRssiDbm];
    v20 = v19;
    tofPicSecond = self->_tofPicSecond;
    [(BiasEstimatorFeatures *)v6 tofPicSecond];
    v79 = v21;
    toaNoiseRms = self->_toaNoiseRms;
    [(BiasEstimatorFeatures *)v6 toaNoiseRms];
    v77 = v22;
    toaPpwinRms = self->_toaPpwinRms;
    [(BiasEstimatorFeatures *)v6 toaPpwinRms];
    v75 = v23;
    toaPpwinPeak = self->_toaPpwinPeak;
    [(BiasEstimatorFeatures *)v6 toaPpwinPeak];
    v73 = v24;
    rttInitiator = self->_rttInitiator;
    [(BiasEstimatorFeatures *)v6 rttInitiator];
    v71 = v25;
    tatInitiator = self->_tatInitiator;
    [(BiasEstimatorFeatures *)v6 tatInitiator];
    v69 = v26;
    rttResponder = self->_rttResponder;
    [(BiasEstimatorFeatures *)v6 rttResponder];
    v67 = v27;
    tatResponder = self->_tatResponder;
    [(BiasEstimatorFeatures *)v6 tatResponder];
    v65 = v28;
    cirPacket1 = self->_cirPacket1;
    if (!cirPacket1)
    {
      cirPacket1 = [(BiasEstimatorFeatures *)v6 cirPacket1];

      if (!cirPacket1)
      {
        v33 = 0;
LABEL_7:
        leadingEdgePacket1 = self->_leadingEdgePacket1;
        [(BiasEstimatorFeatures *)v6 leadingEdgePacket1];
        v63 = v34;
        firstPathIndexPacket1 = self->_firstPathIndexPacket1;
        [(BiasEstimatorFeatures *)v6 firstPathIndexPacket1];
        v61 = v35;
        rxAntennaPacket1 = self->_rxAntennaPacket1;
        rxAntennaPacket1 = [(BiasEstimatorFeatures *)v6 rxAntennaPacket1];
        cirPacket2 = self->_cirPacket2;
        v59 = v17;
        v60 = rssiDbm;
        v57 = v20;
        v58 = soiRssiDbm;
        if (!cirPacket2)
        {
          cirPacket2 = [(BiasEstimatorFeatures *)v6 cirPacket2];

          if (!cirPacket2)
          {
            v41 = v14;
            v42 = timestamp;
            v43 = v11;
            v44 = uwbTime;
            goto LABEL_11;
          }

          cirPacket2 = self->_cirPacket2;
        }

        cirPacket2 = [(BiasEstimatorFeatures *)v6 cirPacket2];
        v40 = [(NSArray *)cirPacket2 isEqualToArray:cirPacket2];
        v41 = v14;
        v42 = timestamp;
        v43 = v11;
        v44 = uwbTime;

        LOBYTE(cirPacket2) = !v40;
LABEL_11:
        leadingEdgePacket2 = self->_leadingEdgePacket2;
        [(BiasEstimatorFeatures *)v6 leadingEdgePacket2];
        v47 = v46;
        firstPathIndexPacket2 = self->_firstPathIndexPacket2;
        [(BiasEstimatorFeatures *)v6 firstPathIndexPacket2];
        v50 = v49;
        rxAntennaPacket2 = self->_rxAntennaPacket2;
        rxAntennaPacket2 = [(BiasEstimatorFeatures *)v6 rxAntennaPacket2];
        v53 = v44 != v43;
        if (v42 != v41)
        {
          v53 = 1;
        }

        if (antennaMask != antennaMask)
        {
          v53 = 1;
        }

        if (tofPicSecond != v79)
        {
          v53 = 1;
        }

        if (v60 != v59)
        {
          v53 = 1;
        }

        if (v58 != v57)
        {
          v53 = 1;
        }

        if (toaNoiseRms != v77)
        {
          v53 = 1;
        }

        v54 = (leadingEdgePacket2 == v47) & ~((v53 || toaPpwinRms != v75 || toaPpwinPeak != v73 || rttInitiator != v71 || tatInitiator != v69 || rttResponder != v67 || tatResponder != v65 || v33) | (leadingEdgePacket1 != v63 || firstPathIndexPacket1 != v61 || rxAntennaPacket1 != rxAntennaPacket1) | cirPacket2);
        if (firstPathIndexPacket2 != v50)
        {
          v54 = 0;
        }

        v55 = rxAntennaPacket2 == rxAntennaPacket2 && v54;
        goto LABEL_30;
      }

      cirPacket1 = self->_cirPacket1;
    }

    cirPacket12 = [(BiasEstimatorFeatures *)v6 cirPacket1];
    v32 = [(NSArray *)cirPacket1 isEqualToArray:cirPacket12];

    v33 = !v32;
    goto LABEL_7;
  }

  v55 = 0;
LABEL_31:

  return v55;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  [v6 appendFormat:@"AntennaMask: %d", self->_antennaMask];
  [v6 appendFormat:@", current Timestamp: %f", *&self->_timestamp];
  [v6 appendFormat:@", uwbTime: %f", *&self->_uwbTime];
  [v6 appendFormat:@", tofPicSecond: %f", *&self->_tofPicSecond];
  [v6 appendFormat:@", rssiDbm: %.3f", *&self->_rssiDbm];
  [v6 appendFormat:@", soiRssiDbm: %.3f", *&self->_soiRssiDbm];
  [v6 appendFormat:@", toaNoiseRms: %d", self->_toaNoiseRms];
  [v6 appendFormat:@", toaPpwinRms: %d", self->_toaPpwinRms];
  [v6 appendFormat:@", toaPpwinPeak: %d", self->_toaPpwinPeak];
  [v6 appendFormat:@", rttInitiator: %d", self->_rttInitiator];
  [v6 appendFormat:@", tatInitiator: %d", self->_tatInitiator];
  [v6 appendFormat:@", rttResponder: %d", self->_rttResponder];
  [v6 appendFormat:@", tatResponder: %d", self->_tatResponder];
  cirPacket1 = self->_cirPacket1;
  if (cirPacket1)
  {
    v8 = [(NSArray *)cirPacket1 description];
    [v6 appendFormat:@", cirPacket1: %@", v8];
  }

  [v6 appendFormat:@", leadingEdgePacket1: %d", self->_leadingEdgePacket1];
  [v6 appendFormat:@", firstPathIndexPacket1: %d", self->_firstPathIndexPacket1];
  [v6 appendFormat:@", rxAntennaPacket1: %d", self->_rxAntennaPacket1];
  cirPacket2 = self->_cirPacket2;
  if (cirPacket2)
  {
    v10 = [(NSArray *)cirPacket2 description];
    [v6 appendFormat:@", cirPacket1: %@", v10];
  }

  [v6 appendFormat:@", leadingEdgePacket2: %d", self->_leadingEdgePacket2];
  [v6 appendFormat:@", firstPathIndexPacket2: %d", self->_firstPathIndexPacket2];
  [v6 appendFormat:@", rxAntennaPacket2: %d>", self->_rxAntennaPacket2];

  return v6;
}

- (id)populateOrderedInputFeature
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  rssiDbm = self->_rssiDbm;
  v5 = [v3 initWithFormat:@"%d, %f, %f, %d, %.3f, %.3f", self->_antennaMask, *&self->_timestamp, *&self->_uwbTime, self->_tofPicSecond, *&rssiDbm, *&self->_soiRssiDbm];
  [v5 appendFormat:@", %d, %d, %d", self->_toaNoiseRms, self->_toaPpwinRms, self->_toaPpwinPeak];
  [v5 appendFormat:@", %llu, %llu, %llu, %llu", self->_rttInitiator, self->_tatInitiator, self->_rttResponder, self->_tatResponder];
  for (i = 0; [(NSArray *)self->_cirPacket1 count]> i; ++i)
  {
    v7 = [(NSArray *)self->_cirPacket1 objectAtIndex:i];
    real = [v7 real];

    v9 = [(NSArray *)self->_cirPacket1 objectAtIndex:i];
    imag = [v9 imag];

    [v5 appendFormat:@", %d, %d", objc_msgSend(real, "intValue"), objc_msgSend(imag, "intValue")];
  }

  [v5 appendFormat:@", %d, %d, %d", self->_leadingEdgePacket1, self->_firstPathIndexPacket1, self->_rxAntennaPacket1];
  for (j = 0; [(NSArray *)self->_cirPacket2 count]> j; ++j)
  {
    v12 = [(NSArray *)self->_cirPacket2 objectAtIndex:j];
    real2 = [v12 real];

    v14 = [(NSArray *)self->_cirPacket2 objectAtIndex:j];
    imag2 = [v14 imag];

    [v5 appendFormat:@", %d, %d", objc_msgSend(real2, "intValue"), objc_msgSend(imag2, "intValue")];
  }

  [v5 appendFormat:@", %d, %d, %d", self->_leadingEdgePacket2, self->_firstPathIndexPacket2, self->_rxAntennaPacket2];

  return v5;
}

- (unint64_t)hash
{
  v43 = [MEMORY[0x1E696AD98] numberWithInt:self->_antennaMask];
  v33 = [v43 hash];
  v42 = [MEMORY[0x1E696AD98] numberWithDouble:self->_uwbTime];
  v31 = [v42 hash];
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  v30 = [v41 hash];
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:self->_tofPicSecond];
  v28 = [v40 hash];
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rssiDbm];
  v27 = [v39 hash];
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:self->_soiRssiDbm];
  v25 = [v38 hash];
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:self->_toaNoiseRms];
  v24 = [v37 hash];
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:self->_toaPpwinRms];
  v23 = [v36 hash];
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:self->_toaPpwinPeak];
  v21 = [v35 hash];
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rttInitiator];
  v20 = [v34 hash];
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:self->_tatInitiator];
  v18 = [v32 hash];
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rttResponder];
  v17 = [v29 hash];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:self->_tatResponder];
  v16 = [v26 hash];
  v15 = [(NSArray *)self->_cirPacket1 hash];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leadingEdgePacket1];
  v14 = [v22 hash];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPathIndexPacket1];
  v3 = [v19 hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_rxAntennaPacket1];
  v5 = [v4 hash];
  v6 = [(NSArray *)self->_cirPacket2 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leadingEdgePacket2];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstPathIndexPacket2];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_rxAntennaPacket2];
  v12 = v5 ^ v6 ^ v8 ^ v10 ^ [v11 hash];

  return v31 ^ v33 ^ v30 ^ v28 ^ v27 ^ v25 ^ v24 ^ v23 ^ v21 ^ v20 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v12;
}

@end