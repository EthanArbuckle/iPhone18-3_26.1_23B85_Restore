@interface MTAStateStoreEvent
+ (id)eventWithType:(int64_t)type identifier:(id)identifier value:(double)value indexPath:(id)path;
- (MTAStateStoreEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTAStateStoreEvent

+ (id)eventWithType:(int64_t)type identifier:(id)identifier value:(double)value indexPath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  v11 = objc_opt_new();
  [v11 setEventType:type];
  [v11 setValue:value];
  [v11 setIdentifier:identifierCopy];

  [v11 setIndexPath:pathCopy];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  eventType = self->_eventType;
  coderCopy = coder;
  v5 = [NSNumber numberWithInteger:eventType];
  [coderCopy encodeObject:v5 forKey:@"kMTAStateStoreEventType"];

  v6 = [NSNumber numberWithDouble:self->_value];
  [coderCopy encodeObject:v6 forKey:@"kMTAStateStoreEventValue"];

  [coderCopy encodeObject:self->_identifier forKey:@"kMTAStateStoreEventIdentifier"];
  [coderCopy encodeObject:self->_indexPath forKey:@"kMTAStateStoreEventIndexPath"];
}

- (MTAStateStoreEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MTAStateStoreEvent;
  v5 = [(MTAStateStoreEvent *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMTAStateStoreEventType"];
    v5->_eventType = [v6 integerValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMTAStateStoreEventValue"];
    [v7 floatValue];
    v5->_value = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMTAStateStoreEventIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMTAStateStoreEventIndexPath"];
    indexPath = v5->_indexPath;
    v5->_indexPath = v11;
  }

  return v5;
}

@end