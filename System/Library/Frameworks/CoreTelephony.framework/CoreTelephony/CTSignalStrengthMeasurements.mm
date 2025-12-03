@interface CTSignalStrengthMeasurements
- (BOOL)isEqual:(id)equal;
- (CTSignalStrengthMeasurements)initWithCoder:(id)coder;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSignalStrengthMeasurements

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  rssi = [(CTSignalStrengthMeasurements *)self rssi];

  if (rssi)
  {
    rssi2 = [(CTSignalStrengthMeasurements *)self rssi];
    [v3 appendFormat:@", rssi=%@", rssi2];
  }

  rscp = [(CTSignalStrengthMeasurements *)self rscp];

  if (rscp)
  {
    rscp2 = [(CTSignalStrengthMeasurements *)self rscp];
    [v3 appendFormat:@", rscp=%@", rscp2];
  }

  ecn0 = [(CTSignalStrengthMeasurements *)self ecn0];

  if (ecn0)
  {
    ecn02 = [(CTSignalStrengthMeasurements *)self ecn0];
    [v3 appendFormat:@", ecn0=%@", ecn02];
  }

  rsrp = [(CTSignalStrengthMeasurements *)self rsrp];

  if (rsrp)
  {
    rsrp2 = [(CTSignalStrengthMeasurements *)self rsrp];
    [v3 appendFormat:@", rsrp=%@", rsrp2];
  }

  rsrq = [(CTSignalStrengthMeasurements *)self rsrq];

  if (rsrq)
  {
    rsrq2 = [(CTSignalStrengthMeasurements *)self rsrq];
    [v3 appendFormat:@", rsrq=%@", rsrq2];
  }

  v14 = [(CTSignalStrengthMeasurements *)self snr];

  if (v14)
  {
    v15 = [(CTSignalStrengthMeasurements *)self snr];
    [v3 appendFormat:@", snr=%@", v15];
  }

  ecio = [(CTSignalStrengthMeasurements *)self ecio];

  if (ecio)
  {
    ecio2 = [(CTSignalStrengthMeasurements *)self ecio];
    [v3 appendFormat:@", ecio=%@", ecio2];
  }

  rxagc = [(CTSignalStrengthMeasurements *)self rxagc];

  if (rxagc)
  {
    rxagc2 = [(CTSignalStrengthMeasurements *)self rxagc];
    [v3 appendFormat:@", rxagc=%@", rxagc2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      rssi = self->_rssi;
      rssi = [(CTSignalStrengthMeasurements *)v6 rssi];
      if (rssi != rssi)
      {
        v9 = self->_rssi;
        rssi2 = [(CTSignalStrengthMeasurements *)v6 rssi];
        if (![(NSNumber *)v9 isEqual:rssi2])
        {
          v10 = 0;
          goto LABEL_48;
        }
      }

      rscp = self->_rscp;
      rscp = [(CTSignalStrengthMeasurements *)v6 rscp];
      if (rscp != rscp)
      {
        v13 = self->_rscp;
        rscp2 = [(CTSignalStrengthMeasurements *)v6 rscp];
        if (![(NSNumber *)v13 isEqual:rscp2])
        {
          v10 = 0;
LABEL_46:

LABEL_47:
          if (rssi == rssi)
          {
LABEL_49:

            goto LABEL_50;
          }

LABEL_48:

          goto LABEL_49;
        }

        v57 = rscp2;
      }

      ecn0 = self->_ecn0;
      ecn0 = [(CTSignalStrengthMeasurements *)v6 ecn0];
      v58 = ecn0;
      if (ecn0 != ecn0)
      {
        v17 = self->_ecn0;
        ecn02 = [(CTSignalStrengthMeasurements *)v6 ecn0];
        if (![(NSNumber *)v17 isEqual:?])
        {
          v10 = 0;
LABEL_44:

LABEL_45:
          rscp2 = v57;
          if (rscp == rscp)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }
      }

      rsrp = self->_rsrp;
      rsrp = [(CTSignalStrengthMeasurements *)v6 rsrp];
      v54 = rsrp;
      if (rsrp == rsrp)
      {
        v52 = rscp;
        v20 = rssi;
        v21 = ecn0;
      }

      else
      {
        v19 = self->_rsrp;
        rsrp2 = [(CTSignalStrengthMeasurements *)v6 rsrp];
        if (![(NSNumber *)v19 isEqual:?])
        {
          v10 = 0;
          v28 = rsrp;
LABEL_42:

LABEL_43:
          if (v58 == ecn0)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        v52 = rscp;
        v20 = rssi;
        v21 = ecn0;
      }

      rsrq = self->_rsrq;
      rsrq = [(CTSignalStrengthMeasurements *)v6 rsrq];
      v24 = rsrq;
      v50 = rsrq;
      v53 = rscp;
      if (rsrq == rsrq)
      {
        ecn0 = v21;
      }

      else
      {
        v25 = rssi2;
        v26 = rsrq;
        v27 = self->_rsrq;
        rsrq2 = [(CTSignalStrengthMeasurements *)v6 rsrq];
        ecn0 = v21;
        if (![(NSNumber *)v27 isEqual:?])
        {
          v10 = 0;
          v28 = rsrp;
          rssi = v20;
          rscp = v52;
LABEL_40:

LABEL_41:
          rssi2 = v25;
          rscp = v53;
          if (v54 == v28)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        v24 = v26;
        rssi2 = v25;
      }

      rssi = v20;
      snr = self->_snr;
      v48 = [(CTSignalStrengthMeasurements *)v6 snr];
      v49 = v24;
      v46 = snr;
      v30 = snr == v48;
      rscp = v52;
      if (!v30)
      {
        v31 = self->_snr;
        v44 = [(CTSignalStrengthMeasurements *)v6 snr];
        if (![(NSNumber *)v31 isEqual:?])
        {
          v25 = rssi2;
          v10 = 0;
          v28 = rsrp;
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
      ecio = [(CTSignalStrengthMeasurements *)v6 ecio];
      v43 = ecio;
      if (ecio == ecio || (v34 = self->_ecio, [(CTSignalStrengthMeasurements *)v6 ecio], v42 = objc_claimAutoreleasedReturnValue(), [(NSNumber *)v34 isEqual:?]))
      {
        rxagc = self->_rxagc;
        rxagc = [(CTSignalStrengthMeasurements *)v6 rxagc];
        if (rxagc == rxagc)
        {
          v10 = 1;
        }

        else
        {
          v37 = self->_rxagc;
          v41 = rxagc;
          rxagc2 = [(CTSignalStrengthMeasurements *)v6 rxagc];
          v10 = [(NSNumber *)v37 isEqual:rxagc2];

          rxagc = v41;
        }

        v28 = rsrp;

        v39 = ecio;
        if (v43 == ecio)
        {
          v25 = rssi2;
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
        v28 = rsrp;
      }

      v25 = rssi2;

      v39 = ecio;
      goto LABEL_37;
    }

    v10 = 0;
  }

LABEL_50:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  rssi = [(CTSignalStrengthMeasurements *)self rssi];
  v6 = [rssi copy];
  [v4 setRssi:v6];

  rscp = [(CTSignalStrengthMeasurements *)self rscp];
  v8 = [rscp copy];
  [v4 setRscp:v8];

  ecn0 = [(CTSignalStrengthMeasurements *)self ecn0];
  v10 = [ecn0 copy];
  [v4 setEcn0:v10];

  rsrp = [(CTSignalStrengthMeasurements *)self rsrp];
  v12 = [rsrp copy];
  [v4 setRsrp:v12];

  rsrq = [(CTSignalStrengthMeasurements *)self rsrq];
  v14 = [rsrq copy];
  [v4 setRsrq:v14];

  v15 = [(CTSignalStrengthMeasurements *)self snr];
  v16 = [v15 copy];
  [v4 setSnr:v16];

  ecio = [(CTSignalStrengthMeasurements *)self ecio];
  v18 = [ecio copy];
  [v4 setEcio:v18];

  rxagc = [(CTSignalStrengthMeasurements *)self rxagc];
  v20 = [rxagc copy];
  [v4 setRxagc:v20];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rssi = [(CTSignalStrengthMeasurements *)self rssi];
  [coderCopy encodeObject:rssi forKey:@"rssi"];

  rscp = [(CTSignalStrengthMeasurements *)self rscp];
  [coderCopy encodeObject:rscp forKey:@"rscp"];

  ecn0 = [(CTSignalStrengthMeasurements *)self ecn0];
  [coderCopy encodeObject:ecn0 forKey:@"ecn0"];

  rsrp = [(CTSignalStrengthMeasurements *)self rsrp];
  [coderCopy encodeObject:rsrp forKey:@"rsrp"];

  rsrq = [(CTSignalStrengthMeasurements *)self rsrq];
  [coderCopy encodeObject:rsrq forKey:@"rsrq"];

  v10 = [(CTSignalStrengthMeasurements *)self snr];
  [coderCopy encodeObject:v10 forKey:@"snr"];

  ecio = [(CTSignalStrengthMeasurements *)self ecio];
  [coderCopy encodeObject:ecio forKey:@"ecio"];

  rxagc = [(CTSignalStrengthMeasurements *)self rxagc];
  [coderCopy encodeObject:rxagc forKey:@"rxagc"];
}

- (CTSignalStrengthMeasurements)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CTSignalStrengthMeasurements;
  v5 = [(CTSignalStrengthMeasurements *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rssi"];
    rssi = v5->_rssi;
    v5->_rssi = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rscp"];
    rscp = v5->_rscp;
    v5->_rscp = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ecn0"];
    ecn0 = v5->_ecn0;
    v5->_ecn0 = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rsrp"];
    rsrp = v5->_rsrp;
    v5->_rsrp = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rsrq"];
    rsrq = v5->_rsrq;
    v5->_rsrq = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snr"];
    snr = v5->_snr;
    v5->_snr = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ecio"];
    ecio = v5->_ecio;
    v5->_ecio = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rxagc"];
    rxagc = v5->_rxagc;
    v5->_rxagc = v20;
  }

  return v5;
}

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AD60];
  ct_shortName = [(CTSignalStrengthMeasurements *)self ct_shortName];
  v5 = [v3 stringWithFormat:@"<%@", ct_shortName];

  rssi = [(CTSignalStrengthMeasurements *)self rssi];

  if (rssi)
  {
    rssi2 = [(CTSignalStrengthMeasurements *)self rssi];
    [v5 appendFormat:@" rssi=%@", rssi2];
  }

  rscp = [(CTSignalStrengthMeasurements *)self rscp];

  if (rscp)
  {
    rscp2 = [(CTSignalStrengthMeasurements *)self rscp];
    [v5 appendFormat:@", rscp=%@", rscp2];
  }

  ecn0 = [(CTSignalStrengthMeasurements *)self ecn0];

  if (ecn0)
  {
    ecn02 = [(CTSignalStrengthMeasurements *)self ecn0];
    [v5 appendFormat:@", ecn0=%@", ecn02];
  }

  rsrp = [(CTSignalStrengthMeasurements *)self rsrp];

  if (rsrp)
  {
    rsrp2 = [(CTSignalStrengthMeasurements *)self rsrp];
    [v5 appendFormat:@", rsrp=%@", rsrp2];
  }

  rsrq = [(CTSignalStrengthMeasurements *)self rsrq];

  if (rsrq)
  {
    rsrq2 = [(CTSignalStrengthMeasurements *)self rsrq];
    [v5 appendFormat:@", rsrq=%@", rsrq2];
  }

  v16 = [(CTSignalStrengthMeasurements *)self snr];

  if (v16)
  {
    v17 = [(CTSignalStrengthMeasurements *)self snr];
    [v5 appendFormat:@", snr=%@", v17];
  }

  ecio = [(CTSignalStrengthMeasurements *)self ecio];

  if (ecio)
  {
    ecio2 = [(CTSignalStrengthMeasurements *)self ecio];
    [v5 appendFormat:@", ecio=%@", ecio2];
  }

  rxagc = [(CTSignalStrengthMeasurements *)self rxagc];

  if (rxagc)
  {
    rxagc2 = [(CTSignalStrengthMeasurements *)self rxagc];
    [v5 appendFormat:@", rxagc=%@", rxagc2];
  }

  [v5 appendString:@">"];

  return v5;
}

@end