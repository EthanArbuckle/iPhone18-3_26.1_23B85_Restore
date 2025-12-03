@interface _TUIRenderModelPageControl
- (BOOL)isEqualToRenderModel:(id)model;
- (_TUIRenderModelPageControl)initWithStateToRenderModel:(id)model pressScale:(double)scale touchInsets:(UIEdgeInsets)insets identifier:(id)identifier pointer:(id)pointer scrollIdentifier:(id)scrollIdentifier kind:(unint64_t)kind hiddenWhenUnavailable:(BOOL)self0;
- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc;
@end

@implementation _TUIRenderModelPageControl

- (_TUIRenderModelPageControl)initWithStateToRenderModel:(id)model pressScale:(double)scale touchInsets:(UIEdgeInsets)insets identifier:(id)identifier pointer:(id)pointer scrollIdentifier:(id)scrollIdentifier kind:(unint64_t)kind hiddenWhenUnavailable:(BOOL)self0
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  scrollIdentifierCopy = scrollIdentifier;
  v27.receiver = self;
  v27.super_class = _TUIRenderModelPageControl;
  v26 = 1;
  v23 = [(TUIRenderModelInteractive *)&v27 initWithReuseIdentifier:@"TUIReuseIdentifierPageControlView" identifier:identifier style:0 elementStates:model imageModelIDToResource:0 actionHandler:0 viewState:scale enabled:top pressScale:left touchInsets:bottom pointer:right focusStyle:0 menu:v26 name:pointer, 0, 0, 0];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_scrollIdentifier, scrollIdentifier);
    v24->_actionKind = kind;
    v24->_hiddenWhenUnavailable = unavailable;
  }

  return v24;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  v13.receiver = self;
  v13.super_class = _TUIRenderModelPageControl;
  if (-[TUIRenderModelButton isEqualToRenderModel:](&v13, "isEqualToRenderModel:", v6) && (scrollIdentifier = self->_scrollIdentifier, [v6 scrollIdentifier], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(scrollIdentifier) = TUIIdentifierIsEqualToIdentifier(scrollIdentifier, v8), v8, scrollIdentifier) && (actionKind = self->_actionKind, actionKind == objc_msgSend(v6, "actionKind")))
  {
    hiddenWhenUnavailable = self->_hiddenWhenUnavailable;
    v11 = hiddenWhenUnavailable == [v6 hiddenWhenUnavailable];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_copyAppearanceWithFlags:(unint64_t)flags statesCopyProc:(void *)proc
{
  v7 = objc_alloc(objc_opt_class());
  stateToModel = [(TUIRenderModelInteractive *)self stateToModel];
  v9 = (proc)(stateToModel, flags);
  [(TUIRenderModelInteractive *)self pressScale];
  v11 = v10;
  [(TUIRenderModelInteractive *)self touchInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  identifier = [(TUIRenderModelInteractive *)self identifier];
  pointer = [(TUIRenderModelInteractive *)self pointer];
  scrollIdentifier = [(_TUIRenderModelPageControl *)self scrollIdentifier];
  v23 = [v7 initWithStateToRenderModel:v9 pressScale:identifier touchInsets:pointer identifier:scrollIdentifier pointer:-[_TUIRenderModelPageControl actionKind](self scrollIdentifier:"actionKind") kind:-[_TUIRenderModelPageControl hiddenWhenUnavailable](self hiddenWhenUnavailable:{"hiddenWhenUnavailable"), v11, v13, v15, v17, v19}];

  TUIRenderModelCopyProperties(v23, self);
  return v23;
}

@end