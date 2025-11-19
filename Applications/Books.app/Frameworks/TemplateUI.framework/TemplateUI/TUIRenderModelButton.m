@interface TUIRenderModelButton
- (BOOL)isEqualToRenderModel:(id)a3;
- (TUIRenderModelButton)initWithReuseIdentifier:(id)a3 identifier:(id)a4 style:(id)a5 stateToButtonAttributes:(id)a6 stateToRenderModel:(id)a7 imageModelIDToResource:(id)a8 actionHandler:(id)a9 viewState:(id)a10 linkEntities:(id)a11 type:(unint64_t)a12 role:(unint64_t)a13 userInterfaceStyle:(unint64_t)a14 enabled:(BOOL)a15 pressScale:(double)a16 touchInsets:(UIEdgeInsets)a17 pointer:(id)a18 focusStyle:(id)a19 menu:(id)a20 contextMenuIsPrimaryAction:(BOOL)a21 name:(id)a22 axAttributes:(id)a23 enableBackgroundForHighlightPreview:(BOOL)a24 enableShadowForHighlightPreview:(BOOL)a25;
- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4;
- (id)description;
@end

@implementation TUIRenderModelButton

- (TUIRenderModelButton)initWithReuseIdentifier:(id)a3 identifier:(id)a4 style:(id)a5 stateToButtonAttributes:(id)a6 stateToRenderModel:(id)a7 imageModelIDToResource:(id)a8 actionHandler:(id)a9 viewState:(id)a10 linkEntities:(id)a11 type:(unint64_t)a12 role:(unint64_t)a13 userInterfaceStyle:(unint64_t)a14 enabled:(BOOL)a15 pressScale:(double)a16 touchInsets:(UIEdgeInsets)a17 pointer:(id)a18 focusStyle:(id)a19 menu:(id)a20 contextMenuIsPrimaryAction:(BOOL)a21 name:(id)a22 axAttributes:(id)a23 enableBackgroundForHighlightPreview:(BOOL)a24 enableShadowForHighlightPreview:(BOOL)a25
{
  right = a17.right;
  bottom = a17.bottom;
  left = a17.left;
  top = a17.top;
  v32 = a6;
  v33 = a11;
  v34 = a23;
  v46.receiver = self;
  v46.super_class = TUIRenderModelButton;
  v35 = [(TUIRenderModelInteractive *)&v46 initWithReuseIdentifier:a3 identifier:a4 style:a5 elementStates:a7 imageModelIDToResource:a8 actionHandler:a9 viewState:a16 enabled:top pressScale:left touchInsets:bottom pointer:right focusStyle:a10 menu:a15 name:a18, a19, a20, a22];
  if (v35)
  {
    v36 = [v33 copy];
    linkEntities = v35->_linkEntities;
    v35->_linkEntities = v36;

    v38 = [v32 copy];
    stateToButtonAttributes = v35->_stateToButtonAttributes;
    v35->_stateToButtonAttributes = v38;

    v35->_type = a12;
    v35->_role = a13;
    v35->_userInterfaceStyle = a14;
    objc_storeStrong(&v35->_axAttributes, a23);
    v35->_contextMenuIsPrimaryAction = a21;
    v35->_enableBackgroundForHighlightPreview = a24;
    v35->_enableShadowForHighlightPreview = a25;
  }

  return v35;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  v20.receiver = self;
  v20.super_class = TUIRenderModelButton;
  if (![(TUIRenderModelInteractive *)&v20 isEqualToRenderModel:v6])
  {
    goto LABEL_10;
  }

  type = self->_type;
  if (type != [v6 type])
  {
    goto LABEL_10;
  }

  role = self->_role;
  if (role != [v6 role])
  {
    goto LABEL_10;
  }

  userInterfaceStyle = self->_userInterfaceStyle;
  if (userInterfaceStyle != [v6 userInterfaceStyle])
  {
    goto LABEL_10;
  }

  stateToButtonAttributes = self->_stateToButtonAttributes;
  v11 = [v6 stateToButtonAttributes];
  v12 = v11;
  if (stateToButtonAttributes == v11)
  {
  }

  else
  {
    v13 = self->_stateToButtonAttributes;
    v14 = [v6 stateToButtonAttributes];
    LODWORD(v13) = [(NSDictionary *)v13 isEqualToDictionary:v14];

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  axAttributes = self->_axAttributes;
  v16 = [v6 axAttributes];

  if (axAttributes == v16)
  {
    contextMenuIsPrimaryAction = self->_contextMenuIsPrimaryAction;
    v17 = contextMenuIsPrimaryAction == [v6 contextMenuIsPrimaryAction];
    goto LABEL_11;
  }

LABEL_10:
  v17 = 0;
LABEL_11:

  return v17;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  type = self->_type;
  role = self->_role;
  v7 = [(TUIRenderModelInteractive *)self enabled];
  stateToButtonAttributes = self->_stateToButtonAttributes;
  v9 = [(TUIRenderModelInteractive *)self stateToModel];
  v10 = [NSString stringWithFormat:@"<%@ %p type=%lu role=%lu enabled=%d stateToAttr=%@ stateToModel=%@>", v4, self, type, role, v7, stateToButtonAttributes, v9];

  return v10;
}

- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4
{
  v40 = objc_alloc(objc_opt_class());
  v44 = [(TUIRenderModelInteractive *)self reuseIdentifier];
  v42 = [(TUIRenderModelInteractive *)self identifier];
  v39 = [(TUIRenderModelInteractive *)self style];
  v38 = [(TUIRenderModelButton *)self stateToButtonAttributes];
  v43 = [(TUIRenderModelInteractive *)self stateToModel];
  v37 = (a4)(v43, a3);
  v36 = [(TUIRenderModelInteractive *)self imageModelIDToResource];
  v30 = [(TUIRenderModelInteractive *)self actionHandler];
  v29 = [(TUIRenderModelInteractive *)self viewState];
  v35 = [(TUIRenderModelButton *)self linkEntities];
  v34 = [(TUIRenderModelButton *)self type];
  v33 = [(TUIRenderModelButton *)self role];
  v32 = [(TUIRenderModelButton *)self userInterfaceStyle];
  v31 = [(TUIRenderModelInteractive *)self enabled];
  [(TUIRenderModelInteractive *)self pressScale];
  v8 = v7;
  [(TUIRenderModelInteractive *)self touchInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v28 = [(TUIRenderModelInteractive *)self pointer];
  v27 = [(TUIRenderModelInteractive *)self focusStyle];
  v17 = [(TUIRenderModelInteractive *)self menu];
  v18 = [(TUIRenderModelButton *)self contextMenuIsPrimaryAction];
  v19 = [(TUIRenderModelInteractive *)self name];
  v20 = [(TUIRenderModelButton *)self axAttributes];
  v21 = [(TUIRenderModelButton *)self enableBackgroundForHighlightPreview];
  BYTE1(v26) = [(TUIRenderModelButton *)self enableShadowForHighlightPreview];
  LOBYTE(v26) = v21;
  LOBYTE(v25) = v18;
  LOBYTE(v24) = v31;
  v41 = [v40 initWithReuseIdentifier:v44 identifier:v42 style:v39 stateToButtonAttributes:v38 stateToRenderModel:v37 imageModelIDToResource:v36 actionHandler:v8 viewState:v10 linkEntities:v12 type:v14 role:v16 userInterfaceStyle:v30 enabled:v29 pressScale:v35 touchInsets:v34 pointer:v33 focusStyle:v32 menu:v24 contextMenuIsPrimaryAction:v28 name:v27 axAttributes:v17 enableBackgroundForHighlightPreview:v25 enableShadowForHighlightPreview:{v19, v20, v26}];

  TUIRenderModelCopyProperties(v41, self);
  v22 = self;

  return v22;
}

@end