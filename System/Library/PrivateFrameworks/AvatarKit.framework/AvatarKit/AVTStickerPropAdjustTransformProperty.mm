@interface AVTStickerPropAdjustTransformProperty
- (AVTStickerPropAdjustTransformProperty)initWithPresetCategory:(int64_t)a3 presetValue:(id)a4 position:rotation:scale:;
- (void)applyAdjustmentIfNeededToNode:(id)a3 forMemoji:(id)a4 ignoreScaleZ:(BOOL)a5;
@end

@implementation AVTStickerPropAdjustTransformProperty

- (AVTStickerPropAdjustTransformProperty)initWithPresetCategory:(int64_t)a3 presetValue:(id)a4 position:rotation:scale:
{
  v14 = v6;
  v15 = v5;
  v16 = v4;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = AVTStickerPropAdjustTransformProperty;
  v11 = [(AVTStickerPropAdjustTransformProperty *)&v17 init];
  v12 = v11;
  if (v11)
  {
    *v11->_rotation = v15;
    *v11->_scale = v14;
    *v11->_position = v16;
    v11->_presetCategory = a3;
    objc_storeStrong(&v11->_presetValue, a4);
  }

  return v12;
}

- (void)applyAdjustmentIfNeededToNode:(id)a3 forMemoji:(id)a4 ignoreScaleZ:(BOOL)a5
{
  v5 = a5;
  v26 = a3;
  v8 = a4;
  v9 = [v8 presetForCategory:{-[AVTStickerPropAdjustTransformProperty presetCategory](self, "presetCategory")}];

  presetValue = self->_presetValue;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = self->_presetValue;
  if (isKindOfClass)
  {
    v13 = [v9 identifier];
    v14 = [v12 isEqualToString:v13];

    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_6:
    [(AVTStickerPropAdjustTransformProperty *)self position];
    v24 = v17;
    [v26 position];
    [v26 setPosition:{*vaddq_f32(v24, v18).i64}];
    [(AVTStickerPropAdjustTransformProperty *)self rotation];
    v24.i64[0] = v19;
    [v26 eulerAngles];
    [v26 setEulerAngles:{*vaddq_f32(v20, vdupq_lane_s32(*v24.f32, 0)).i64}];
    if (v5)
    {
      [v26 scale];
      v25 = v21;
      [(AVTStickerPropAdjustTransformProperty *)self scale];
    }

    else
    {
      [(AVTStickerPropAdjustTransformProperty *)self scale];
      v25 = v23;
      [v26 scale];
    }

    [v26 setScale:{*vmulq_f32(v25, v22).i64}];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = self->_presetValue;
    v16 = [v9 identifier];
    LODWORD(v15) = [v15 containsObject:v16];

    if (v15)
    {
      goto LABEL_6;
    }
  }

LABEL_10:
}

@end