@interface APSPubSubRequest
- (APSPubSubRequest)initWithMetadata:(id)metadata messageID:(id)d userName:(id)name token:(id)token subscriptionType:(int)type connectionType:(int64_t)connectionType retryCount:(unint64_t)count;
- (APSPubSubRequest)initWithSubscriptionChannels:(id)channels unsubscriptionChannels:(id)unsubscriptionChannels messageID:(id)d userName:(id)name token:(id)token subscriptionType:(int)type connectionType:(int64_t)connectionType retryCount:(unint64_t)self0;
- (BOOL)isEqual:(id)equal;
- (NSData)metadata;
- (id)description;
@end

@implementation APSPubSubRequest

- (APSPubSubRequest)initWithSubscriptionChannels:(id)channels unsubscriptionChannels:(id)unsubscriptionChannels messageID:(id)d userName:(id)name token:(id)token subscriptionType:(int)type connectionType:(int64_t)connectionType retryCount:(unint64_t)self0
{
  channelsCopy = channels;
  unsubscriptionChannelsCopy = unsubscriptionChannels;
  dCopy = d;
  nameCopy = name;
  tokenCopy = token;
  v25.receiver = self;
  v25.super_class = APSPubSubRequest;
  v20 = [(APSPubSubRequest *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_subscriptionChannels, channels);
    objc_storeStrong(&v21->_unsubscriptionChannels, unsubscriptionChannels);
    objc_storeStrong(&v21->_messageID, d);
    objc_storeStrong(&v21->_userName, name);
    objc_storeStrong(&v21->_token, token);
    v21->_subscriptionType = type;
    v21->_connectionType = connectionType;
    v21->_retryCount = count;
  }

  return v21;
}

- (APSPubSubRequest)initWithMetadata:(id)metadata messageID:(id)d userName:(id)name token:(id)token subscriptionType:(int)type connectionType:(int64_t)connectionType retryCount:(unint64_t)count
{
  metadataCopy = metadata;
  dCopy = d;
  nameCopy = name;
  tokenCopy = token;
  v23.receiver = self;
  v23.super_class = APSPubSubRequest;
  v19 = [(APSPubSubRequest *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_metadata, metadata);
    objc_storeStrong(&v20->_messageID, d);
    objc_storeStrong(&v20->_userName, name);
    objc_storeStrong(&v20->_token, token);
    v20->_subscriptionType = type;
    v20->_connectionType = connectionType;
    v20->_retryCount = count;
  }

  return v20;
}

- (id)description
{
  messageID = [(APSPubSubRequest *)self messageID];
  v4 = [NSString stringWithFormat:@"<APSPubsubRequest %p: %@>", self, messageID];

  return v4;
}

- (NSData)metadata
{
  metadata = self->_metadata;
  if (metadata)
  {
    data = metadata;
    goto LABEL_9;
  }

  subscriptionChannels = [(APSPubSubRequest *)self subscriptionChannels];
  if ([subscriptionChannels count])
  {
  }

  else
  {
    unsubscriptionChannels = [(APSPubSubRequest *)self unsubscriptionChannels];
    v7 = [unsubscriptionChannels count];

    if (!v7)
    {
      data = 0;
      goto LABEL_9;
    }
  }

  v8 = +[APSLog courierOversized];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_10001B3FC([(APSPubSubRequest *)self connectionType]);
    subscriptionChannels2 = [(APSPubSubRequest *)self subscriptionChannels];
    unsubscriptionChannels2 = [(APSPubSubRequest *)self unsubscriptionChannels];
    v16 = 138413058;
    selfCopy = self;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = subscriptionChannels2;
    v22 = 2112;
    v23 = unsubscriptionChannels2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending pubsub request %@ on interface %@ with subscription channels: %@ unsubscription channels: %@", &v16, 0x2Au);
  }

  subscriptionChannels3 = [(APSPubSubRequest *)self subscriptionChannels];
  unsubscriptionChannels3 = [(APSPubSubRequest *)self unsubscriptionChannels];
  v14 = [PSChannelSubscriptionsRequestPayload createPayloadForSubscriptionChannels:subscriptionChannels3 unsubscriptionChannels:unsubscriptionChannels3 subscriptionType:[(APSPubSubRequest *)self subscriptionType]];
  data = [v14 data];

LABEL_9:

  return data;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    messageID = [v5 messageID];
    messageID2 = [(APSPubSubRequest *)self messageID];
    if (messageID == messageID2)
    {
      subscriptionChannels = [v5 subscriptionChannels];
      subscriptionChannels2 = [(APSPubSubRequest *)self subscriptionChannels];
      if ([subscriptionChannels isEqual:subscriptionChannels2])
      {
        unsubscriptionChannels = [v5 unsubscriptionChannels];
        unsubscriptionChannels2 = [(APSPubSubRequest *)self unsubscriptionChannels];
        v8 = [unsubscriptionChannels isEqual:unsubscriptionChannels2];
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