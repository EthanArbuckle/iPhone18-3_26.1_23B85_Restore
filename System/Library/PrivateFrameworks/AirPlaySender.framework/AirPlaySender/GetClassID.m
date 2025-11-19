@interface GetClassID
@end

@implementation GetClassID

uint64_t __multicastProbeSender_GetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&multicastProbeSender_GetClassID_descriptor, ClassID, 1, &multicastProbeSender_GetClassID_classID);
}

@end