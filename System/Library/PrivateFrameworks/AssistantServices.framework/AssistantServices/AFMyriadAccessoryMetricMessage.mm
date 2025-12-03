@interface AFMyriadAccessoryMetricMessage
- (AFMyriadAccessoryMetricMessage)initWithDataPayload:(id)payload;
- (AFMyriadAccessoryMetricMessage)initWithMetricData:(id)data;
- (BOOL)_decodeMetricDataPayload:(id)payload decodedPayload:(MyriadMetricsDataV1 *)decodedPayload;
- (MyriadMetricsDataV1)messageAsStruct;
- (id)_extractMetricDataFromDataPayload:(id)payload;
- (id)messageAsData;
@end

@implementation AFMyriadAccessoryMetricMessage

- (BOOL)_decodeMetricDataPayload:(id)payload decodedPayload:(MyriadMetricsDataV1 *)decodedPayload
{
  v19 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v6 = payloadCopy;
  if (payloadCopy && [payloadCopy length])
  {
    v14 = 0;
    [v6 getBytes:&v14 range:{0, 1}];
    v7 = v14 != 0;
    if (v14)
    {
      v8 = [v6 length];
      *&decodedPayload->version = 0u;
      *&decodedPayload->eventType = 0u;
      if (v8 >= 0xE8)
      {
        v9 = 232;
      }

      else
      {
        v9 = v8;
      }

      *&decodedPayload->state = 0uLL;
      *&decodedPayload->advInterval = 0uLL;
      *&decodedPayload->previousDecisionTime = 0uLL;
      *&decodedPayload->electionParticipantGoodnessScore[5] = 0uLL;
      *&decodedPayload->electionParticipantGoodnessScore[21] = 0uLL;
      *&decodedPayload->electionParticipantGoodnessScore[37] = 0uLL;
      *&decodedPayload->electionParticipantDeviceType[3] = 0uLL;
      *&decodedPayload->electionParticipantDeviceType[19] = 0uLL;
      *&decodedPayload->electionParticipantDeviceType[35] = 0uLL;
      *&decodedPayload->electionParticipantProductType[1] = 0uLL;
      *&decodedPayload->electionParticipantProductType[17] = 0uLL;
      *&decodedPayload->electionParticipantProductType[33] = 0uLL;
      *&decodedPayload->electionParticipantProductType[49] = 0;
      memcpy(decodedPayload, [v6 bytes], v9);
    }

    else
    {
      v13 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "[AFMyriadAccessoryMetricMessage _decodeMetricDataPayload:decodedPayload:]";
        v17 = 1024;
        LODWORD(v18) = 0;
        _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s Analytics data has a invalid version %d", buf, 0x12u);
      }
    }
  }

  else
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[AFMyriadAccessoryMetricMessage _decodeMetricDataPayload:decodedPayload:]";
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s Invalid analytics data payload: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_extractMetricDataFromDataPayload:(id)payload
{
  payloadCopy = payload;
  v4 = +[AFMyriadMetrics sharedInstance];
  v5 = [v4 isMyriadMetricsMessage:payloadCopy];

  if (v5)
  {
    v6 = [payloadCopy objectForKeyedSubscript:@"accessoryMetrics"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MyriadMetricsDataV1)messageAsStruct
{
  v3 = *&self->electionParticipantProductType[9];
  v4 = *&self->electionParticipantProductType[41];
  *&retstr->electionParticipantProductType[17] = *&self->electionParticipantProductType[25];
  *&retstr->electionParticipantProductType[33] = v4;
  *&retstr->electionParticipantProductType[49] = *&self[1].version;
  v5 = *&self->electionParticipantGoodnessScore[45];
  v6 = *&self->electionParticipantDeviceType[27];
  *&retstr->electionParticipantDeviceType[3] = *&self->electionParticipantDeviceType[11];
  *&retstr->electionParticipantDeviceType[19] = v6;
  *&retstr->electionParticipantDeviceType[35] = *&self->electionParticipantDeviceType[43];
  *&retstr->electionParticipantProductType[1] = v3;
  v7 = *&self->coordinationAllowed;
  v8 = *&self->electionParticipantGoodnessScore[13];
  *&retstr->previousDecisionTime = *&self->deviceGroup;
  *&retstr->electionParticipantGoodnessScore[5] = v8;
  *&retstr->electionParticipantGoodnessScore[21] = *&self->electionParticipantGoodnessScore[29];
  *&retstr->electionParticipantGoodnessScore[37] = v5;
  v9 = *&self->requestType;
  *&retstr->version = *&self->sessionId;
  *&retstr->eventType = v9;
  *&retstr->state = *&self->advDelay;
  *&retstr->advInterval = v7;
  return self;
}

- (id)messageAsData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v3 appendBytes:&self->_metric length:232];

  return v3;
}

- (AFMyriadAccessoryMetricMessage)initWithDataPayload:(id)payload
{
  payloadCopy = payload;
  v10.receiver = self;
  v10.super_class = AFMyriadAccessoryMetricMessage;
  v5 = [(AFMyriadAccessoryMetricMessage *)&v10 init];
  v6 = v5;
  if (!v5)
  {
LABEL_4:
    v7 = v6;
    goto LABEL_6;
  }

  v7 = [(AFMyriadAccessoryMetricMessage *)v5 _extractMetricDataFromDataPayload:payloadCopy];
  if (v7)
  {
    v8 = [(AFMyriadAccessoryMetricMessage *)v6 _decodeMetricDataPayload:v7 decodedPayload:&v6->_metric];

    if (!v8)
    {
      v7 = 0;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return v7;
}

- (AFMyriadAccessoryMetricMessage)initWithMetricData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = AFMyriadAccessoryMetricMessage;
  v5 = [(AFMyriadAccessoryMetricMessage *)&v9 init];
  v6 = v5;
  if (v5 && ![(AFMyriadAccessoryMetricMessage *)v5 _decodeMetricDataPayload:dataCopy decodedPayload:&v5->_metric])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

@end