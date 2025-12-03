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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  internalPath = [(NWPathEvaluator *)selfCopy internalPath];
  objc_sync_exit(selfCopy);

  return internalPath;
}

- (NWPath)path
{
  copyPath = [(NWPathEvaluator *)self copyPath];

  return copyPath;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v3 = savedPathEvaluators;
    savedPathEvaluators = weakObjectsHashTable;

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
  endpoint = [(NWPathEvaluator *)self endpoint];
  v4 = [endpoint hash];
  parameters = [(NWPathEvaluator *)self parameters];
  v6 = [parameters hash];

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