@interface TUIEmbeddedCollectionViewRenderModel
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (NSArray)debugContainedSubmodels;
- (TUIEmbeddedCollectionViewRenderModel)initWithUpdateController:(id)controller uid:(id)uid UUID:(id)d;
- (UIEdgeInsets)_computedContentInsetsWithRenderModel:(id)model;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (UIEdgeInsets)contentIntrinsicInsets;
- (UIEdgeInsets)gradientFraction;
- (UIEdgeInsets)gradientInsets;
- (unint64_t)hash;
- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
@end

@implementation TUIEmbeddedCollectionViewRenderModel

- (TUIEmbeddedCollectionViewRenderModel)initWithUpdateController:(id)controller uid:(id)uid UUID:(id)d
{
  controllerCopy = controller;
  uidCopy = uid;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = TUIEmbeddedCollectionViewRenderModel;
  v12 = [(TUIEmbeddedCollectionViewRenderModel *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updateController, controller);
    v14 = [uidCopy copy];
    uid = v13->_uid;
    v13->_uid = v14;

    v16 = [dCopy copy];
    UUID = v13->_UUID;
    v13->_UUID = v16;
  }

  return v13;
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  collectorCopy = collector;
  identifier = [(TUIEmbeddedCollectionViewRenderModel *)self identifier];
  v8 = [collectorCopy resourceCollectorShouldIncludeEmbeddedForIdentifier:identifier];

  if (v8)
  {
    identifier2 = [(TUIEmbeddedCollectionViewRenderModel *)self identifier];
    v10 = [collectorCopy resourceCollectorViewStateForIdentifier:identifier2];

    if (v10)
    {
      [v10 contentOffset];
    }

    else
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
    }

    memset(&v17, 0, sizeof(v17));
    CGAffineTransformMakeTranslation(&t1, -x, -y);
    v13 = *&transform->c;
    *&v15.a = *&transform->a;
    *&v15.c = v13;
    *&v15.tx = *&transform->tx;
    CGAffineTransformConcat(&v17, &t1, &v15);
    renderModel = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
    t1 = v17;
    [renderModel appendResourcesToCollector:collectorCopy transform:&t1];
  }
}

- (UIEdgeInsets)_computedContentInsetsWithRenderModel:(id)model
{
  if (model)
  {
    [model insets];
  }

  else
  {
    v3.i64[0] = *&UIEdgeInsetsZero.top;
    v4.i64[0] = *&UIEdgeInsetsZero.left;
    v5.i64[0] = *&UIEdgeInsetsZero.bottom;
    v6.i64[0] = *&UIEdgeInsetsZero.right;
  }

  if (self->_gradientInsets.left < 0.0)
  {
    v4.i64[0] = *&self->_gradientInsets.left;
  }

  if (self->_gradientInsets.right < 0.0)
  {
    v6.i64[0] = *&self->_gradientInsets.right;
  }

  *v7.i64 = ceil(fabs(*v3.i64));
  *v8.i64 = ceil(fabs(*v4.i64));
  *v9.i64 = ceil(fabs(*v5.i64));
  *v10.i64 = ceil(fabs(*v6.i64));
  *v3.i64 = -*v3.i64;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  v3.i64[0] = vbslq_s8(v13, v7, v3).u64[0];
  *v4.i64 = -*v4.i64;
  v4.i64[0] = vbslq_s8(v13, v8, v4).u64[0];
  *v5.i64 = -*v5.i64;
  v5.i64[0] = vbslq_s8(v13, v9, v5).u64[0];
  *v6.i64 = -*v6.i64;
  v6.i64[0] = vbslq_s8(v13, v10, v6).u64[0];
  result.right = *v6.i64;
  result.bottom = *v5.i64;
  result.left = *v4.i64;
  result.top = *v3.i64;
  return result;
}

- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver
{
  collectorCopy = collector;
  resolverCopy = resolver;
  queryCopy = query;
  identifier = [(TUIEmbeddedCollectionViewRenderModel *)self identifier];
  v14 = [collectorCopy viewStateForIdentifier:identifier];

  if (v14)
  {
    [v14 contentOffset];
    x = v15;
    y = v17;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  renderModel = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
  v20 = *&transform->c;
  *&v34.a = *&transform->a;
  *&v34.c = v20;
  *&v34.tx = *&transform->tx;
  [(TUIEmbeddedCollectionViewRenderModel *)self _computedContentInsetsWithRenderModel:renderModel];
  v22 = v21;
  v24 = v23;
  if ([renderModel layoutDirection] == &dword_0 + 2)
  {
    [(TUIEmbeddedCollectionViewRenderModel *)self size];
    v26 = v25;
    renderModel2 = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
    [renderModel2 size];
    v29 = v28;

    v30 = x + v24 + v26 - v29;
  }

  else
  {
    v30 = -(x + v24);
  }

  CGAffineTransformMakeTranslation(&t2, v30, -(y + v22));
  v32 = v34;
  CGAffineTransformConcat(&v34, &v32, &t2);
  renderModel3 = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
  t2 = v34;
  [renderModel3 appendReferencesToCollector:collectorCopy transform:&t2 query:queryCopy liveTransformResolver:resolverCopy];
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v6 = objc_opt_class();
  v7 = TUIDynamicCast(v6, modelCopy);

  if (TUIRenderModelIsEqualToRenderModel(self, v7))
  {
    [v7 gradientInsets];
    v9.f64[1] = v8;
    v11.f64[1] = v10;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_gradientInsets.top, v9), vceqq_f64(*&self->_gradientInsets.bottom, v11)))))
    {
      [v7 gradientFraction];
      v13.f64[1] = v12;
      v15.f64[1] = v14;
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_gradientFraction.top, v13), vceqq_f64(*&self->_gradientFraction.bottom, v15)))))
      {
        [v7 additionalSafeAreaInsets];
        v17.f64[1] = v16;
        v19.f64[1] = v18;
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalSafeAreaInsets.top, v17), vceqq_f64(*&self->_additionalSafeAreaInsets.bottom, v19)))))
        {
          [v7 contentIntrinsicInsets];
          v21.f64[1] = v20;
          v23.f64[1] = v22;
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentIntrinsicInsets.top, v21), vceqq_f64(*&self->_contentIntrinsicInsets.bottom, v23)))))
          {
            pageGap = self->_pageGap;
            [v7 pageGap];
            if (pageGap == v27)
            {
              scrollAxis = self->_scrollAxis;
              if (scrollAxis == [v7 scrollAxis])
              {
                scrollIdentifier = self->_scrollIdentifier;
                scrollIdentifier = [v7 scrollIdentifier];
                if (!TUIIdentifierIsEqualToIdentifier(scrollIdentifier, scrollIdentifier))
                {
                  v24 = 0;
LABEL_23:

                  goto LABEL_7;
                }

                ancestorScrollIdentifier = self->_ancestorScrollIdentifier;
                ancestorScrollIdentifier = [v7 ancestorScrollIdentifier];
                if (!TUIIdentifierIsEqualToIdentifier(ancestorScrollIdentifier, ancestorScrollIdentifier))
                {
                  v24 = 0;
LABEL_22:

                  goto LABEL_23;
                }

                scrollPolicy = self->_scrollPolicy;
                scrollPolicy = [v7 scrollPolicy];
                if (scrollPolicy != scrollPolicy || (acceptsDrop = self->_acceptsDrop, acceptsDrop != [v7 acceptsDrop]) || (decelerationRate = self->_decelerationRate, objc_msgSend(v7, "decelerationRate"), decelerationRate != v37))
                {
                  v24 = 0;
LABEL_21:

                  goto LABEL_22;
                }

                dropHandler = self->_dropHandler;
                dropHandler = [v7 dropHandler];
                if (dropHandler == dropHandler || (v40 = self->_dropHandler, [v7 dropHandler], v3 = objc_claimAutoreleasedReturnValue(), -[TUIElementActionTriggerHandler isEqual:](v40, "isEqual:", v3)))
                {
                  updateController = self->_updateController;
                  updateController = [v7 updateController];
                  v24 = updateController == updateController;

                  if (dropHandler == dropHandler)
                  {
LABEL_26:

                    goto LABEL_21;
                  }
                }

                else
                {
                  v24 = 0;
                }

                goto LABEL_26;
              }
            }
          }
        }
      }
    }
  }

  v24 = 0;
LABEL_7:

  return v24;
}

- (NSArray)debugContainedSubmodels
{
  renderModel = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
  v3 = renderModel;
  if (renderModel)
  {
    v6 = renderModel;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (unint64_t)hash
{
  identifier = [(TUIEmbeddedCollectionViewRenderModel *)self identifier];
  v3 = TUIIdentifierHash(identifier);

  return v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  top = self->_additionalSafeAreaInsets.top;
  left = self->_additionalSafeAreaInsets.left;
  bottom = self->_additionalSafeAreaInsets.bottom;
  right = self->_additionalSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentIntrinsicInsets
{
  top = self->_contentIntrinsicInsets.top;
  left = self->_contentIntrinsicInsets.left;
  bottom = self->_contentIntrinsicInsets.bottom;
  right = self->_contentIntrinsicInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)gradientInsets
{
  top = self->_gradientInsets.top;
  left = self->_gradientInsets.left;
  bottom = self->_gradientInsets.bottom;
  right = self->_gradientInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)gradientFraction
{
  top = self->_gradientFraction.top;
  left = self->_gradientFraction.left;
  bottom = self->_gradientFraction.bottom;
  right = self->_gradientFraction.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end