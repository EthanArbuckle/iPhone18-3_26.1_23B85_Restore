@interface AEConcretePerformancePrimitives
- (id)beginIntervalWithCategory:(id)category name:(id)name;
- (void)initWithSubsystem:(void *)subsystem;
@end

@implementation AEConcretePerformancePrimitives

- (void)initWithSubsystem:(void *)subsystem
{
  v3 = a2;
  if (subsystem)
  {
    v7.receiver = subsystem;
    v7.super_class = AEConcretePerformancePrimitives;
    subsystem = objc_msgSendSuper2(&v7, sel_init);
    if (subsystem)
    {
      v4 = [v3 copy];
      v5 = subsystem[1];
      subsystem[1] = v4;
    }
  }

  return subsystem;
}

- (id)beginIntervalWithCategory:(id)category name:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (self)
  {
    self = self->_subsystem;
  }

  selfCopy = self;
  categoryCopy = category;
  uTF8String = [(AEConcretePerformancePrimitives *)self UTF8String];
  uTF8String2 = [categoryCopy UTF8String];

  v11 = os_log_create(uTF8String, uTF8String2);
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v18 = 136446210;
    uTF8String3 = [nameCopy UTF8String];
    _os_signpost_emit_with_name_impl(&dword_23C1AA000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AAC Signposts", "%{public}s", &v18, 0xCu);
  }

  v15 = [[AEConcretePerformancePrimitivesInFlightInterval alloc] initWithName:nameCopy signpostID:v12 log:v14];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end