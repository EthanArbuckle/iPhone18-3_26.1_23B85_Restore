@interface TUIEmbeddedCollectionViewRenderModel
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (NSArray)debugContainedSubmodels;
- (TUIEmbeddedCollectionViewRenderModel)initWithUpdateController:(id)a3 uid:(id)a4 UUID:(id)a5;
- (UIEdgeInsets)_computedContentInsetsWithRenderModel:(id)a3;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (UIEdgeInsets)contentIntrinsicInsets;
- (UIEdgeInsets)gradientFraction;
- (UIEdgeInsets)gradientInsets;
- (unint64_t)hash;
- (void)appendReferencesToCollector:(id)a3 transform:(CGAffineTransform *)a4 query:(id)a5 liveTransformResolver:(id)a6;
- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4;
@end

@implementation TUIEmbeddedCollectionViewRenderModel

- (TUIEmbeddedCollectionViewRenderModel)initWithUpdateController:(id)a3 uid:(id)a4 UUID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = TUIEmbeddedCollectionViewRenderModel;
  v12 = [(TUIEmbeddedCollectionViewRenderModel *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updateController, a3);
    v14 = [v10 copy];
    uid = v13->_uid;
    v13->_uid = v14;

    v16 = [v11 copy];
    UUID = v13->_UUID;
    v13->_UUID = v16;
  }

  return v13;
}

- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4
{
  v6 = a3;
  v7 = [(TUIEmbeddedCollectionViewRenderModel *)self identifier];
  v8 = [v6 resourceCollectorShouldIncludeEmbeddedForIdentifier:v7];

  if (v8)
  {
    v9 = [(TUIEmbeddedCollectionViewRenderModel *)self identifier];
    v10 = [v6 resourceCollectorViewStateForIdentifier:v9];

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
    v13 = *&a4->c;
    *&v15.a = *&a4->a;
    *&v15.c = v13;
    *&v15.tx = *&a4->tx;
    CGAffineTransformConcat(&v17, &t1, &v15);
    v14 = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
    t1 = v17;
    [v14 appendResourcesToCollector:v6 transform:&t1];
  }
}

- (UIEdgeInsets)_computedContentInsetsWithRenderModel:(id)a3
{
  if (a3)
  {
    [a3 insets];
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

- (void)appendReferencesToCollector:(id)a3 transform:(CGAffineTransform *)a4 query:(id)a5 liveTransformResolver:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = [(TUIEmbeddedCollectionViewRenderModel *)self identifier];
  v14 = [v10 viewStateForIdentifier:v13];

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

  v19 = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
  v20 = *&a4->c;
  *&v34.a = *&a4->a;
  *&v34.c = v20;
  *&v34.tx = *&a4->tx;
  [(TUIEmbeddedCollectionViewRenderModel *)self _computedContentInsetsWithRenderModel:v19];
  v22 = v21;
  v24 = v23;
  if ([v19 layoutDirection] == &dword_0 + 2)
  {
    [(TUIEmbeddedCollectionViewRenderModel *)self size];
    v26 = v25;
    v27 = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
    [v27 size];
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
  v31 = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
  t2 = v34;
  [v31 appendReferencesToCollector:v10 transform:&t2 query:v12 liveTransformResolver:v11];
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = TUIDynamicCast(v6, v5);

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
                v30 = [v7 scrollIdentifier];
                if (!TUIIdentifierIsEqualToIdentifier(scrollIdentifier, v30))
                {
                  v24 = 0;
LABEL_23:

                  goto LABEL_7;
                }

                ancestorScrollIdentifier = self->_ancestorScrollIdentifier;
                v32 = [v7 ancestorScrollIdentifier];
                if (!TUIIdentifierIsEqualToIdentifier(ancestorScrollIdentifier, v32))
                {
                  v24 = 0;
LABEL_22:

                  goto LABEL_23;
                }

                scrollPolicy = self->_scrollPolicy;
                v34 = [v7 scrollPolicy];
                if (scrollPolicy != v34 || (acceptsDrop = self->_acceptsDrop, acceptsDrop != [v7 acceptsDrop]) || (decelerationRate = self->_decelerationRate, objc_msgSend(v7, "decelerationRate"), decelerationRate != v37))
                {
                  v24 = 0;
LABEL_21:

                  goto LABEL_22;
                }

                dropHandler = self->_dropHandler;
                v39 = [v7 dropHandler];
                if (dropHandler == v39 || (v40 = self->_dropHandler, [v7 dropHandler], v3 = objc_claimAutoreleasedReturnValue(), -[TUIElementActionTriggerHandler isEqual:](v40, "isEqual:", v3)))
                {
                  updateController = self->_updateController;
                  v42 = [v7 updateController];
                  v24 = updateController == v42;

                  if (dropHandler == v39)
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
  v2 = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
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
  v2 = [(TUIEmbeddedCollectionViewRenderModel *)self identifier];
  v3 = TUIIdentifierHash(v2);

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