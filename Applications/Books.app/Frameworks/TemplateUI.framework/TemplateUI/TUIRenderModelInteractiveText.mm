@interface TUIRenderModelInteractiveText
- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name editingInsets:(UIEdgeInsets)self0 style:(id)self1 placeholderText:(id)self2 text:(id)self3 returnKey:(unint64_t)self4 keyboardAppearance:(unint64_t)self5;
- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name editingInsets:(UIEdgeInsets)self0 style:(id)self1 placeholderText:(id)self2 text:(id)self3 returnKey:(unint64_t)self4 keyboardAppearance:(unint64_t)self5 cancelText:(id)self6 showCancel:(BOOL)self7;
- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name editingInsets:(UIEdgeInsets)self0 style:(id)self1 placeholderText:(id)self2 text:(id)self3 returnKeyType:(id)self4 keyboardAppearance:(unint64_t)self5;
- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name editingInsets:(UIEdgeInsets)self0 style:(id)self1 placeholderText:(id)self2 text:(id)self3 returnKeyType:(id)self4 keyboardAppearance:(unint64_t)self5 cancelText:(id)self6 showCancel:(BOOL)self7;
- (UIEdgeInsets)editingInsets;
- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags;
- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags;
- (unint64_t)_returnKeyTypeForString:(id)string;
@end

@implementation TUIRenderModelInteractiveText

- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name editingInsets:(UIEdgeInsets)self0 style:(id)self1 placeholderText:(id)self2 text:(id)self3 returnKey:(unint64_t)self4 keyboardAppearance:(unint64_t)self5
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  textCopy = text;
  v27 = a13;
  LOBYTE(v35) = enabled;
  v28 = [(TUIRenderModelInteractive *)self initWithReuseIdentifier:identifier identifier:a4 style:style elementStates:states actionHandler:handler viewState:state enabled:1.0 pressScale:UIEdgeInsetsZero.top touchInsets:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v35];
  v29 = v28;
  if (v28)
  {
    v28->_editingInsets.top = top;
    v28->_editingInsets.left = left;
    v28->_editingInsets.bottom = bottom;
    v28->_editingInsets.right = right;
    v30 = [textCopy copy];
    placeholderText = v29->_placeholderText;
    v29->_placeholderText = v30;

    v32 = [v27 copy];
    text = v29->_text;
    v29->_text = v32;

    v29->_returnKeyType = key;
    v29->_keyboardAppearance = appearance;
  }

  return v29;
}

- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name editingInsets:(UIEdgeInsets)self0 style:(id)self1 placeholderText:(id)self2 text:(id)self3 returnKeyType:(id)self4 keyboardAppearance:(unint64_t)self5
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  textCopy = text;
  v25 = a13;
  typeCopy = type;
  v27 = v25;
  LOBYTE(v35) = enabled;
  name = [(TUIRenderModelInteractive *)self initWithReuseIdentifier:identifier identifier:a4 style:style elementStates:states imageModelIDToResource:0 actionHandler:handler viewState:1.0 enabled:UIEdgeInsetsZero.top pressScale:UIEdgeInsetsZero.left touchInsets:UIEdgeInsetsZero.bottom pointer:UIEdgeInsetsZero.right focusStyle:state menu:v35 name:0, 0, 0, name];
  v29 = name;
  if (name)
  {
    name->_editingInsets.top = top;
    name->_editingInsets.left = left;
    name->_editingInsets.bottom = bottom;
    name->_editingInsets.right = right;
    v30 = [textCopy copy];
    placeholderText = v29->_placeholderText;
    v29->_placeholderText = v30;

    v32 = [v27 copy];
    text = v29->_text;
    v29->_text = v32;

    v29->_returnKeyType = [(TUIRenderModelInteractiveText *)v29 _returnKeyTypeForString:typeCopy];
    v29->_keyboardAppearance = appearance;
  }

  return v29;
}

- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name editingInsets:(UIEdgeInsets)self0 style:(id)self1 placeholderText:(id)self2 text:(id)self3 returnKeyType:(id)self4 keyboardAppearance:(unint64_t)self5 cancelText:(id)self6 showCancel:(BOOL)self7
{
  enabledCopy = enabled;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  cancelTextCopy = cancelText;
  appearance = [(TUIRenderModelInteractiveText *)self initWithReuseIdentifier:identifier identifier:a4 elementStates:states actionHandler:handler viewState:state enabled:enabledCopy name:top editingInsets:left style:bottom placeholderText:right text:name returnKeyType:style keyboardAppearance:text, a13, type, appearance];
  if (appearance)
  {
    v30 = [cancelTextCopy copy];
    cancelText = appearance->_cancelText;
    appearance->_cancelText = v30;

    appearance->_showCancel = cancel;
  }

  return appearance;
}

- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)identifier identifier:(id)a4 elementStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name editingInsets:(UIEdgeInsets)self0 style:(id)self1 placeholderText:(id)self2 text:(id)self3 returnKey:(unint64_t)self4 keyboardAppearance:(unint64_t)self5 cancelText:(id)self6 showCancel:(BOOL)self7
{
  enabledCopy = enabled;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  cancelTextCopy = cancelText;
  appearance = [(TUIRenderModelInteractiveText *)self initWithReuseIdentifier:identifier identifier:a4 elementStates:states actionHandler:handler viewState:state enabled:enabledCopy name:top editingInsets:left style:bottom placeholderText:right text:name returnKey:style keyboardAppearance:text, a13, key, appearance];
  if (appearance)
  {
    v30 = [cancelTextCopy copy];
    cancelText = appearance->_cancelText;
    appearance->_cancelText = v30;

    appearance->_showCancel = cancel;
  }

  return appearance;
}

- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags
{
  v17 = objc_alloc(objc_opt_class());
  reuseIdentifier = [(TUIRenderModelInteractive *)self reuseIdentifier];
  identifier = [(TUIRenderModelInteractive *)self identifier];
  stateToModel = [(TUIRenderModelInteractive *)self stateToModel];
  v7 = TUIElementStateRenderModelMapCopyForInitialAppearanceWithFlags(stateToModel, flags);
  actionHandler = [(TUIRenderModelInteractive *)self actionHandler];
  viewState = [(TUIRenderModelInteractive *)self viewState];
  enabled = [(TUIRenderModelInteractive *)self enabled];
  name = [(TUIRenderModelInteractive *)self name];
  style = [(TUIRenderModelInteractive *)self style];
  LOBYTE(v15) = self->_showCancel;
  v13 = [v17 initWithReuseIdentifier:reuseIdentifier identifier:identifier elementStates:v7 actionHandler:actionHandler viewState:viewState enabled:enabled name:self->_editingInsets.top editingInsets:self->_editingInsets.left style:self->_editingInsets.bottom placeholderText:self->_editingInsets.right text:name returnKey:style keyboardAppearance:self->_placeholderText cancelText:self->_text showCancel:{self->_returnKeyType, self->_keyboardAppearance, self->_cancelText, v15}];

  TUIRenderModelCopyProperties(v13, self);
  return v13;
}

- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags
{
  v17 = objc_alloc(objc_opt_class());
  reuseIdentifier = [(TUIRenderModelInteractive *)self reuseIdentifier];
  identifier = [(TUIRenderModelInteractive *)self identifier];
  stateToModel = [(TUIRenderModelInteractive *)self stateToModel];
  v7 = TUIElementStateRenderModelMapCopyForFinalAppearanceWithFlags(stateToModel, flags);
  actionHandler = [(TUIRenderModelInteractive *)self actionHandler];
  viewState = [(TUIRenderModelInteractive *)self viewState];
  enabled = [(TUIRenderModelInteractive *)self enabled];
  name = [(TUIRenderModelInteractive *)self name];
  style = [(TUIRenderModelInteractive *)self style];
  LOBYTE(v15) = self->_showCancel;
  v13 = [v17 initWithReuseIdentifier:reuseIdentifier identifier:identifier elementStates:v7 actionHandler:actionHandler viewState:viewState enabled:enabled name:self->_editingInsets.top editingInsets:self->_editingInsets.left style:self->_editingInsets.bottom placeholderText:self->_editingInsets.right text:name returnKey:style keyboardAppearance:self->_placeholderText cancelText:self->_text showCancel:{self->_returnKeyType, self->_keyboardAppearance, self->_cancelText, v15}];

  TUIRenderModelCopyProperties(v13, self);
  return v13;
}

- (unint64_t)_returnKeyTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Go"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Google"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Join"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Next"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"Route"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"Search"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"Send"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"Yahoo"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"Done"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"EmergencyCall"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"Continue"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIEdgeInsets)editingInsets
{
  top = self->_editingInsets.top;
  left = self->_editingInsets.left;
  bottom = self->_editingInsets.bottom;
  right = self->_editingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end