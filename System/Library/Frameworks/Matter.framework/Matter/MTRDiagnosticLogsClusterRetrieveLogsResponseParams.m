@interface MTRDiagnosticLogsClusterRetrieveLogsResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)init;
- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDiagnosticLogsClusterRetrieveLogsResponseParams

- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)init
{
  v11.receiver = self;
  v11.super_class = MTRDiagnosticLogsClusterRetrieveLogsResponseParams;
  v2 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    v5 = [MEMORY[0x277CBEA90] data];
    logContent = v3->_logContent;
    v3->_logContent = v5;

    utcTimeStamp = v3->_utcTimeStamp;
    v3->_utcTimeStamp = 0;

    timeSinceBoot = v3->_timeSinceBoot;
    v3->_timeSinceBoot = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDiagnosticLogsClusterRetrieveLogsResponseParams);
  v5 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self status];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 setStatus:v5];

  v6 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self logContent];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 setLogContent:v6];

  v7 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self utcTimeStamp];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 setUtcTimeStamp:v7];

  v8 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self timeSinceBoot];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 setTimeSinceBoot:v8];

  v9 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self timedInvokeTimeoutMs];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 setTimedInvokeTimeoutMs:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  status = self->_status;
  v7 = [(NSData *)self->_logContent base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: status:%@ logContent:%@; utcTimeStamp:%@; timeSinceBoot:%@; >", v5, status, v7, self->_utcTimeStamp, self->_timeSinceBoot];;

  return v8;
}

- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v19.receiver = self;
  v19.super_class = MTRDiagnosticLogsClusterRetrieveLogsResponseParams;
  v7 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)&v19 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:50 commandID:1 error:error];
  if (v18)
  {
    sub_2393C5AAC(v17);
    sub_2393C5ADC(v17, *(v18 + 1), *(v18 + 3));
    v8 = sub_2393C6FD0(v17, 256);
    if (!v8)
    {
      v12[0] = 0;
      v16 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = sub_238F10328(v12, v17);
      if (!v8)
      {
        v8 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v18);
LABEL_10:

  return v10;
}

- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRDiagnosticLogsClusterRetrieveLogsResponseParams;
  v4 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CBEA90] dataWithBytes:*(a3 + 1) length:*(a3 + 2)];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setLogContent:v6];

  if (*(a3 + 24) == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(a3 + 24)];
    [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setUtcTimeStamp:v7];
  }

  else
  {
    [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setUtcTimeStamp:0];
  }

  v9 = *(a3 + 40);
  v8 = a3 + 40;
  if (v9 == 1)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v8)];
    [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setTimeSinceBoot:v10];
  }

  else
  {
    [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setTimeSinceBoot:0];
  }

  v11 = 0;
  v12 = 0;
  result.mFile = v12;
  result.mError = v11;
  result.mLine = HIDWORD(v11);
  return result;
}

@end