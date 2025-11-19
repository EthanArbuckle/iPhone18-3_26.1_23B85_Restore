@interface MTRClusterOtaSoftwareUpdateRequestor
- (NSDictionary)readAttributeDefaultOtaProvidersWithParams:(MTRReadParams *)params;
@end

@implementation MTRClusterOtaSoftwareUpdateRequestor

- (NSDictionary)readAttributeDefaultOtaProvidersWithParams:(MTRReadParams *)params
{
  v3 = [(MTRClusterOTASoftwareUpdateRequestor *)self readAttributeDefaultOTAProvidersWithParams:params];

  return v3;
}

@end