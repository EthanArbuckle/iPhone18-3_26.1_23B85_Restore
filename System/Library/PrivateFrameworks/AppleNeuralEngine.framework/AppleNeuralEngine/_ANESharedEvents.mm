@interface _ANESharedEvents
+ (_ANESharedEvents)sharedEventsWithSignalEvents:(id)a3 waitEvents:(id)a4;
- (_ANESharedEvents)initWithSignalEvents:(id)a3 waitEvents:(id)a4;
- (id)description;
@end

@implementation _ANESharedEvents

- (_ANESharedEvents)initWithSignalEvents:(id)a3 waitEvents:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v7 count] || objc_msgSend(v8, "count")) && objc_msgSend(v7, "count") <= 0x40 && objc_msgSend(v8, "count") <= 0x40)
  {
    v13.receiver = self;
    v13.super_class = _ANESharedEvents;
    v10 = [(_ANESharedEvents *)&v13 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_signalEvents, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (_ANESharedEvents)sharedEventsWithSignalEvents:(id)a3 waitEvents:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithSignalEvents:v7 waitEvents:v6];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANESharedEvents *)self signalEvents];
  v7 = [(_ANESharedEvents *)self waitEvents];
  v8 = [v3 stringWithFormat:@"%@: { signalEvents=%@ : waitEvents=%@ } ", v5, v6, v7];

  return v8;
}

@end