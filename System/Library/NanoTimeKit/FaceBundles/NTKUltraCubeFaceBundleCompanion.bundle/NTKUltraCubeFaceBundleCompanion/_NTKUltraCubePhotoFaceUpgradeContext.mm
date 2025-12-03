@interface _NTKUltraCubePhotoFaceUpgradeContext
- (_NTKUltraCubePhotoFaceUpgradeContext)initWithReader:(id)reader topComplication:(id)complication bottomComplication:(id)bottomComplication colorEffectOption:(id)option colorOption:(id)colorOption typefaceOption:(id)typefaceOption;
- (id)itemAtIndex:(unint64_t)index;
@end

@implementation _NTKUltraCubePhotoFaceUpgradeContext

- (_NTKUltraCubePhotoFaceUpgradeContext)initWithReader:(id)reader topComplication:(id)complication bottomComplication:(id)bottomComplication colorEffectOption:(id)option colorOption:(id)colorOption typefaceOption:(id)typefaceOption
{
  readerCopy = reader;
  complicationCopy = complication;
  bottomComplicationCopy = bottomComplication;
  optionCopy = option;
  colorOptionCopy = colorOption;
  typefaceOptionCopy = typefaceOption;
  v31.receiver = self;
  v31.super_class = _NTKUltraCubePhotoFaceUpgradeContext;
  v19 = [(_NTKUltraCubePhotoFaceUpgradeContext *)&v31 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v19->_reader, reader);
  objc_storeStrong(&v20->_topComplication, complication);
  objc_storeStrong(&v20->_bottomComplication, bottomComplication);
  if (![optionCopy colorEffect] || (objc_msgSend(colorOptionCopy, "optionName"), v21 = objc_claimAutoreleasedReturnValue(), +[NTKPhotosColorEditOption originalColorName](NTKPhotosColorEditOption, "originalColorName"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqualToString:", v22), v22, v21, v23))
  {
    v20->_colorEffect = 0;
    goto LABEL_13;
  }

  if ([colorOptionCopy isMultitoneOption])
  {
    v24 = 3;
LABEL_11:
    v20->_colorEffect = v24;
    goto LABEL_12;
  }

  colorEffect = [optionCopy colorEffect];
  if (colorEffect == &dword_0 + 1)
  {
    v24 = 2;
    goto LABEL_11;
  }

  if (colorEffect == &dword_0 + 2)
  {
    v24 = 1;
    goto LABEL_11;
  }

LABEL_12:
  objc_storeStrong(&v20->_colorOption, colorOption);
LABEL_13:
  v20->_typeface = 0;
  typeface = [typefaceOptionCopy typeface];
  if (typeface <= 2)
  {
    v20->_typeface = typeface + 1;
  }

LABEL_15:
  v27 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = v20;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Created %@", buf, 0xCu);
  }

  return v20;
}

- (id)itemAtIndex:(unint64_t)index
{
  v3 = [(NTKUltraCubePhotosReader *)self->_reader objectAtIndexedSubscript:index];
  if (v3)
  {
    v4 = [[_NTKUltraCubePhotoFaceUpgradeItemContext alloc] initWithPhoto:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end