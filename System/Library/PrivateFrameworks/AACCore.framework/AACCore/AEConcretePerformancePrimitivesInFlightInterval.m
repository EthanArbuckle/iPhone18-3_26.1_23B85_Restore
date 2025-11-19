@interface AEConcretePerformancePrimitivesInFlightInterval
- (id)initWithName:(void *)a3 signpostID:(void *)a4 log:;
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
      v9 = [(NSString *)v6 UTF8String];
      _os_signpost_emit_with_name_impl(&dword_23C1AA000, v4, OS_SIGNPOST_INTERVAL_END, signpostID, "AAC Signposts", "%{public}s", &v8, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
}

- (id)initWithName:(void *)a3 signpostID:(void *)a4 log:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = AEConcretePerformancePrimitivesInFlightInterval;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v9 = [v7 copy];
      v10 = a1[2];
      a1[2] = v9;

      a1[3] = a3;
      objc_storeStrong(a1 + 4, a4);
      *(a1 + 8) = 0;
    }
  }

  return a1;
}

@end