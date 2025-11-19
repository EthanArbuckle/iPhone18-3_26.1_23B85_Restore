@interface _MKMotionEffect
- (CATransform3D)transformWithTranslationScale:(SEL)a3 rotationScale:(UIOffset)a4;
- (UIOffset)offsetWithScale:(UIOffset)a3;
- (UIOffset)rawOffset;
- (_MKMotionEffectDelegate)delegate;
- (id)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)a3;
@end

@implementation _MKMotionEffect

- (_MKMotionEffectDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CATransform3D)transformWithTranslationScale:(SEL)a3 rotationScale:(UIOffset)a4
{
  vertical = a5.vertical;
  v6 = a4.vertical;
  horizontal = a4.horizontal;
  v9 = MEMORY[0x1E69792E8];
  v10 = *(MEMORY[0x1E69792E8] + 80);
  *&retstr->m31 = *(MEMORY[0x1E69792E8] + 64);
  *&retstr->m33 = v10;
  v11 = v9[7];
  *&retstr->m41 = v9[6];
  *&retstr->m43 = v11;
  v12 = v9[1];
  *&retstr->m11 = *v9;
  *&retstr->m13 = v12;
  v13 = v9[3];
  *&retstr->m21 = v9[2];
  *&retstr->m23 = v13;
  retstr->m34 = -0.00111111111;
  p_offset = &self->_offset;
  *&v10 = a5.horizontal * self->_offset.horizontal;
  v15 = *&retstr->m33;
  *&v39.m31 = *&retstr->m31;
  *&v39.m33 = v15;
  v16 = *&retstr->m43;
  *&v39.m41 = *&retstr->m41;
  *&v39.m43 = v16;
  v17 = *&retstr->m13;
  *&v39.m11 = *&retstr->m11;
  *&v39.m13 = v17;
  v18 = *&retstr->m23;
  *&v39.m21 = *&retstr->m21;
  *&v39.m23 = v18;
  CATransform3DRotate(retstr, &v39, *&v10, 0.0, 1.0, 0.0);
  v19 = vertical * p_offset->vertical;
  v20 = *&retstr->m33;
  *&v38.m31 = *&retstr->m31;
  *&v38.m33 = v20;
  v21 = *&retstr->m43;
  *&v38.m41 = *&retstr->m41;
  *&v38.m43 = v21;
  v22 = *&retstr->m13;
  *&v38.m11 = *&retstr->m11;
  *&v38.m13 = v22;
  v23 = *&retstr->m23;
  *&v38.m21 = *&retstr->m21;
  *&v38.m23 = v23;
  CATransform3DRotate(&v39, &v38, v19, 1.0, 0.0, 0.0);
  v24 = *&v39.m33;
  *&retstr->m31 = *&v39.m31;
  *&retstr->m33 = v24;
  v25 = *&v39.m43;
  *&retstr->m41 = *&v39.m41;
  *&retstr->m43 = v25;
  v26 = *&v39.m13;
  *&retstr->m11 = *&v39.m11;
  *&retstr->m13 = v26;
  v27 = *&v39.m23;
  *&retstr->m21 = *&v39.m21;
  *&retstr->m23 = v27;
  v28 = -(p_offset->horizontal * horizontal);
  *&v27 = -(p_offset->vertical * v6);
  v29 = *&retstr->m33;
  *&v38.m31 = *&retstr->m31;
  *&v38.m33 = v29;
  v30 = *&retstr->m43;
  *&v38.m41 = *&retstr->m41;
  *&v38.m43 = v30;
  v31 = *&retstr->m13;
  *&v38.m11 = *&retstr->m11;
  *&v38.m13 = v31;
  v32 = *&retstr->m23;
  *&v38.m21 = *&retstr->m21;
  *&v38.m23 = v32;
  result = CATransform3DTranslate(&v39, &v38, v28, *&v27, 0.0);
  v34 = *&v39.m33;
  *&retstr->m31 = *&v39.m31;
  *&retstr->m33 = v34;
  v35 = *&v39.m43;
  *&retstr->m41 = *&v39.m41;
  *&retstr->m43 = v35;
  v36 = *&v39.m13;
  *&retstr->m11 = *&v39.m11;
  *&retstr->m13 = v36;
  v37 = *&v39.m23;
  *&retstr->m21 = *&v39.m21;
  *&retstr->m23 = v37;
  return result;
}

- (UIOffset)offsetWithScale:(UIOffset)a3
{
  v3 = a3.horizontal * self->_offset.horizontal;
  v4 = a3.vertical * self->_offset.vertical;
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (UIOffset)rawOffset
{
  horizontal = self->_offset.horizontal;
  vertical = self->_offset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (id)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)a3
{
  vertical = a3.vertical;
  v5 = 0.5 - a3.horizontal * 0.5;
  *&v5 = v5;
  v6 = [&unk_1F1611B78 CA_interpolateValue:&unk_1F1611B90 byFraction:v5];
  [v6 floatValue];
  self->_offset.horizontal = v7;

  v8 = 0.5 - vertical * 0.5;
  *&v8 = v8;
  v9 = [&unk_1F1611B78 CA_interpolateValue:&unk_1F1611B90 byFraction:v8];
  [v9 floatValue];
  self->_offset.vertical = v10;

  if (self->_enabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained motionEffectDidUpdate:self];
  }

  return 0;
}

@end