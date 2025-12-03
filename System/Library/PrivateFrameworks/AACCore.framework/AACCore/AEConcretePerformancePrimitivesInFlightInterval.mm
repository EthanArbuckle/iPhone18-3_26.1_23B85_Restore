@interface AEConcretePerformancePrimitivesInFlightInterval
- (id)initWithName:(void *)name signpostID:(void *)d log:;
- (void)dealloc;
- (void)endInterval;
@end

@implementation AEConcretePerformancePrimitivesInFlightInterval

- (void)dealloc
{
  [(AEConcretePerformancePrimitivesInFlightInterval *)self endInterval];
  v3.receiver = self;
  v3.super_class = AEConcretePerformancePrimitivesInFlightInterval;
  [(AEConcretePerformancePrimitivesInFlightInterval *)&v3 dealloc];
}

- (void)endInterval
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    v4 = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (!self->_isEnded)
  {
    self->_isEnded = 1;
    v3 = self->_log;
    v4 = v3;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      v6 = self->_name;
      v8 = 136446210;
      uTF8String = [(NSString *)v6 UTF8String];
      _os_signpost_emit_with_name_impl(&dword_23C1AA000, v4, OS_SIGNPOST_INTERVAL_END, signpostID, "AAC Signposts", "%{public}s", &v8, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
}

- (id)initWithName:(void *)name signpostID:(void *)d log:
{
  v7 = a2;
  dCopy = d;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = AEConcretePerformancePrimitivesInFlightInterval;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v9 = [v7 copy];
      v10 = self[2];
      self[2] = v9;

      self[3] = name;
      objc_storeStrong(self + 4, d);
      *(self + 8) = 0;
    }
  }

  return self;
}

@end