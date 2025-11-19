@interface _NTKUltraCubePhotoFaceUpgradeContext
- (_NTKUltraCubePhotoFaceUpgradeContext)initWithReader:(id)a3 topComplication:(id)a4 bottomComplication:(id)a5 colorEffectOption:(id)a6 colorOption:(id)a7 typefaceOption:(id)a8;
- (id)itemAtIndex:(unint64_t)a3;
@end

@implementation _NTKUltraCubePhotoFaceUpgradeContext

- (_NTKUltraCubePhotoFaceUpgradeContext)initWithReader:(id)a3 topComplication:(id)a4 bottomComplication:(id)a5 colorEffectOption:(id)a6 colorOption:(id)a7 typefaceOption:(id)a8
{
  v30 = a3;
  v29 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = _NTKUltraCubePhotoFaceUpgradeContext;
  v19 = [(_NTKUltraCubePhotoFaceUpgradeContext *)&v31 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v19->_reader, a3);
  objc_storeStrong(&v20->_topComplication, a4);
  objc_storeStrong(&v20->_bottomComplication, a5);
  if (![v16 colorEffect] || (objc_msgSend(v17, "optionName"), v21 = objc_claimAutoreleasedReturnValue(), +[NTKPhotosColorEditOption originalColorName](NTKPhotosColorEditOption, "originalColorName"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqualToString:", v22), v22, v21, v23))
  {
    v20->_colorEffect = 0;
    goto LABEL_13;
  }

  if ([v17 isMultitoneOption])
  {
    v24 = 3;
LABEL_11:
    v20->_colorEffect = v24;
    goto LABEL_12;
  }

  v25 = [v16 colorEffect];
  if (v25 == &dword_0 + 1)
  {
    v24 = 2;
    goto LABEL_11;
  }

  if (v25 == &dword_0 + 2)
  {
    v24 = 1;
    goto LABEL_11;
  }

LABEL_12:
  objc_storeStrong(&v20->_colorOption, a7);
LABEL_13:
  v20->_typeface = 0;
  v26 = [v18 typeface];
  if (v26 <= 2)
  {
    v20->_typeface = v26 + 1;
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

- (id)itemAtIndex:(unint64_t)a3
{
  v3 = [(NTKUltraCubePhotosReader *)self->_reader objectAtIndexedSubscript:a3];
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