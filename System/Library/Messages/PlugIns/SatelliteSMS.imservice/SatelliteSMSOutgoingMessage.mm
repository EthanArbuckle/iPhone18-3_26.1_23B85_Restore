@interface SatelliteSMSOutgoingMessage
- (SatelliteSMSOutgoingMessage)initWithDestinationPhoneNumber:(id)number codecID:(int64_t)d textPayload:(id)payload notifyDowngrade:(BOOL)downgrade;
- (id)makeOutgoingMessageWithError:(id *)error;
@end

@implementation SatelliteSMSOutgoingMessage

- (SatelliteSMSOutgoingMessage)initWithDestinationPhoneNumber:(id)number codecID:(int64_t)d textPayload:(id)payload notifyDowngrade:(BOOL)downgrade
{
  numberCopy = number;
  payloadCopy = payload;
  v16.receiver = self;
  v16.super_class = SatelliteSMSOutgoingMessage;
  v13 = [(SatelliteSMSOutgoingMessage *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_destinationPhoneNumber, number);
    v14->_codecID = d;
    objc_storeStrong(&v14->_textPayload, payload);
    v14->_notifyDowngrade = downgrade;
  }

  return v14;
}

- (id)makeOutgoingMessageWithError:(id *)error
{
  v5 = sub_BA14();
  if (v5)
  {
    v6 = [v5 alloc];
    v7 = objc_opt_respondsToSelector();
    v8 = v6;
    context = [(SatelliteSMSOutgoingMessage *)self context];
    destinationPhoneNumber = [(SatelliteSMSOutgoingMessage *)self destinationPhoneNumber];
    codecID = [(SatelliteSMSOutgoingMessage *)self codecID];
    textPayload = [(SatelliteSMSOutgoingMessage *)self textPayload];
    if (v7)
    {
      v13 = [v8 initWithContext:context destinationPhoneNumber:destinationPhoneNumber codecID:codecID textPayload:textPayload notifyDowngrade:-[SatelliteSMSOutgoingMessage notifyDowngrade](self error:{"notifyDowngrade"), error}];
    }

    else
    {
      v13 = [v8 initWithContext:context destinationPhoneNumber:destinationPhoneNumber codecID:codecID textPayload:textPayload error:error];
    }

    error = v13;
  }

  else
  {
    v14 = +[SatelliteSMSUtilities logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_C0F4(v14);
    }

    if (error)
    {
      v17 = NSLocalizedDescriptionKey;
      v18 = @"Attempt to initialize SatelliteSMSIncomingMessage when CTStewieSatSmsMessageIncoming class is not present";
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *error = [NSError errorWithDomain:@"com.apple.imservice.SatelliteSMS.error" code:0 userInfo:v15];

      error = 0;
    }
  }

  return error;
}

@end