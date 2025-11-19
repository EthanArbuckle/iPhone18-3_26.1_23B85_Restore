@interface MXNetworkTransferMetric
- (MXNetworkTransferMetric)initWithCoder:(id)a3;
- (MXNetworkTransferMetric)initWithCumulativeWifiUploadMeasurement:(id)a3 cumulativeWifiDownloadMeasurement:(id)a4 cumulativeCellularUploadMeasurement:(id)a5 cumulativeCellularDownloadMeasurement:(id)a6;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXNetworkTransferMetric

- (MXNetworkTransferMetric)initWithCumulativeWifiUploadMeasurement:(id)a3 cumulativeWifiDownloadMeasurement:(id)a4 cumulativeCellularUploadMeasurement:(id)a5 cumulativeCellularDownloadMeasurement:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = MXNetworkTransferMetric;
  v15 = [(MXMetric *)&v22 init];
  if (!v15)
  {
    goto LABEL_8;
  }

  [v11 doubleValue];
  if (v16 >= 0.0)
  {
    [v12 doubleValue];
    if (v17 >= 0.0)
    {
      [v13 doubleValue];
      if (v18 >= 0.0)
      {
        [v14 doubleValue];
        if (v19 >= 0.0)
        {
          objc_storeStrong(&v15->_cumulativeWifiUpload, a3);
          objc_storeStrong(&v15->_cumulativeWifiDownload, a4);
          objc_storeStrong(&v15->_cumulativeCellularUpload, a5);
          objc_storeStrong(&v15->_cumulativeCellularDownload, a6);
LABEL_8:
          v20 = v15;
          goto LABEL_9;
        }
      }
    }
  }

  v20 = 0;
LABEL_9:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  cumulativeWifiUpload = self->_cumulativeWifiUpload;
  v5 = a3;
  [v5 encodeObject:cumulativeWifiUpload forKey:@"cumulativeWifiUpload"];
  [v5 encodeObject:self->_cumulativeWifiDownload forKey:@"cumulativeWifiDownload"];
  [v5 encodeObject:self->_cumulativeCellularUpload forKey:@"cumulativeCellularUpload"];
  [v5 encodeObject:self->_cumulativeCellularDownload forKey:@"cumulativeCellularDownload"];
}

- (MXNetworkTransferMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MXNetworkTransferMetric;
  v5 = [(MXMetric *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeWifiUpload"];
    cumulativeWifiUpload = v5->_cumulativeWifiUpload;
    v5->_cumulativeWifiUpload = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeWifiDownload"];
    cumulativeWifiDownload = v5->_cumulativeWifiDownload;
    v5->_cumulativeWifiDownload = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeCellularUpload"];
    cumulativeCellularUpload = v5->_cumulativeCellularUpload;
    v5->_cumulativeCellularUpload = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeCellularDownload"];
    cumulativeCellularDownload = v5->_cumulativeCellularDownload;
    v5->_cumulativeCellularDownload = v12;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_cumulativeWifiUpload)
  {
    v4 = [(MXMetric *)self measurementFormatter];
    v5 = [v4 stringFromMeasurement:self->_cumulativeWifiUpload];
    [v3 setObject:v5 forKey:@"cumulativeWifiUpload"];
  }

  if (self->_cumulativeWifiDownload)
  {
    v6 = [(MXMetric *)self measurementFormatter];
    v7 = [v6 stringFromMeasurement:self->_cumulativeWifiDownload];
    [v3 setObject:v7 forKey:@"cumulativeWifiDownload"];
  }

  if (self->_cumulativeCellularUpload)
  {
    v8 = [(MXMetric *)self measurementFormatter];
    v9 = [v8 stringFromMeasurement:self->_cumulativeCellularUpload];
    [v3 setObject:v9 forKey:@"cumulativeCellularUpload"];
  }

  if (self->_cumulativeCellularDownload)
  {
    v10 = [(MXMetric *)self measurementFormatter];
    v11 = [v10 stringFromMeasurement:self->_cumulativeCellularDownload];
    [v3 setObject:v11 forKey:@"cumulativeCellularDownload"];
  }

  return v3;
}

@end