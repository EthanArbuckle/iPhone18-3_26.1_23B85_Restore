@interface PHASEShapeElement
- (PHASEShapeElement)init;
- (PHASEShapeElement)initWithOwner:(id)owner material:(id)material;
- (void)setMaterial:(PHASEMaterial *)material;
@end

@implementation PHASEShapeElement

- (PHASEShapeElement)init
{
  [(PHASEShapeElement *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEShapeElement)initWithOwner:(id)owner material:(id)material
{
  ownerCopy = owner;
  materialCopy = material;
  v11.receiver = self;
  v11.super_class = PHASEShapeElement;
  v8 = [(PHASEShapeElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_owner, ownerCopy);
    objc_storeStrong(&v9->_material, material);
  }

  return v9;
}

- (void)setMaterial:(PHASEMaterial *)material
{
  objc_storeStrong(&self->_material, material);
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained updateMaterialForElement:self];
}

@end