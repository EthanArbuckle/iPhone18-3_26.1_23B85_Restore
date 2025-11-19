@interface CTSignalStrengthMeasurements
- (BOOL)isEqual:(id)a3;
- (CTSignalStrengthMeasurements)initWithCoder:(id)a3;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSignalStrengthMeasurements

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSignalStrengthMeasurements *)self rssi];

  if (v4)
  {
    v5 = [(CTSignalStrengthMeasurements *)self rssi];
    [v3 appendFormat:@", rssi=%@", v5];
  }

  v6 = [(CTSignalStrengthMeasurements *)self rscp];

  if (v6)
  {
    v7 = [(CTSignalStrengthMeasurements *)self rscp];
    [v3 appendFormat:@", rscp=%@", v7];
  }

  v8 = [(CTSignalStrengthMeasurements *)self ecn0];

  if (v8)
  {
    v9 = [(CTSignalStrengthMeasurements *)self ecn0];
    [v3 appendFormat:@", ecn0=%@", v9];
  }

  v10 = [(CTSignalStrengthMeasurements *)self rsrp];

  if (v10)
  {
    v11 = [(CTSignalStrengthMeasurements *)self rsrp];
    [v3 appendFormat:@", rsrp=%@", v11];
  }

  v12 = [(CTSignalStrengthMeasurements *)self rsrq];

  if (v12)
  {
    v13 = [(CTSignalStrengthMeasurements *)self rsrq];
    [v3 appendFormat:@", rsrq=%@", v13];
  }

  v14 = [(CTSignalStrengthMeasurements *)self snr];

  if (v14)
  {
    v15 = [(CTSignalStrengthMeasurements *)self snr];
    [v3 appendFormat:@", snr=%@", v15];
  }

  v16 = [(CTSignalStrengthMeasurements *)self ecio];

  if (v16)
  {
    v17 = [(CTSignalStrengthMeasurements *)self ecio];
    [v3 appendFormat:@", ecio=%@", v17];
  }

  v18 = [(CTSignalStrengthMeasurements *)self rxagc];

  if (v18)
  {
    v19 = [(CTSignalStrengthMeasurements *)self rxagc];
    [v3 appendFormat:@", rxagc=%@", v19];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      rssi = self->_rssi;
      v8 = [(CTSignalStrengthMeasurements *)v6 rssi];
      if (rssi != v8)
      {
        v9 = self->_rssi;
        v3 = [(CTSignalStrengthMeasurements *)v6 rssi];
        if (![(NSNumber *)v9 isEqual:v3])
        {
          v10 = 0;
          goto LABEL_48;
        }
      }

      rscp = self->_rscp;
      v12 = [(CTSignalStrengthMeasurements *)v6 rscp];
      if (rscp != v12)
      {
        v13 = self->_rscp;
        v14 = [(CTSignalStrengthMeasurements *)v6 rscp];
        if (![(NSNumber *)v13 isEqual:v14])
        {
          v10 = 0;
LABEL_46:

LABEL_47:
          if (rssi == v8)
          {
LABEL_49:

            goto LABEL_50;
          }

LABEL_48:

          goto LABEL_49;
        }

        v57 = v14;
      }

      ecn0 = self->_ecn0;
      v16 = [(CTSignalStrengthMeasurements *)v6 ecn0];
      v58 = ecn0;
      if (ecn0 != v16)
      {
        v17 = self->_ecn0;
        v55 = [(CTSignalStrengthMeasurements *)v6 ecn0];
        if (![(NSNumber *)v17 isEqual:?])
        {
          v10 = 0;
LABEL_44:

LABEL_45:
          v14 = v57;
          if (rscp == v12)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }
      }

      rsrp = self->_rsrp;
      v56 = [(CTSignalStrengthMeasurements *)v6 rsrp];
      v54 = rsrp;
      if (rsrp == v56)
      {
        v52 = v12;
        v20 = rssi;
        v21 = v16;
      }

      else
      {
        v19 = self->_rsrp;
        v51 = [(CTSignalStrengthMeasurements *)v6 rsrp];
        if (![(NSNumber *)v19 isEqual:?])
        {
          v10 = 0;
          v28 = v56;
LABEL_42:

LABEL_43:
          if (v58 == v16)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        v52 = v12;
        v20 = rssi;
        v21 = v16;
      }

      rsrq = self->_rsrq;
      v23 = [(CTSignalStrengthMeasurements *)v6 rsrq];
      v24 = v23;
      v50 = rsrq;
      v53 = rscp;
      if (rsrq == v23)
      {
        v16 = v21;
      }

      else
      {
        v25 = v3;
        v26 = v23;
        v27 = self->_rsrq;
        v47 = [(CTSignalStrengthMeasurements *)v6 rsrq];
        v16 = v21;
        if (![(NSNumber *)v27 isEqual:?])
        {
          v10 = 0;
          v28 = v56;
          rssi = v20;
          v12 = v52;
LABEL_40:

LABEL_41:
          v3 = v25;
          rscp = v53;
          if (v54 == v28)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        v24 = v26;
        v3 = v25;
      }

      rssi = v20;
      snr = self->_snr;
      v48 = [(CTSignalStrengthMeasurements *)v6 snr];
      v49 = v24;
      v46 = snr;
      v30 = snr == v48;
      v12 = v52;
      if (!v30)
      {
        v31 = self->_snr;
        v44 = [(CTSignalStrengthMeasurements *)v6 snr];
        if (![(NSNumber *)v31 isEqual:?])
        {
          v25 = v3;
          v10 = 0;
          v28 = v56;
          v32 = v48;
LABEL_38:

LABEL_39:
          v26 = v49;
          if (v50 == v49)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }
      }

      ecio = self->_ecio;
      v45 = [(CTSignalStrengthMeasurements *)v6 ecio];
      v43 = ecio;
      if (ecio == v45 || (v34 = self->_ecio, [(CTSignalStrengthMeasurements *)v6 ecio], v42 = objc_claimAutoreleasedReturnValue(), [(NSNumber *)v34 isEqual:?]))
      {
        rxagc = self->_rxagc;
        v36 = [(CTSignalStrengthMeasurements *)v6 rxagc];
        if (rxagc == v36)
        {
          v10 = 1;
        }

        else
        {
          v37 = self->_rxagc;
          v41 = v36;
          v38 = [(CTSignalStrengthMeasurements *)v6 rxagc];
          v10 = [(NSNumber *)v37 isEqual:v38];

          v36 = v41;
        }

        v28 = v56;

        v39 = v45;
        if (v43 == v45)
        {
          v25 = v3;
LABEL_37:

          v32 = v48;
          if (v46 == v48)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v10 = 0;
        v28 = v56;
      }

      v25 = v3;

      v39 = v45;
      goto LABEL_37;
    }

    v10 = 0;
  }

LABEL_50:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTSignalStrengthMeasurements *)self rssi];
  v6 = [v5 copy];
  [v4 setRssi:v6];

  v7 = [(CTSignalStrengthMeasurements *)self rscp];
  v8 = [v7 copy];
  [v4 setRscp:v8];

  v9 = [(CTSignalStrengthMeasurements *)self ecn0];
  v10 = [v9 copy];
  [v4 setEcn0:v10];

  v11 = [(CTSignalStrengthMeasurements *)self rsrp];
  v12 = [v11 copy];
  [v4 setRsrp:v12];

  v13 = [(CTSignalStrengthMeasurements *)self rsrq];
  v14 = [v13 copy];
  [v4 setRsrq:v14];

  v15 = [(CTSignalStrengthMeasurements *)self snr];
  v16 = [v15 copy];
  [v4 setSnr:v16];

  v17 = [(CTSignalStrengthMeasurements *)self ecio];
  v18 = [v17 copy];
  [v4 setEcio:v18];

  v19 = [(CTSignalStrengthMeasurements *)self rxagc];
  v20 = [v19 copy];
  [v4 setRxagc:v20];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTSignalStrengthMeasurements *)self rssi];
  [v4 encodeObject:v5 forKey:@"rssi"];

  v6 = [(CTSignalStrengthMeasurements *)self rscp];
  [v4 encodeObject:v6 forKey:@"rscp"];

  v7 = [(CTSignalStrengthMeasurements *)self ecn0];
  [v4 encodeObject:v7 forKey:@"ecn0"];

  v8 = [(CTSignalStrengthMeasurements *)self rsrp];
  [v4 encodeObject:v8 forKey:@"rsrp"];

  v9 = [(CTSignalStrengthMeasurements *)self rsrq];
  [v4 encodeObject:v9 forKey:@"rsrq"];

  v10 = [(CTSignalStrengthMeasurements *)self snr];
  [v4 encodeObject:v10 forKey:@"snr"];

  v11 = [(CTSignalStrengthMeasurements *)self ecio];
  [v4 encodeObject:v11 forKey:@"ecio"];

  v12 = [(CTSignalStrengthMeasurements *)self rxagc];
  [v4 encodeObject:v12 forKey:@"rxagc"];
}

- (CTSignalStrengthMeasurements)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CTSignalStrengthMeasurements;
  v5 = [(CTSignalStrengthMeasurements *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rssi"];
    rssi = v5->_rssi;
    v5->_rssi = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rscp"];
    rscp = v5->_rscp;
    v5->_rscp = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ecn0"];
    ecn0 = v5->_ecn0;
    v5->_ecn0 = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rsrp"];
    rsrp = v5->_rsrp;
    v5->_rsrp = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rsrq"];
    rsrq = v5->_rsrq;
    v5->_rsrq = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snr"];
    snr = v5->_snr;
    v5->_snr = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ecio"];
    ecio = v5->_ecio;
    v5->_ecio = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rxagc"];
    rxagc = v5->_rxagc;
    v5->_rxagc = v20;
  }

  return v5;
}

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(CTSignalStrengthMeasurements *)self ct_shortName];
  v5 = [v3 stringWithFormat:@"<%@", v4];

  v6 = [(CTSignalStrengthMeasurements *)self rssi];

  if (v6)
  {
    v7 = [(CTSignalStrengthMeasurements *)self rssi];
    [v5 appendFormat:@" rssi=%@", v7];
  }

  v8 = [(CTSignalStrengthMeasurements *)self rscp];

  if (v8)
  {
    v9 = [(CTSignalStrengthMeasurements *)self rscp];
    [v5 appendFormat:@", rscp=%@", v9];
  }

  v10 = [(CTSignalStrengthMeasurements *)self ecn0];

  if (v10)
  {
    v11 = [(CTSignalStrengthMeasurements *)self ecn0];
    [v5 appendFormat:@", ecn0=%@", v11];
  }

  v12 = [(CTSignalStrengthMeasurements *)self rsrp];

  if (v12)
  {
    v13 = [(CTSignalStrengthMeasurements *)self rsrp];
    [v5 appendFormat:@", rsrp=%@", v13];
  }

  v14 = [(CTSignalStrengthMeasurements *)self rsrq];

  if (v14)
  {
    v15 = [(CTSignalStrengthMeasurements *)self rsrq];
    [v5 appendFormat:@", rsrq=%@", v15];
  }

  v16 = [(CTSignalStrengthMeasurements *)self snr];

  if (v16)
  {
    v17 = [(CTSignalStrengthMeasurements *)self snr];
    [v5 appendFormat:@", snr=%@", v17];
  }

  v18 = [(CTSignalStrengthMeasurements *)self ecio];

  if (v18)
  {
    v19 = [(CTSignalStrengthMeasurements *)self ecio];
    [v5 appendFormat:@", ecio=%@", v19];
  }

  v20 = [(CTSignalStrengthMeasurements *)self rxagc];

  if (v20)
  {
    v21 = [(CTSignalStrengthMeasurements *)self rxagc];
    [v5 appendFormat:@", rxagc=%@", v21];
  }

  [v5 appendString:@">"];

  return v5;
}

@end