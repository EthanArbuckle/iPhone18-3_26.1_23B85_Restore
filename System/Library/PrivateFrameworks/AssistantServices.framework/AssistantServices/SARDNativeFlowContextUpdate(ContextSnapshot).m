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
    v6 = [v5 dictionary];
    a1 = [a1 initWithDictionary:v6];

    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end