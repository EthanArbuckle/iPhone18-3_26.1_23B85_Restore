@interface TUIRenderModelLayerBuilder
- (void)_updateFromPreviousSubmodels:(id)submodels newSubmodels:(id)newSubmodels;
- (void)_updateLayerWithPreviousModel:(id)model newModel:(id)newModel;
- (void)_updateSubmodelLayers;
- (void)dynamicUserInterfaceTraitDidChange;
- (void)setModel:(id)model;
@end

@implementation TUIRenderModelLayerBuilder

- (void)setModel:(id)model
{
  modelCopy = model;
  p_model = &self->_model;
  model = self->_model;
  if (model != modelCopy)
  {
    v34 = modelCopy;
    modelCopy2 = model;
    [(TUIRenderModelLayerBuilder *)self _updateLayerWithPreviousModel:modelCopy2 newModel:v34];
    submodels = [(TUIRenderModelLayer *)modelCopy2 submodels];
    submodels2 = [(TUIRenderModelLayer *)v34 submodels];
    [(TUIRenderModelLayerBuilder *)self _updateFromPreviousSubmodels:submodels newSubmodels:submodels2];

    objc_storeStrong(&self->_model, model);
    if (![(TUIRenderModelLayer *)modelCopy2 isEqual:v34])
    {
      [(TUIRenderModelLayerBuilder *)self _updateSubmodelLayers];
      config = [(TUIRenderModelLayer *)self->_model config];

      if (config)
      {
        config2 = [(TUIRenderModelLayer *)self->_model config];
        [config2 configureSublayers:self->_sublayers forLayer:self->_layer];
      }

      else
      {
        [(CALayer *)self->_layer setSublayers:self->_sublayers];
      }

      [(TUIRenderModelLayer *)*p_model size];
      v14 = v13;
      v16 = v15;
      [(TUIRenderModelLayer *)*p_model eraseableInsets];
      v21.f64[0] = v17;
      v21.f64[1] = v18;
      v22.f64[0] = v19;
      v22.f64[1] = v20;
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&UIEdgeInsetsZero.top, v21), vceqq_f64(*&UIEdgeInsetsZero.bottom, v22)))))
      {
        layer = self->_layer;
        v33 = 0.5;
        v32 = 0.5;
      }

      else
      {
        v23 = v18 + 0.0;
        v24 = v17 + 0.0;
        v25 = v14 - (v18 + v20);
        v26 = v16 - (v17 + v19);
        v36.origin.x = 0.0;
        v36.origin.y = 0.0;
        v36.size.width = v14;
        v36.size.height = v16;
        MidX = CGRectGetMidX(v36);
        v37.origin.x = 0.0;
        v37.origin.y = 0.0;
        v37.size.width = v14;
        v37.size.height = v16;
        MidY = CGRectGetMidY(v37);
        v38.origin.x = v23;
        v38.origin.y = v24;
        v38.size.width = v25;
        v38.size.height = v26;
        v29 = (MidX - CGRectGetMinX(v38)) / v25;
        v39.origin.x = v23;
        v39.origin.y = v24;
        v39.size.width = v25;
        v39.size.height = v26;
        MinY = CGRectGetMinY(v39);
        layer = self->_layer;
        v32 = (MidY - MinY) / v26;
        v33 = v29;
      }

      [(CALayer *)layer setAnchorPoint:v33, v32];
    }

    modelCopy = v34;
  }
}

- (void)dynamicUserInterfaceTraitDidChange
{
  config = [(TUIRenderModelLayer *)self->_model config];
  [config dynamicUserInterfaceTraitDidChangeForLayer:self->_layer];
}

- (void)_updateLayerWithPreviousModel:(id)model newModel:(id)newModel
{
  modelCopy = model;
  newModelCopy = newModel;
  config = [newModelCopy config];
  config2 = [modelCopy config];
  if (config2 == config)
  {
    goto LABEL_23;
  }

  [newModelCopy size];
  v10 = v9;
  v12 = v11;
  v13 = [config layerClassForSize:?];
  [newModelCopy eraseableInsets];
  v15 = v14 + 0.0;
  v17 = v16 + 0.0;
  v19 = v10 - (v14 + v18);
  v21 = v12 - (v16 + v20);
  layer = self->_layer;
  if (layer && ((-[CALayer bounds](layer, "bounds"), v51.origin.x = v15, v51.origin.y = v17, v51.size.width = v19, v51.size.height = v21, !(v23 = CGRectEqualToRect(v50, v51))) ? (v24 = [config2 reuseLayerForBoundsChange]) : (v24 = 1), self->_layer && v13 == objc_opt_class() && (v25 = objc_opt_class(), v25 == objc_opt_class()) && (objc_msgSend(modelCopy, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(newModelCopy, "identifier"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqual:", v27) & v24, v27, v26, (v28 & 1) != 0)))
  {
    v29 = [config2 isEqualToConfig:config];
    v30 = v29;
    if (v23)
    {
      if (v29)
      {
        goto LABEL_18;
      }
    }

    else
    {
      [(CALayer *)self->_layer setBounds:v15, v17, v19, v21];
      if (v30)
      {
        [config configureBounds:self->_layer];
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (v13)
    {
      v31 = v13;
    }

    else
    {
      v31 = CALayer;
    }

    layer = [v31 layer];
    v33 = self->_layer;
    self->_layer = layer;

    [(CALayer *)self->_layer setBounds:v15, v17, v19, v21];
  }

  [config configureLayer:{self->_layer, modelCopy}];
LABEL_18:
  [config configureDelegate:{self->_layer, modelCopy}];
  delegate = [(CALayer *)self->_layer delegate];
  if (delegate && (v35 = delegate, [(CALayer *)self->_layer delegate], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_opt_respondsToSelector(), v36, v35, (v37 & 1) == 0))
  {
    if (_TUIDeviceHasInternalInstall())
    {
      v39 = [NSException alloc];
      v47[0] = @"layer";
      v40 = self->_layer;
      v41 = v40;
      if (!v40)
      {
        v41 = +[NSNull null];
      }

      v47[1] = @"config";
      v48[0] = v41;
      v42 = config;
      if (!config)
      {
        v42 = +[NSNull null];
      }

      v48[1] = v42;
      v43 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
      v44 = [v39 initWithName:@"LayerWithoutAnimationDelegate" reason:@"A layer without an animation delegate will result in the wrong animations" userInfo:v43];
      v45 = v44;

      if (!config)
      {
      }

      if (!v40)
      {
      }

      objc_exception_throw(v44);
    }
  }

  else
  {
    delegate2 = [(CALayer *)self->_layer delegate];

    if (!delegate2)
    {
      [(CALayer *)self->_layer setDelegate:self];
    }
  }

LABEL_23:
}

- (void)_updateFromPreviousSubmodels:(id)submodels newSubmodels:(id)newSubmodels
{
  if (submodels != newSubmodels)
  {
    v17 = v4;
    v18 = v5;
    newSubmodelsCopy = newSubmodels;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_CF5D4;
    v14 = &unk_261570;
    selfCopy = self;
    v16 = objc_opt_new();
    v8 = v16;
    [newSubmodelsCopy enumerateObjectsUsingBlock:&v11];

    v9 = [v8 copy];
    builderMap = self->_builderMap;
    self->_builderMap = v9;
  }
}

- (void)_updateSubmodelLayers
{
  v3 = objc_opt_new();
  submodels = [(TUIRenderModelLayer *)self->_model submodels];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_CF770;
  v11 = &unk_261570;
  selfCopy = self;
  v5 = v3;
  v13 = v5;
  [submodels enumerateObjectsUsingBlock:&v8];

  v6 = [v5 count];
  if (v6)
  {
    v6 = [v5 copy];
  }

  sublayers = self->_sublayers;
  self->_sublayers = v6;
}

@end