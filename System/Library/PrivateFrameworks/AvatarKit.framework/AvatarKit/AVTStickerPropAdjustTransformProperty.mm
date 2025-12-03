@interface AVTStickerPropAdjustTransformProperty
- (AVTStickerPropAdjustTransformProperty)initWithPresetCategory:(int64_t)category presetValue:(id)value position:rotation:scale:;
- (void)applyAdjustmentIfNeededToNode:(id)node forMemoji:(id)memoji ignoreScaleZ:(BOOL)z;
@end

@implementation AVTStickerPropAdjustTransformProperty

- (AVTStickerPropAdjustTransformProperty)initWithPresetCategory:(int64_t)category presetValue:(id)value position:rotation:scale:
{
  v14 = v6;
  v15 = v5;
  v16 = v4;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = AVTStickerPropAdjustTransformProperty;
  v11 = [(AVTStickerPropAdjustTransformProperty *)&v17 init];
  v12 = v11;
  if (v11)
  {
    *v11->_rotation = v15;
    *v11->_scale = v14;
    *v11->_position = v16;
    v11->_presetCategory = category;
    objc_storeStrong(&v11->_presetValue, value);
  }

  return v12;
}

- (void)applyAdjustmentIfNeededToNode:(id)node forMemoji:(id)memoji ignoreScaleZ:(BOOL)z
{
  zCopy = z;
  nodeCopy = node;
  memojiCopy = memoji;
  v9 = [memojiCopy presetForCategory:{-[AVTStickerPropAdjustTransformProperty presetCategory](self, "presetCategory")}];

  presetValue = self->_presetValue;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = self->_presetValue;
  if (isKindOfClass)
  {
    identifier = [v9 identifier];
    v14 = [v12 isEqualToString:identifier];

    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_6:
    [(AVTStickerPropAdjustTransformProperty *)self position];
    v24 = v17;
    [nodeCopy position];
    [nodeCopy setPosition:{*vaddq_f32(v24, v18).i64}];
    [(AVTStickerPropAdjustTransformProperty *)self rotation];
    v24.i64[0] = v19;
    [nodeCopy eulerAngles];
    [nodeCopy setEulerAngles:{*vaddq_f32(v20, vdupq_lane_s32(*v24.f32, 0)).i64}];
    if (zCopy)
    {
      [nodeCopy scale];
      v25 = v21;
      [(AVTStickerPropAdjustTransformProperty *)self scale];
    }

    else
    {
      [(AVTStickerPropAdjustTransformProperty *)self scale];
      v25 = v23;
      [nodeCopy scale];
    }

    [nodeCopy setScale:{*vmulq_f32(v25, v22).i64}];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = self->_presetValue;
    identifier2 = [v9 identifier];
    LODWORD(v15) = [v15 containsObject:identifier2];

    if (v15)
    {
      goto LABEL_6;
    }
  }

LABEL_10:
}

@end