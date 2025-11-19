@interface MTAStateStoreEvent
+ (id)eventWithType:(int64_t)a3 identifier:(id)a4 value:(double)a5 indexPath:(id)a6;
- (MTAStateStoreEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTAStateStoreEvent

+ (id)eventWithType:(int64_t)a3 identifier:(id)a4 value:(double)a5 indexPath:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = objc_opt_new();
  [v11 setEventType:a3];
  [v11 setValue:a5];
  [v11 setIdentifier:v10];

  [v11 setIndexPath:v9];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  eventType = self->_eventType;
  v7 = a3;
  v5 = [NSNumber numberWithInteger:eventType];
  [v7 encodeObject:v5 forKey:@"kMTAStateStoreEventType"];

  v6 = [NSNumber numberWithDouble:self->_value];
  [v7 encodeObject:v6 forKey:@"kMTAStateStoreEventValue"];

  [v7 encodeObject:self->_identifier forKey:@"kMTAStateStoreEventIdentifier"];
  [v7 encodeObject:self->_indexPath forKey:@"kMTAStateStoreEventIndexPath"];
}

- (MTAStateStoreEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MTAStateStoreEvent;
  v5 = [(MTAStateStoreEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMTAStateStoreEventType"];
    v5->_eventType = [v6 integerValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMTAStateStoreEventValue"];
    [v7 floatValue];
    v5->_value = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMTAStateStoreEventIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMTAStateStoreEventIndexPath"];
    indexPath = v5->_indexPath;
    v5->_indexPath = v11;
  }

  return v5;
}

@end