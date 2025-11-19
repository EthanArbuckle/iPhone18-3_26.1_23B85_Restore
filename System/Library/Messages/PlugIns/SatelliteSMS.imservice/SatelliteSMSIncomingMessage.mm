@interface SatelliteSMSIncomingMessage
- (SatelliteSMSIncomingMessage)initWithIncomingCTMessage:(id)a3 error:(id *)p_isa;
- (SatelliteSMSIncomingMessage)initWithTimestamp:(id)a3 pendingTotalCount:(int64_t)a4 pendingCount:(int64_t)a5 sourcePhoneNumber:(id)a6 codecID:(int64_t)a7 textPayload:(id)a8 uniqueID:(id)a9;
@end

@implementation SatelliteSMSIncomingMessage

- (SatelliteSMSIncomingMessage)initWithTimestamp:(id)a3 pendingTotalCount:(int64_t)a4 pendingCount:(int64_t)a5 sourcePhoneNumber:(id)a6 codecID:(int64_t)a7 textPayload:(id)a8 uniqueID:(id)a9
{
  v22 = a3;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = SatelliteSMSIncomingMessage;
  v18 = [(SatelliteSMSIncomingMessage *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_timestamp, a3);
    v19->_pendingTotalCount = a4;
    v19->_pendingCount = a5;
    objc_storeStrong(&v19->_sourcePhoneNumber, a6);
    v19->_codecID = a7;
    objc_storeStrong(&v19->_textPayload, a8);
    objc_storeStrong(&v19->_uniqueID, a9);
  }

  return v19;
}

- (SatelliteSMSIncomingMessage)initWithIncomingCTMessage:(id)a3 error:(id *)p_isa
{
  v6 = a3;
  if (sub_B8DC())
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v7 timestamp];
      v9 = [v7 pendingTotalCount];
      v10 = [v7 pendingCount];
      v11 = [v7 sourcePhoneNumber];
      v12 = [v7 codecID];
      v13 = [v7 textPayload];
      v14 = [v7 uniqueID];
      v15 = [(SatelliteSMSIncomingMessage *)self initWithTimestamp:v8 pendingTotalCount:v9 pendingCount:v10 sourcePhoneNumber:v11 codecID:v12 textPayload:v13 uniqueID:v14];

      v16 = [v7 context];

      context = v15->_context;
      v15->_context = v16;

      self = v15;
      p_isa = &self->super.isa;
      goto LABEL_13;
    }

    v21 = +[SatelliteSMSUtilities logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_C0B0(v21);
    }

    if (p_isa)
    {
      v23 = NSLocalizedDescriptionKey;
      v24 = @"Attempt to initialize SatelliteSMSIncomingMessage with something other than CTStewieSatSmsMessageIncoming";
      v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v20 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = +[SatelliteSMSUtilities logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_C0F4(v18);
    }

    if (p_isa)
    {
      v25 = NSLocalizedDescriptionKey;
      v26 = @"Attempt to initialize SatelliteSMSIncomingMessage when CTStewieSatSmsMessageIncoming class is not present";
      v19 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v20 = 0;
LABEL_12:
      *p_isa = [NSError errorWithDomain:@"com.apple.imservice.SatelliteSMS.error" code:v20 userInfo:v19];

      p_isa = 0;
    }
  }

LABEL_13:

  return p_isa;
}

@end