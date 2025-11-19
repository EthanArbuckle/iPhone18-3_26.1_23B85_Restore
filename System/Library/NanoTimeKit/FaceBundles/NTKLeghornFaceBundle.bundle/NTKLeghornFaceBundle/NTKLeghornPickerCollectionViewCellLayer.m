@interface NTKLeghornPickerCollectionViewCellLayer
- (CALayer)labelLayer;
- (void)setTransform:(CATransform3D *)a3;
@end

@implementation NTKLeghornPickerCollectionViewCellLayer

- (void)setTransform:(CATransform3D *)a3
{
  v14.receiver = self;
  v14.super_class = NTKLeghornPickerCollectionViewCellLayer;
  v5 = *(MEMORY[0x277CD9DE8] + 80);
  *&v13.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v13.m33 = v5;
  v6 = *(MEMORY[0x277CD9DE8] + 112);
  *&v13.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v13.m43 = v6;
  v7 = *(MEMORY[0x277CD9DE8] + 16);
  *&v13.m11 = *MEMORY[0x277CD9DE8];
  *&v13.m13 = v7;
  v8 = *(MEMORY[0x277CD9DE8] + 48);
  *&v13.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v13.m23 = v8;
  [(NTKLeghornPickerCollectionViewCellLayer *)&v14 setTransform:&v13];
  v12 = *a3;
  v10 = objc_msgSend_labelLayer(self, v9, a3->m21);
  v13 = v12;
  objc_msgSend_setTransform_(v10, v11, v12.m21, &v13);
}

- (CALayer)labelLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_labelLayer);

  return WeakRetained;
}

@end