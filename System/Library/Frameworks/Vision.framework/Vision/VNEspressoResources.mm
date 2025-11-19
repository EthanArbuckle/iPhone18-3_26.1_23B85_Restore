@interface VNEspressoResources
- ($C4732ECC957FA13B9B3DF4A51A95735B)network;
- (VNEspressoResources)initWithModelPath:(id)a3 networkConfigurationName:(id)a4 network:(id)a5 plan:(void *)a6 context:(void *)a7;
- (id)description;
- (void)dealloc;
- (void)free;
@end

@implementation VNEspressoResources

- ($C4732ECC957FA13B9B3DF4A51A95735B)network
{
  objc_copyStruct(v4, &self->_network, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(VNEspressoResources *)self modelPath];
  v5 = [v3 initWithFormat:@"Model: %@, network: %p, plan: %p: context: %p", v4, &self->_network, self->_plan, self->_context];

  return v5;
}

- (void)dealloc
{
  [(VNEspressoResources *)self free];
  v3.receiver = self;
  v3.super_class = VNEspressoResources;
  [(VNEspressoResources *)&v3 dealloc];
}

- (void)free
{
  espresso_plan_destroy();
  self->_plan = 0;
  espresso_context_destroy();
  self->_context = 0;
  self->_network.plan = 0;
  self->_network.network_index = 0;
}

- (VNEspressoResources)initWithModelPath:(id)a3 networkConfigurationName:(id)a4 network:(id)a5 plan:(void *)a6 context:(void *)a7
{
  v9 = *&a5.var1;
  var0 = a5.var0;
  v13 = a3;
  v14 = a4;
  v22.receiver = self;
  v22.super_class = VNEspressoResources;
  v15 = [(VNEspressoResources *)&v22 init];
  if (v15)
  {
    v16 = [v13 copy];
    modelPath = v15->_modelPath;
    v15->_modelPath = v16;

    v18 = [v14 copy];
    networkConfigurationName = v15->_networkConfigurationName;
    v15->_networkConfigurationName = v18;

    v15->_network.plan = var0;
    *&v15->_network.network_index = v9;
    v15->_plan = a6;
    v15->_context = a7;
    v20 = v15;
  }

  return v15;
}

@end