@interface NSDictionary(NSDictionaryCopy_AVConference)
- (id)copyGKSDeep;
@end

@implementation NSDictionary(NSDictionaryCopy_AVConference)

- (id)copyGKSDeep
{
  v1 = [MEMORY[0x1E696AE40] dataFromPropertyList:a1 format:200 errorDescription:0];
  v2 = [MEMORY[0x1E696AE40] propertyListFromData:v1 mutabilityOption:0 format:0 errorDescription:0];

  return v2;
}

@end