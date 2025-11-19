@interface _ATXDataStore(ActionTypes)
@end

@implementation _ATXDataStore(ActionTypes)

- (void)enumerateActionTypesOlderThan:()ActionTypes block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXDataStore+ActionTypes.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"date"}];
}

@end