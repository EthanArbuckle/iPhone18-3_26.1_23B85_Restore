@interface MXNetworkTransferMetric
- (MXNetworkTransferMetric)initWithCoder:(id)coder;
- (MXNetworkTransferMetric)initWithCumulativeWifiUploadMeasurement:(id)measurement cumulativeWifiDownloadMeasurement:(id)downloadMeasurement cumulativeCellularUploadMeasurement:(id)uploadMeasurement cumulativeCellularDownloadMeasurement:(id)cellularDownloadMeasurement;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXNetworkTransferMetric

- (MXNetworkTransferMetric)initWithCumulativeWifiUploadMeasurement:(id)measurement cumulativeWifiDownloadMeasurement:(id)downloadMeasurement cumulativeCellularUploadMeasurement:(id)uploadMeasurement cumulativeCellularDownloadMeasurement:(id)cellularDownloadMeasurement
{
  measurementCopy = measurement;
  downloadMeasurementCopy = downloadMeasurement;
  uploadMeasurementCopy = uploadMeasurement;
  cellularDownloadMeasurementCopy = cellularDownloadMeasurement;
  v22.receiver = self;
  v22.super_class = MXNetworkTransferMetric;
  v15 = [(MXMetric *)&v22 init];
  if (!v15)
  {
    goto LABEL_8;
  }

  [measurementCopy doubleValue];
  if (v16 >= 0.0)
  {
    [downloadMeasurementCopy doubleValue];
    if (v17 >= 0.0)
    {
      [uploadMeasurementCopy doubleValue];
      if (v18 >= 0.0)
      {
        [cellularDownloadMeasurementCopy doubleValue];
        if (v19 >= 0.0)
        {
          objc_storeStrong(&v15->_cumulativeWifiUpload, measurement);
          objc_storeStrong(&v15->_cumulativeWifiDownload, downloadMeasurement);
          objc_storeStrong(&v15->_cumulativeCellularUpload, uploadMeasurement);
          objc_storeStrong(&v15->_cumulativeCellularDownload, cellularDownloadMeasurement);
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

- (void)encodeWithCoder:(id)coder
{
  cumulativeWifiUpload = self->_cumulativeWifiUpload;
  coderCopy = coder;
  [coderCopy encodeObject:cumulativeWifiUpload forKey:@"cumulativeWifiUpload"];
  [coderCopy encodeObject:self->_cumulativeWifiDownload forKey:@"cumulativeWifiDownload"];
  [coderCopy encodeObject:self->_cumulativeCellularUpload forKey:@"cumulativeCellularUpload"];
  [coderCopy encodeObject:self->_cumulativeCellularDownload forKey:@"cumulativeCellularDownload"];
}

- (MXNetworkTransferMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MXNetworkTransferMetric;
  v5 = [(MXMetric *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeWifiUpload"];
    cumulativeWifiUpload = v5->_cumulativeWifiUpload;
    v5->_cumulativeWifiUpload = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeWifiDownload"];
    cumulativeWifiDownload = v5->_cumulativeWifiDownload;
    v5->_cumulativeWifiDownload = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeCellularUpload"];
    cumulativeCellularUpload = v5->_cumulativeCellularUpload;
    v5->_cumulativeCellularUpload = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cumulativeCellularDownload"];
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
    measurementFormatter = [(MXMetric *)self measurementFormatter];
    v5 = [measurementFormatter stringFromMeasurement:self->_cumulativeWifiUpload];
    [v3 setObject:v5 forKey:@"cumulativeWifiUpload"];
  }

  if (self->_cumulativeWifiDownload)
  {
    measurementFormatter2 = [(MXMetric *)self measurementFormatter];
    v7 = [measurementFormatter2 stringFromMeasurement:self->_cumulativeWifiDownload];
    [v3 setObject:v7 forKey:@"cumulativeWifiDownload"];
  }

  if (self->_cumulativeCellularUpload)
  {
    measurementFormatter3 = [(MXMetric *)self measurementFormatter];
    v9 = [measurementFormatter3 stringFromMeasurement:self->_cumulativeCellularUpload];
    [v3 setObject:v9 forKey:@"cumulativeCellularUpload"];
  }

  if (self->_cumulativeCellularDownload)
  {
    measurementFormatter4 = [(MXMetric *)self measurementFormatter];
    v11 = [measurementFormatter4 stringFromMeasurement:self->_cumulativeCellularDownload];
    [v3 setObject:v11 forKey:@"cumulativeCellularDownload"];
  }

  return v3;
}

@end