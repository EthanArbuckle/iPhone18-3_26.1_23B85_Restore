@interface ActionTreeProgrammaticDetails
- (ActionTreeProgrammaticDetails)init;
@end

@implementation ActionTreeProgrammaticDetails

- (ActionTreeProgrammaticDetails)init
{
  v7.receiver = self;
  v7.super_class = ActionTreeProgrammaticDetails;
  v2 = [(ActionTreeProgrammaticDetails *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    streamNodeFormats = v2->_streamNodeFormats;
    v2->_streamNodeFormats = v3;

    v5 = v2;
  }

  return v2;
}

@end