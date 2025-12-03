@interface _ANESharedEvents
+ (_ANESharedEvents)sharedEventsWithSignalEvents:(id)events waitEvents:(id)waitEvents;
- (_ANESharedEvents)initWithSignalEvents:(id)events waitEvents:(id)waitEvents;
- (id)description;
@end

@implementation _ANESharedEvents

- (_ANESharedEvents)initWithSignalEvents:(id)events waitEvents:(id)waitEvents
{
  eventsCopy = events;
  waitEventsCopy = waitEvents;
  if (([eventsCopy count] || objc_msgSend(waitEventsCopy, "count")) && objc_msgSend(eventsCopy, "count") <= 0x40 && objc_msgSend(waitEventsCopy, "count") <= 0x40)
  {
    v13.receiver = self;
    v13.super_class = _ANESharedEvents;
    v10 = [(_ANESharedEvents *)&v13 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_signalEvents, events);
      objc_storeStrong(p_isa + 2, waitEvents);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (_ANESharedEvents)sharedEventsWithSignalEvents:(id)events waitEvents:(id)waitEvents
{
  waitEventsCopy = waitEvents;
  eventsCopy = events;
  v8 = [[self alloc] initWithSignalEvents:eventsCopy waitEvents:waitEventsCopy];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  signalEvents = [(_ANESharedEvents *)self signalEvents];
  waitEvents = [(_ANESharedEvents *)self waitEvents];
  v8 = [v3 stringWithFormat:@"%@: { signalEvents=%@ : waitEvents=%@ } ", v5, signalEvents, waitEvents];

  return v8;
}

@end