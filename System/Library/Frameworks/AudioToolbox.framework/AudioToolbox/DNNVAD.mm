@interface DNNVAD
@end

@implementation DNNVAD

AudioComponent __DNNVAD_Initialize_block_invoke()
{
  *&v1.componentType = xmmword_1DE09DFC0;
  v1.componentFlagsMask = 0;
  result = AudioComponentFindNext(0, &v1);
  if (!result)
  {
    *&inDesc.componentType = *&v1.componentType;
    inDesc.componentFlagsMask = 0;
    return AudioComponentRegister(&inDesc, @"Apple: AUNeuralNetVAD", 0x10601u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNetVAD>::Factory);
  }

  return result;
}

@end