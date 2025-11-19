@interface AVTMaterial
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)applyToVFXMaterial:(id)a3;
@end

@implementation AVTMaterial

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AVTMaterial);
  objc_storeStrong(&v4->_baseColor, self->_baseColor);
  objc_storeStrong(&v4->_additionalPropertyColors, self->_additionalPropertyColors);
  return v4;
}

- (void)applyToVFXMaterial:(id)a3
{
  v4 = a3;
  baseColor = self->_baseColor;
  v6 = [v4 diffuse];
  [v6 setContents:baseColor];

  additionalPropertyColors = self->_additionalPropertyColors;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__AVTMaterial_applyToVFXMaterial___block_invoke;
  v9[3] = &unk_1E7F48558;
  v10 = v4;
  v8 = v4;
  [(NSDictionary *)additionalPropertyColors enumerateKeysAndObjectsUsingBlock:v9];
}

void __34__AVTMaterial_applyToVFXMaterial___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) valueForKey:v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = *(a1 + 32);
    v9 = [v13 stringByAppendingString:@".contents"];
    v10 = v8;
    v11 = v5;
    v12 = v9;
  }

  else
  {
    v9 = [MEMORY[0x1E696B098] avt_valueWithFloat4:{AVTGetColorComponents(v5, v7)}];
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = v13;
  }

  [v10 setValue:v11 forKeyPath:v12];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  baseColor = self->_baseColor;
  v6 = [(NSDictionary *)self->_additionalPropertyColors allKeys];
  v7 = [v3 stringWithFormat:@"<%@ %p | base color: %@, additional properties: %@>", v4, self, baseColor, v6];

  return v7;
}

@end