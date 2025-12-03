@interface APSTTLCollectionItemInfo
- (APSTTLCollectionItemInfo)initWithTTLInSeconds:(double)seconds state:(unsigned int)state withTopic:(id)topic;
@end

@implementation APSTTLCollectionItemInfo

- (APSTTLCollectionItemInfo)initWithTTLInSeconds:(double)seconds state:(unsigned int)state withTopic:(id)topic
{
  topicCopy = topic;
  v14.receiver = self;
  v14.super_class = APSTTLCollectionItemInfo;
  v10 = [(APSTTLCollectionItemInfo *)&v14 init];
  if (v10)
  {
    v11 = [[NSDate alloc] initWithTimeIntervalSinceNow:seconds];
    evictionDate = v10->_evictionDate;
    v10->_evictionDate = v11;

    v10->_itemState = state;
    objc_storeStrong(&v10->_topic, topic);
  }

  return v10;
}

@end