@interface MPSGraphStencilOpDescriptor
+ (MPSGraphStencilOpDescriptor)descriptorWithExplicitPadding:(MPSShape *)explicitPadding;
+ (MPSGraphStencilOpDescriptor)descriptorWithOffsets:(MPSShape *)offsets explicitPadding:(MPSShape *)explicitPadding;
+ (MPSGraphStencilOpDescriptor)descriptorWithReductionMode:(MPSGraphReductionMode)reductionMode offsets:(MPSShape *)offsets strides:(MPSShape *)strides dilationRates:(MPSShape *)dilationRates explicitPadding:(MPSShape *)explicitPadding boundaryMode:(MPSGraphPaddingMode)boundaryMode paddingStyle:(MPSGraphPaddingStyle)paddingStyle paddingConstant:(float)paddingConstant;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSGraphStencilOpDescriptor

+ (MPSGraphStencilOpDescriptor)descriptorWithReductionMode:(MPSGraphReductionMode)reductionMode offsets:(MPSShape *)offsets strides:(MPSShape *)strides dilationRates:(MPSShape *)dilationRates explicitPadding:(MPSShape *)explicitPadding boundaryMode:(MPSGraphPaddingMode)boundaryMode paddingStyle:(MPSGraphPaddingStyle)paddingStyle paddingConstant:(float)paddingConstant
{
  v16 = offsets;
  v17 = strides;
  v18 = dilationRates;
  v19 = explicitPadding;
  v20 = objc_alloc_init(MPSGraphStencilOpDescriptor);
  [(MPSGraphStencilOpDescriptor *)v20 setReductionMode:reductionMode];
  [(MPSGraphStencilOpDescriptor *)v20 setOffsets:v16];
  [(MPSGraphStencilOpDescriptor *)v20 setStrides:v17];
  [(MPSGraphStencilOpDescriptor *)v20 setDilationRates:v18];
  [(MPSGraphStencilOpDescriptor *)v20 setExplicitPadding:v19];
  [(MPSGraphStencilOpDescriptor *)v20 setBoundaryMode:boundaryMode];
  [(MPSGraphStencilOpDescriptor *)v20 setPaddingStyle:paddingStyle];
  *&v21 = paddingConstant;
  [(MPSGraphStencilOpDescriptor *)v20 setPaddingConstant:v21];

  return v20;
}

+ (MPSGraphStencilOpDescriptor)descriptorWithOffsets:(MPSShape *)offsets explicitPadding:(MPSShape *)explicitPadding
{
  v4 = [MPSGraphStencilOpDescriptor descriptorWithReductionMode:2 offsets:offsets strides:&unk_1F5B77858 dilationRates:&unk_1F5B77870 explicitPadding:explicitPadding boundaryMode:4 paddingStyle:0.0 paddingConstant:3];

  return v4;
}

+ (MPSGraphStencilOpDescriptor)descriptorWithExplicitPadding:(MPSShape *)explicitPadding
{
  v3 = [MPSGraphStencilOpDescriptor descriptorWithReductionMode:2 offsets:&unk_1F5B77888 strides:&unk_1F5B778A0 dilationRates:&unk_1F5B778B8 explicitPadding:explicitPadding boundaryMode:4 paddingStyle:0.0 paddingConstant:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPSGraphStencilOpDescriptor alloc];
  [(MPSGraphStencilOpDescriptor *)v4 setReductionMode:self->_reductionMode];
  [(MPSGraphStencilOpDescriptor *)v4 setOffsets:self->_offsets];
  [(MPSGraphStencilOpDescriptor *)v4 setStrides:self->_strides];
  [(MPSGraphStencilOpDescriptor *)v4 setDilationRates:self->_dilationRates];
  [(MPSGraphStencilOpDescriptor *)v4 setExplicitPadding:self->_explicitPadding];
  [(MPSGraphStencilOpDescriptor *)v4 setBoundaryMode:self->_boundaryMode];
  [(MPSGraphStencilOpDescriptor *)v4 setPaddingStyle:self->_paddingStyle];
  *&v5 = self->_paddingConstant;
  [(MPSGraphStencilOpDescriptor *)v4 setPaddingConstant:v5];
  return v4;
}

@end