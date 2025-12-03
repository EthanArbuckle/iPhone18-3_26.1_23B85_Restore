@interface TUIRenderModelButton
- (BOOL)isEqualToRenderModel:(id)model;
- (TUIRenderModelButton)initWithReuseIdentifier:(id)identifier identifier:(id)a4 style:(id)style stateToButtonAttributes:(id)attributes stateToRenderModel:(id)model imageModelIDToResource:(id)resource actionHandler:(id)handler viewState:(id)self0 linkEntities:(id)self1 type:(unint64_t)self2 role:(unint64_t)self3 userInterfaceStyle:(unint64_t)self4 enabled:(BOOL)self5 pressScale:(double)self6 touchInsets:(UIEdgeInsets)self7 pointer:(id)self8 focusStyle:(id)self9 menu:(id)menu contextMenuIsPrimaryAction:(BOOL)action name:(id)name axAttributes:(id)axAttributes enableBackgroundForHighlightPreview:(BOOL)preview enableShadowForHighlightPreview:(BOOL)highlightPreview;
- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc;
- (id)description;
@end

@implementation TUIRenderModelButton

- (TUIRenderModelButton)initWithReuseIdentifier:(id)identifier identifier:(id)a4 style:(id)style stateToButtonAttributes:(id)attributes stateToRenderModel:(id)model imageModelIDToResource:(id)resource actionHandler:(id)handler viewState:(id)self0 linkEntities:(id)self1 type:(unint64_t)self2 role:(unint64_t)self3 userInterfaceStyle:(unint64_t)self4 enabled:(BOOL)self5 pressScale:(double)self6 touchInsets:(UIEdgeInsets)self7 pointer:(id)self8 focusStyle:(id)self9 menu:(id)menu contextMenuIsPrimaryAction:(BOOL)action name:(id)name axAttributes:(id)axAttributes enableBackgroundForHighlightPreview:(BOOL)preview enableShadowForHighlightPreview:(BOOL)highlightPreview
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  attributesCopy = attributes;
  entitiesCopy = entities;
  axAttributesCopy = axAttributes;
  v46.receiver = self;
  v46.super_class = TUIRenderModelButton;
  name = [(TUIRenderModelInteractive *)&v46 initWithReuseIdentifier:identifier identifier:a4 style:style elementStates:model imageModelIDToResource:resource actionHandler:handler viewState:scale enabled:top pressScale:left touchInsets:bottom pointer:right focusStyle:state menu:enabled name:pointer, focusStyle, menu, name];
  if (name)
  {
    v36 = [entitiesCopy copy];
    linkEntities = name->_linkEntities;
    name->_linkEntities = v36;

    v38 = [attributesCopy copy];
    stateToButtonAttributes = name->_stateToButtonAttributes;
    name->_stateToButtonAttributes = v38;

    name->_type = type;
    name->_role = role;
    name->_userInterfaceStyle = interfaceStyle;
    objc_storeStrong(&name->_axAttributes, axAttributes);
    name->_contextMenuIsPrimaryAction = action;
    name->_enableBackgroundForHighlightPreview = preview;
    name->_enableShadowForHighlightPreview = highlightPreview;
  }

  return name;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

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
  stateToButtonAttributes = [v6 stateToButtonAttributes];
  v12 = stateToButtonAttributes;
  if (stateToButtonAttributes == stateToButtonAttributes)
  {
  }

  else
  {
    v13 = self->_stateToButtonAttributes;
    stateToButtonAttributes2 = [v6 stateToButtonAttributes];
    LODWORD(v13) = [(NSDictionary *)v13 isEqualToDictionary:stateToButtonAttributes2];

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  axAttributes = self->_axAttributes;
  axAttributes = [v6 axAttributes];

  if (axAttributes == axAttributes)
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
  enabled = [(TUIRenderModelInteractive *)self enabled];
  stateToButtonAttributes = self->_stateToButtonAttributes;
  stateToModel = [(TUIRenderModelInteractive *)self stateToModel];
  v10 = [NSString stringWithFormat:@"<%@ %p type=%lu role=%lu enabled=%d stateToAttr=%@ stateToModel=%@>", v4, self, type, role, enabled, stateToButtonAttributes, stateToModel];

  return v10;
}

- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc
{
  v40 = objc_alloc(objc_opt_class());
  reuseIdentifier = [(TUIRenderModelInteractive *)self reuseIdentifier];
  identifier = [(TUIRenderModelInteractive *)self identifier];
  style = [(TUIRenderModelInteractive *)self style];
  stateToButtonAttributes = [(TUIRenderModelButton *)self stateToButtonAttributes];
  stateToModel = [(TUIRenderModelInteractive *)self stateToModel];
  v37 = (proc)(stateToModel, flags);
  imageModelIDToResource = [(TUIRenderModelInteractive *)self imageModelIDToResource];
  actionHandler = [(TUIRenderModelInteractive *)self actionHandler];
  viewState = [(TUIRenderModelInteractive *)self viewState];
  linkEntities = [(TUIRenderModelButton *)self linkEntities];
  type = [(TUIRenderModelButton *)self type];
  role = [(TUIRenderModelButton *)self role];
  userInterfaceStyle = [(TUIRenderModelButton *)self userInterfaceStyle];
  enabled = [(TUIRenderModelInteractive *)self enabled];
  [(TUIRenderModelInteractive *)self pressScale];
  v8 = v7;
  [(TUIRenderModelInteractive *)self touchInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  pointer = [(TUIRenderModelInteractive *)self pointer];
  focusStyle = [(TUIRenderModelInteractive *)self focusStyle];
  menu = [(TUIRenderModelInteractive *)self menu];
  contextMenuIsPrimaryAction = [(TUIRenderModelButton *)self contextMenuIsPrimaryAction];
  name = [(TUIRenderModelInteractive *)self name];
  axAttributes = [(TUIRenderModelButton *)self axAttributes];
  enableBackgroundForHighlightPreview = [(TUIRenderModelButton *)self enableBackgroundForHighlightPreview];
  BYTE1(v26) = [(TUIRenderModelButton *)self enableShadowForHighlightPreview];
  LOBYTE(v26) = enableBackgroundForHighlightPreview;
  LOBYTE(v25) = contextMenuIsPrimaryAction;
  LOBYTE(v24) = enabled;
  v41 = [v40 initWithReuseIdentifier:reuseIdentifier identifier:identifier style:style stateToButtonAttributes:stateToButtonAttributes stateToRenderModel:v37 imageModelIDToResource:imageModelIDToResource actionHandler:v8 viewState:v10 linkEntities:v12 type:v14 role:v16 userInterfaceStyle:actionHandler enabled:viewState pressScale:linkEntities touchInsets:type pointer:role focusStyle:userInterfaceStyle menu:v24 contextMenuIsPrimaryAction:pointer name:focusStyle axAttributes:menu enableBackgroundForHighlightPreview:v25 enableShadowForHighlightPreview:{name, axAttributes, v26}];

  TUIRenderModelCopyProperties(v41, self);
  selfCopy = self;

  return selfCopy;
}

@end