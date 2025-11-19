@interface TUIRenderModelIdentifierMap
- (TUIRenderModelIdentifierMap)init;
- (TUIRenderModelIdentifierMap)initWithView:(id)a3;
- (id)collectInterestWithInvalidationQueue:(id)a3;
- (id)mapViewModels:(id)a3;
@end

@implementation TUIRenderModelIdentifierMap

- (TUIRenderModelIdentifierMap)init
{
  v6.receiver = self;
  v6.super_class = TUIRenderModelIdentifierMap;
  v2 = [(TUIRenderModelIdentifierMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TUIRenderModelIdentifierMap);
    view = v2->_view;
    v2->_view = v3;
  }

  return v2;
}

- (TUIRenderModelIdentifierMap)initWithView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUIRenderModelIdentifierMap;
  v6 = [(TUIRenderModelIdentifierMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, a3);
  }

  return v7;
}

- (id)mapViewModels:(id)a3
{
  v3 = [(_TUIRenderModelIdentifierMap *)self->_view mapRenderModels:a3];

  return v3;
}

- (id)collectInterestWithInvalidationQueue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [(_TUIRenderModelIdentifierMap *)self->_view _appendInterests:v5];
  v6 = [[TUIRenderModelIdentifierInterest alloc] initWithQueue:v4 interests:v5];

  return v6;
}

@end