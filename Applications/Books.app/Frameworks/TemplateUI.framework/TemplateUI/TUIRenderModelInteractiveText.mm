@interface TUIRenderModelInteractiveText
- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 editingInsets:(UIEdgeInsets)a10 style:(id)a11 placeholderText:(id)a12 text:(id)a13 returnKey:(unint64_t)a14 keyboardAppearance:(unint64_t)a15;
- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 editingInsets:(UIEdgeInsets)a10 style:(id)a11 placeholderText:(id)a12 text:(id)a13 returnKey:(unint64_t)a14 keyboardAppearance:(unint64_t)a15 cancelText:(id)a16 showCancel:(BOOL)a17;
- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 editingInsets:(UIEdgeInsets)a10 style:(id)a11 placeholderText:(id)a12 text:(id)a13 returnKeyType:(id)a14 keyboardAppearance:(unint64_t)a15;
- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 editingInsets:(UIEdgeInsets)a10 style:(id)a11 placeholderText:(id)a12 text:(id)a13 returnKeyType:(id)a14 keyboardAppearance:(unint64_t)a15 cancelText:(id)a16 showCancel:(BOOL)a17;
- (UIEdgeInsets)editingInsets;
- (id)copyForFinalAppearanceWithFlags:(unint64_t)a3;
- (id)copyForInitialAppearanceWithFlags:(unint64_t)a3;
- (unint64_t)_returnKeyTypeForString:(id)a3;
@end

@implementation TUIRenderModelInteractiveText

- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 editingInsets:(UIEdgeInsets)a10 style:(id)a11 placeholderText:(id)a12 text:(id)a13 returnKey:(unint64_t)a14 keyboardAppearance:(unint64_t)a15
{
  right = a10.right;
  bottom = a10.bottom;
  left = a10.left;
  top = a10.top;
  v26 = a12;
  v27 = a13;
  LOBYTE(v35) = a8;
  v28 = [(TUIRenderModelInteractive *)self initWithReuseIdentifier:a3 identifier:a4 style:a11 elementStates:a5 actionHandler:a6 viewState:a7 enabled:1.0 pressScale:UIEdgeInsetsZero.top touchInsets:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v35];
  v29 = v28;
  if (v28)
  {
    v28->_editingInsets.top = top;
    v28->_editingInsets.left = left;
    v28->_editingInsets.bottom = bottom;
    v28->_editingInsets.right = right;
    v30 = [v26 copy];
    placeholderText = v29->_placeholderText;
    v29->_placeholderText = v30;

    v32 = [v27 copy];
    text = v29->_text;
    v29->_text = v32;

    v29->_returnKeyType = a14;
    v29->_keyboardAppearance = a15;
  }

  return v29;
}

- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 editingInsets:(UIEdgeInsets)a10 style:(id)a11 placeholderText:(id)a12 text:(id)a13 returnKeyType:(id)a14 keyboardAppearance:(unint64_t)a15
{
  right = a10.right;
  bottom = a10.bottom;
  left = a10.left;
  top = a10.top;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = v25;
  LOBYTE(v35) = a8;
  v28 = [(TUIRenderModelInteractive *)self initWithReuseIdentifier:a3 identifier:a4 style:a11 elementStates:a5 imageModelIDToResource:0 actionHandler:a6 viewState:1.0 enabled:UIEdgeInsetsZero.top pressScale:UIEdgeInsetsZero.left touchInsets:UIEdgeInsetsZero.bottom pointer:UIEdgeInsetsZero.right focusStyle:a7 menu:v35 name:0, 0, 0, a9];
  v29 = v28;
  if (v28)
  {
    v28->_editingInsets.top = top;
    v28->_editingInsets.left = left;
    v28->_editingInsets.bottom = bottom;
    v28->_editingInsets.right = right;
    v30 = [v24 copy];
    placeholderText = v29->_placeholderText;
    v29->_placeholderText = v30;

    v32 = [v27 copy];
    text = v29->_text;
    v29->_text = v32;

    v29->_returnKeyType = [(TUIRenderModelInteractiveText *)v29 _returnKeyTypeForString:v26];
    v29->_keyboardAppearance = a15;
  }

  return v29;
}

- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 editingInsets:(UIEdgeInsets)a10 style:(id)a11 placeholderText:(id)a12 text:(id)a13 returnKeyType:(id)a14 keyboardAppearance:(unint64_t)a15 cancelText:(id)a16 showCancel:(BOOL)a17
{
  v17 = a8;
  right = a10.right;
  bottom = a10.bottom;
  left = a10.left;
  top = a10.top;
  v28 = a16;
  v29 = [(TUIRenderModelInteractiveText *)self initWithReuseIdentifier:a3 identifier:a4 elementStates:a5 actionHandler:a6 viewState:a7 enabled:v17 name:top editingInsets:left style:bottom placeholderText:right text:a9 returnKeyType:a11 keyboardAppearance:a12, a13, a14, a15];
  if (v29)
  {
    v30 = [v28 copy];
    cancelText = v29->_cancelText;
    v29->_cancelText = v30;

    v29->_showCancel = a17;
  }

  return v29;
}

- (TUIRenderModelInteractiveText)initWithReuseIdentifier:(id)a3 identifier:(id)a4 elementStates:(id)a5 actionHandler:(id)a6 viewState:(id)a7 enabled:(BOOL)a8 name:(id)a9 editingInsets:(UIEdgeInsets)a10 style:(id)a11 placeholderText:(id)a12 text:(id)a13 returnKey:(unint64_t)a14 keyboardAppearance:(unint64_t)a15 cancelText:(id)a16 showCancel:(BOOL)a17
{
  v17 = a8;
  right = a10.right;
  bottom = a10.bottom;
  left = a10.left;
  top = a10.top;
  v28 = a16;
  v29 = [(TUIRenderModelInteractiveText *)self initWithReuseIdentifier:a3 identifier:a4 elementStates:a5 actionHandler:a6 viewState:a7 enabled:v17 name:top editingInsets:left style:bottom placeholderText:right text:a9 returnKey:a11 keyboardAppearance:a12, a13, a14, a15];
  if (v29)
  {
    v30 = [v28 copy];
    cancelText = v29->_cancelText;
    v29->_cancelText = v30;

    v29->_showCancel = a17;
  }

  return v29;
}

- (id)copyForInitialAppearanceWithFlags:(unint64_t)a3
{
  v17 = objc_alloc(objc_opt_class());
  v16 = [(TUIRenderModelInteractive *)self reuseIdentifier];
  v5 = [(TUIRenderModelInteractive *)self identifier];
  v6 = [(TUIRenderModelInteractive *)self stateToModel];
  v7 = TUIElementStateRenderModelMapCopyForInitialAppearanceWithFlags(v6, a3);
  v8 = [(TUIRenderModelInteractive *)self actionHandler];
  v9 = [(TUIRenderModelInteractive *)self viewState];
  v10 = [(TUIRenderModelInteractive *)self enabled];
  v11 = [(TUIRenderModelInteractive *)self name];
  v12 = [(TUIRenderModelInteractive *)self style];
  LOBYTE(v15) = self->_showCancel;
  v13 = [v17 initWithReuseIdentifier:v16 identifier:v5 elementStates:v7 actionHandler:v8 viewState:v9 enabled:v10 name:self->_editingInsets.top editingInsets:self->_editingInsets.left style:self->_editingInsets.bottom placeholderText:self->_editingInsets.right text:v11 returnKey:v12 keyboardAppearance:self->_placeholderText cancelText:self->_text showCancel:{self->_returnKeyType, self->_keyboardAppearance, self->_cancelText, v15}];

  TUIRenderModelCopyProperties(v13, self);
  return v13;
}

- (id)copyForFinalAppearanceWithFlags:(unint64_t)a3
{
  v17 = objc_alloc(objc_opt_class());
  v16 = [(TUIRenderModelInteractive *)self reuseIdentifier];
  v5 = [(TUIRenderModelInteractive *)self identifier];
  v6 = [(TUIRenderModelInteractive *)self stateToModel];
  v7 = TUIElementStateRenderModelMapCopyForFinalAppearanceWithFlags(v6, a3);
  v8 = [(TUIRenderModelInteractive *)self actionHandler];
  v9 = [(TUIRenderModelInteractive *)self viewState];
  v10 = [(TUIRenderModelInteractive *)self enabled];
  v11 = [(TUIRenderModelInteractive *)self name];
  v12 = [(TUIRenderModelInteractive *)self style];
  LOBYTE(v15) = self->_showCancel;
  v13 = [v17 initWithReuseIdentifier:v16 identifier:v5 elementStates:v7 actionHandler:v8 viewState:v9 enabled:v10 name:self->_editingInsets.top editingInsets:self->_editingInsets.left style:self->_editingInsets.bottom placeholderText:self->_editingInsets.right text:v11 returnKey:v12 keyboardAppearance:self->_placeholderText cancelText:self->_text showCancel:{self->_returnKeyType, self->_keyboardAppearance, self->_cancelText, v15}];

  TUIRenderModelCopyProperties(v13, self);
  return v13;
}

- (unint64_t)_returnKeyTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Go"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Google"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Join"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Next"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Route"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Search"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Send"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Yahoo"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Done"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"EmergencyCall"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"Continue"])
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