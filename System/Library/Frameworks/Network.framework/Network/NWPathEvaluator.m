@interface NWPathEvaluator
+ (id)sharedDefaultEvaluator;
+ (void)initialize;
- (NWParameters)parameters;
- (NWPath)path;
- (id)copyPath;
- (unint64_t)hash;
@end

@implementation NWPathEvaluator

- (id)copyPath
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWPathEvaluator *)v2 internalPath];
  objc_sync_exit(v2);

  return v3;
}

- (NWPath)path
{
  v2 = [(NWPathEvaluator *)self copyPath];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v3 = savedPathEvaluators;
    savedPathEvaluators = v2;

    v4 = objc_opt_new();
    v5 = savedPathEvaluatorsLock;
    savedPathEvaluatorsLock = v4;
  }
}

+ (id)sharedDefaultEvaluator
{
  if (sharedDefaultEvaluator_initEvaluator[0] != -1)
  {
    dispatch_once(sharedDefaultEvaluator_initEvaluator, &__block_literal_global_92042);
  }

  v3 = sharedDefaultEvaluator_sharedEvaluator;

  return v3;
}

void __41__NWPathEvaluator_sharedDefaultEvaluator__block_invoke()
{
  v0 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:0];
  v1 = sharedDefaultEvaluator_sharedEvaluator;
  sharedDefaultEvaluator_sharedEvaluator = v0;
}

- (unint64_t)hash
{
  v3 = [(NWPathEvaluator *)self endpoint];
  v4 = [v3 hash];
  v5 = [(NWPathEvaluator *)self parameters];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NWParameters)parameters
{
  v3 = [NWParameters alloc];
  v4 = nw_path_evaluator_copy_parameters(self->_internalEvaluator);
  v5 = [(NWParameters *)v3 initWithParameters:v4];

  return v5;
}

@end