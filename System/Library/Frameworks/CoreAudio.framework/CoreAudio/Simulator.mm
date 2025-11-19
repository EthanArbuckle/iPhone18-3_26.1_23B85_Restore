@interface Simulator
@end

@implementation Simulator

uint64_t __Simulator_SetPropertyData_block_invoke(uint64_t result)
{
  if (ADS::Simulator::sHost)
  {
    v1 = *(result + 56);
    v2 = *(result + 60);
    v3 = *(result + 32);
    v4 = *ADS::Simulator::sHost;
    pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
    return v4(ADS::Simulator::sHost, v1, v2, v3);
  }

  return result;
}

@end