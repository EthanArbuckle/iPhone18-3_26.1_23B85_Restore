@interface AEConcretePerformancePrimitives
- (id)beginIntervalWithCategory:(id)a3 name:(id)a4;
- (void)initWithSubsystem:(void *)a1;
@end

@implementation AEConcretePerformancePrimitives

- (void)initWithSubsystem:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = AEConcretePerformancePrimitives;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

- (id)beginIntervalWithCategory:(id)a3 name:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self)
  {
    self = self->_subsystem;
  }

  v7 = self;
  v8 = a3;
  v9 = [(AEConcretePerformancePrimitives *)self UTF8String];
  v10 = [v8 UTF8String];

  v11 = os_log_create(v9, v10);
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v18 = 136446210;
    v19 = [v6 UTF8String];
    _os_signpost_emit_with_name_impl(&dword_23C1AA000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AAC Signposts", "%{public}s", &v18, 0xCu);
  }

  v15 = [[AEConcretePerformancePrimitivesInFlightInterval alloc] initWithName:v6 signpostID:v12 log:v14];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end