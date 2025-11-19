@interface PHASESpatialPipelineEntry
- (PHASESpatialPipelineEntry)init;
- (void)setSendLevel:(double)sendLevel;
- (void)setTweakParameterWithValue:(double)a3 identifier:(id)a4;
@end

@implementation PHASESpatialPipelineEntry

- (PHASESpatialPipelineEntry)init
{
  v8.receiver = self;
  v8.super_class = PHASESpatialPipelineEntry;
  v2 = [(PHASESpatialPipelineEntry *)&v8 init];
  v3 = v2;
  if (v2)
  {
    sendLevelMetaParameterDefinition = v2->_sendLevelMetaParameterDefinition;
    v2->_sendLevel = 1.0;
    v2->_sendLevelMetaParameterDefinition = 0;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    tweakParams = v3->_tweakParams;
    v3->_tweakParams = v5;
  }

  return v3;
}

- (void)setSendLevel:(double)sendLevel
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_sendLevel = PHASEGetPropertyBounded<double>(v8, v7, sendLevel, 0.0, 1.0);
}

- (void)setTweakParameterWithValue:(double)a3 identifier:(id)a4
{
  v7 = a4;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)self->_tweakParams setObject:v6 forKeyedSubscript:v7];
}

@end