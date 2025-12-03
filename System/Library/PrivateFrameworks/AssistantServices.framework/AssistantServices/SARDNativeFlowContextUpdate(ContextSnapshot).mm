@interface SARDNativeFlowContextUpdate(ContextSnapshot)
- (id)initWithSerializedBackingStore:()ContextSnapshot;
@end

@implementation SARDNativeFlowContextUpdate(ContextSnapshot)

- (id)initWithSerializedBackingStore:()ContextSnapshot
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
    dictionary = [v5 dictionary];
    self = [self initWithDictionary:dictionary];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end