@interface APSPubSubRequest
- (APSPubSubRequest)initWithMetadata:(id)a3 messageID:(id)a4 userName:(id)a5 token:(id)a6 subscriptionType:(int)a7 connectionType:(int64_t)a8 retryCount:(unint64_t)a9;
- (APSPubSubRequest)initWithSubscriptionChannels:(id)a3 unsubscriptionChannels:(id)a4 messageID:(id)a5 userName:(id)a6 token:(id)a7 subscriptionType:(int)a8 connectionType:(int64_t)a9 retryCount:(unint64_t)a10;
- (BOOL)isEqual:(id)a3;
- (NSData)metadata;
- (id)description;
@end

@implementation APSPubSubRequest

- (APSPubSubRequest)initWithSubscriptionChannels:(id)a3 unsubscriptionChannels:(id)a4 messageID:(id)a5 userName:(id)a6 token:(id)a7 subscriptionType:(int)a8 connectionType:(int64_t)a9 retryCount:(unint64_t)a10
{
  v17 = a3;
  v18 = a4;
  v24 = a5;
  v23 = a6;
  v19 = a7;
  v25.receiver = self;
  v25.super_class = APSPubSubRequest;
  v20 = [(APSPubSubRequest *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_subscriptionChannels, a3);
    objc_storeStrong(&v21->_unsubscriptionChannels, a4);
    objc_storeStrong(&v21->_messageID, a5);
    objc_storeStrong(&v21->_userName, a6);
    objc_storeStrong(&v21->_token, a7);
    v21->_subscriptionType = a8;
    v21->_connectionType = a9;
    v21->_retryCount = a10;
  }

  return v21;
}

- (APSPubSubRequest)initWithMetadata:(id)a3 messageID:(id)a4 userName:(id)a5 token:(id)a6 subscriptionType:(int)a7 connectionType:(int64_t)a8 retryCount:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v22 = a5;
  v18 = a6;
  v23.receiver = self;
  v23.super_class = APSPubSubRequest;
  v19 = [(APSPubSubRequest *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_metadata, a3);
    objc_storeStrong(&v20->_messageID, a4);
    objc_storeStrong(&v20->_userName, a5);
    objc_storeStrong(&v20->_token, a6);
    v20->_subscriptionType = a7;
    v20->_connectionType = a8;
    v20->_retryCount = a9;
  }

  return v20;
}

- (id)description
{
  v3 = [(APSPubSubRequest *)self messageID];
  v4 = [NSString stringWithFormat:@"<APSPubsubRequest %p: %@>", self, v3];

  return v4;
}

- (NSData)metadata
{
  metadata = self->_metadata;
  if (metadata)
  {
    v3 = metadata;
    goto LABEL_9;
  }

  v5 = [(APSPubSubRequest *)self subscriptionChannels];
  if ([v5 count])
  {
  }

  else
  {
    v6 = [(APSPubSubRequest *)self unsubscriptionChannels];
    v7 = [v6 count];

    if (!v7)
    {
      v3 = 0;
      goto LABEL_9;
    }
  }

  v8 = +[APSLog courierOversized];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_10001B3FC([(APSPubSubRequest *)self connectionType]);
    v10 = [(APSPubSubRequest *)self subscriptionChannels];
    v11 = [(APSPubSubRequest *)self unsubscriptionChannels];
    v16 = 138413058;
    v17 = self;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending pubsub request %@ on interface %@ with subscription channels: %@ unsubscription channels: %@", &v16, 0x2Au);
  }

  v12 = [(APSPubSubRequest *)self subscriptionChannels];
  v13 = [(APSPubSubRequest *)self unsubscriptionChannels];
  v14 = [PSChannelSubscriptionsRequestPayload createPayloadForSubscriptionChannels:v12 unsubscriptionChannels:v13 subscriptionType:[(APSPubSubRequest *)self subscriptionType]];
  v3 = [v14 data];

LABEL_9:

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 messageID];
    v7 = [(APSPubSubRequest *)self messageID];
    if (v6 == v7)
    {
      v9 = [v5 subscriptionChannels];
      v10 = [(APSPubSubRequest *)self subscriptionChannels];
      if ([v9 isEqual:v10])
      {
        v11 = [v5 unsubscriptionChannels];
        v12 = [(APSPubSubRequest *)self unsubscriptionChannels];
        v8 = [v11 isEqual:v12];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end