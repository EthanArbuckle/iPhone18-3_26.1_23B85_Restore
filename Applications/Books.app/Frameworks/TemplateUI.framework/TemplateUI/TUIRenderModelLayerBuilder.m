@interface TUIRenderModelLayerBuilder
- (void)_updateFromPreviousSubmodels:(id)a3 newSubmodels:(id)a4;
- (void)_updateLayerWithPreviousModel:(id)a3 newModel:(id)a4;
- (void)_updateSubmodelLayers;
- (void)dynamicUserInterfaceTraitDidChange;
- (void)setModel:(id)a3;
@end

@implementation TUIRenderModelLayerBuilder

- (void)setModel:(id)a3
{
  v5 = a3;
  p_model = &self->_model;
  model = self->_model;
  if (model != v5)
  {
    v34 = v5;
    v8 = model;
    [(TUIRenderModelLayerBuilder *)self _updateLayerWithPreviousModel:v8 newModel:v34];
    v9 = [(TUIRenderModelLayer *)v8 submodels];
    v10 = [(TUIRenderModelLayer *)v34 submodels];
    [(TUIRenderModelLayerBuilder *)self _updateFromPreviousSubmodels:v9 newSubmodels:v10];

    objc_storeStrong(&self->_model, a3);
    if (![(TUIRenderModelLayer *)v8 isEqual:v34])
    {
      [(TUIRenderModelLayerBuilder *)self _updateSubmodelLayers];
      v11 = [(TUIRenderModelLayer *)self->_model config];

      if (v11)
      {
        v12 = [(TUIRenderModelLayer *)self->_model config];
        [v12 configureSublayers:self->_sublayers forLayer:self->_layer];
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

    v5 = v34;
  }
}

- (void)dynamicUserInterfaceTraitDidChange
{
  v3 = [(TUIRenderModelLayer *)self->_model config];
  [v3 dynamicUserInterfaceTraitDidChangeForLayer:self->_layer];
}

- (void)_updateLayerWithPreviousModel:(id)a3 newModel:(id)a4
{
  v46 = a3;
  v6 = a4;
  v7 = [v6 config];
  v8 = [v46 config];
  if (v8 == v7)
  {
    goto LABEL_23;
  }

  [v6 size];
  v10 = v9;
  v12 = v11;
  v13 = [v7 layerClassForSize:?];
  [v6 eraseableInsets];
  v15 = v14 + 0.0;
  v17 = v16 + 0.0;
  v19 = v10 - (v14 + v18);
  v21 = v12 - (v16 + v20);
  layer = self->_layer;
  if (layer && ((-[CALayer bounds](layer, "bounds"), v51.origin.x = v15, v51.origin.y = v17, v51.size.width = v19, v51.size.height = v21, !(v23 = CGRectEqualToRect(v50, v51))) ? (v24 = [v8 reuseLayerForBoundsChange]) : (v24 = 1), self->_layer && v13 == objc_opt_class() && (v25 = objc_opt_class(), v25 == objc_opt_class()) && (objc_msgSend(v46, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "identifier"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqual:", v27) & v24, v27, v26, (v28 & 1) != 0)))
  {
    v29 = [v8 isEqualToConfig:v7];
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
        [v7 configureBounds:self->_layer];
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

    v32 = [v31 layer];
    v33 = self->_layer;
    self->_layer = v32;

    [(CALayer *)self->_layer setBounds:v15, v17, v19, v21];
  }

  [v7 configureLayer:{self->_layer, v46}];
LABEL_18:
  [v7 configureDelegate:{self->_layer, v46}];
  v34 = [(CALayer *)self->_layer delegate];
  if (v34 && (v35 = v34, [(CALayer *)self->_layer delegate], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_opt_respondsToSelector(), v36, v35, (v37 & 1) == 0))
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
      v42 = v7;
      if (!v7)
      {
        v42 = +[NSNull null];
      }

      v48[1] = v42;
      v43 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
      v44 = [v39 initWithName:@"LayerWithoutAnimationDelegate" reason:@"A layer without an animation delegate will result in the wrong animations" userInfo:v43];
      v45 = v44;

      if (!v7)
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
    v38 = [(CALayer *)self->_layer delegate];

    if (!v38)
    {
      [(CALayer *)self->_layer setDelegate:self];
    }
  }

LABEL_23:
}

- (void)_updateFromPreviousSubmodels:(id)a3 newSubmodels:(id)a4
{
  if (a3 != a4)
  {
    v17 = v4;
    v18 = v5;
    v7 = a4;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_CF5D4;
    v14 = &unk_261570;
    v15 = self;
    v16 = objc_opt_new();
    v8 = v16;
    [v7 enumerateObjectsUsingBlock:&v11];

    v9 = [v8 copy];
    builderMap = self->_builderMap;
    self->_builderMap = v9;
  }
}

- (void)_updateSubmodelLayers
{
  v3 = objc_opt_new();
  v4 = [(TUIRenderModelLayer *)self->_model submodels];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_CF770;
  v11 = &unk_261570;
  v12 = self;
  v5 = v3;
  v13 = v5;
  [v4 enumerateObjectsUsingBlock:&v8];

  v6 = [v5 count];
  if (v6)
  {
    v6 = [v5 copy];
  }

  sublayers = self->_sublayers;
  self->_sublayers = v6;
}

@end