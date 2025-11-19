@interface ManagedStreamGroup
- (ManagedStreamGroup)init;
@end

@implementation ManagedStreamGroup

- (ManagedStreamGroup)init
{
  v8.receiver = self;
  v8.super_class = ManagedStreamGroup;
  v2 = [(ManagedStreamGroup *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outputStreams = v2->_outputStreams;
    v2->_outputStreams = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inputStreams = v2->_inputStreams;
    v2->_inputStreams = v5;
  }

  return v2;
}

@end