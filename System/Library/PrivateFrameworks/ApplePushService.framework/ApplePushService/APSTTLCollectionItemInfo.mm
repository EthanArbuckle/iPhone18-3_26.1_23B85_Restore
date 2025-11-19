@interface APSTTLCollectionItemInfo
- (APSTTLCollectionItemInfo)initWithTTLInSeconds:(double)a3 state:(unsigned int)a4 withTopic:(id)a5;
@end

@implementation APSTTLCollectionItemInfo

- (APSTTLCollectionItemInfo)initWithTTLInSeconds:(double)a3 state:(unsigned int)a4 withTopic:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = APSTTLCollectionItemInfo;
  v10 = [(APSTTLCollectionItemInfo *)&v14 init];
  if (v10)
  {
    v11 = [[NSDate alloc] initWithTimeIntervalSinceNow:a3];
    evictionDate = v10->_evictionDate;
    v10->_evictionDate = v11;

    v10->_itemState = a4;
    objc_storeStrong(&v10->_topic, a5);
  }

  return v10;
}

@end