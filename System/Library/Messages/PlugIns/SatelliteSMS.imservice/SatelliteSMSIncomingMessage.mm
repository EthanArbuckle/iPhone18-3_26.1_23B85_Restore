@interface SatelliteSMSIncomingMessage
- (SatelliteSMSIncomingMessage)initWithIncomingCTMessage:(id)message error:(id *)p_isa;
- (SatelliteSMSIncomingMessage)initWithTimestamp:(id)timestamp pendingTotalCount:(int64_t)count pendingCount:(int64_t)pendingCount sourcePhoneNumber:(id)number codecID:(int64_t)d textPayload:(id)payload uniqueID:(id)iD;
@end

@implementation SatelliteSMSIncomingMessage

- (SatelliteSMSIncomingMessage)initWithTimestamp:(id)timestamp pendingTotalCount:(int64_t)count pendingCount:(int64_t)pendingCount sourcePhoneNumber:(id)number codecID:(int64_t)d textPayload:(id)payload uniqueID:(id)iD
{
  timestampCopy = timestamp;
  numberCopy = number;
  payloadCopy = payload;
  iDCopy = iD;
  v23.receiver = self;
  v23.super_class = SatelliteSMSIncomingMessage;
  v18 = [(SatelliteSMSIncomingMessage *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_timestamp, timestamp);
    v19->_pendingTotalCount = count;
    v19->_pendingCount = pendingCount;
    objc_storeStrong(&v19->_sourcePhoneNumber, number);
    v19->_codecID = d;
    objc_storeStrong(&v19->_textPayload, payload);
    objc_storeStrong(&v19->_uniqueID, iD);
  }

  return v19;
}

- (SatelliteSMSIncomingMessage)initWithIncomingCTMessage:(id)message error:(id *)p_isa
{
  messageCopy = message;
  if (sub_B8DC())
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = messageCopy;
      timestamp = [v7 timestamp];
      pendingTotalCount = [v7 pendingTotalCount];
      pendingCount = [v7 pendingCount];
      sourcePhoneNumber = [v7 sourcePhoneNumber];
      codecID = [v7 codecID];
      textPayload = [v7 textPayload];
      uniqueID = [v7 uniqueID];
      v15 = [(SatelliteSMSIncomingMessage *)self initWithTimestamp:timestamp pendingTotalCount:pendingTotalCount pendingCount:pendingCount sourcePhoneNumber:sourcePhoneNumber codecID:codecID textPayload:textPayload uniqueID:uniqueID];

      context = [v7 context];

      context = v15->_context;
      v15->_context = context;

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