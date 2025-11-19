@interface SatelliteSMSOutgoingMessage
- (SatelliteSMSOutgoingMessage)initWithDestinationPhoneNumber:(id)a3 codecID:(int64_t)a4 textPayload:(id)a5 notifyDowngrade:(BOOL)a6;
- (id)makeOutgoingMessageWithError:(id *)a3;
@end

@implementation SatelliteSMSOutgoingMessage

- (SatelliteSMSOutgoingMessage)initWithDestinationPhoneNumber:(id)a3 codecID:(int64_t)a4 textPayload:(id)a5 notifyDowngrade:(BOOL)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = SatelliteSMSOutgoingMessage;
  v13 = [(SatelliteSMSOutgoingMessage *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_destinationPhoneNumber, a3);
    v14->_codecID = a4;
    objc_storeStrong(&v14->_textPayload, a5);
    v14->_notifyDowngrade = a6;
  }

  return v14;
}

- (id)makeOutgoingMessageWithError:(id *)a3
{
  v5 = sub_BA14();
  if (v5)
  {
    v6 = [v5 alloc];
    v7 = objc_opt_respondsToSelector();
    v8 = v6;
    v9 = [(SatelliteSMSOutgoingMessage *)self context];
    v10 = [(SatelliteSMSOutgoingMessage *)self destinationPhoneNumber];
    v11 = [(SatelliteSMSOutgoingMessage *)self codecID];
    v12 = [(SatelliteSMSOutgoingMessage *)self textPayload];
    if (v7)
    {
      v13 = [v8 initWithContext:v9 destinationPhoneNumber:v10 codecID:v11 textPayload:v12 notifyDowngrade:-[SatelliteSMSOutgoingMessage notifyDowngrade](self error:{"notifyDowngrade"), a3}];
    }

    else
    {
      v13 = [v8 initWithContext:v9 destinationPhoneNumber:v10 codecID:v11 textPayload:v12 error:a3];
    }

    a3 = v13;
  }

  else
  {
    v14 = +[SatelliteSMSUtilities logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_C0F4(v14);
    }

    if (a3)
    {
      v17 = NSLocalizedDescriptionKey;
      v18 = @"Attempt to initialize SatelliteSMSIncomingMessage when CTStewieSatSmsMessageIncoming class is not present";
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *a3 = [NSError errorWithDomain:@"com.apple.imservice.SatelliteSMS.error" code:0 userInfo:v15];

      a3 = 0;
    }
  }

  return a3;
}

@end