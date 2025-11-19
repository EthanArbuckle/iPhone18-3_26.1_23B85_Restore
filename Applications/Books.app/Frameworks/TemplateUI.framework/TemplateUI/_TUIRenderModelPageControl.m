@interface _TUIRenderModelPageControl
- (BOOL)isEqualToRenderModel:(id)a3;
- (_TUIRenderModelPageControl)initWithStateToRenderModel:(id)a3 pressScale:(double)a4 touchInsets:(UIEdgeInsets)a5 identifier:(id)a6 pointer:(id)a7 scrollIdentifier:(id)a8 kind:(unint64_t)a9 hiddenWhenUnavailable:(BOOL)a10;
- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4;
@end

@implementation _TUIRenderModelPageControl

- (_TUIRenderModelPageControl)initWithStateToRenderModel:(id)a3 pressScale:(double)a4 touchInsets:(UIEdgeInsets)a5 identifier:(id)a6 pointer:(id)a7 scrollIdentifier:(id)a8 kind:(unint64_t)a9 hiddenWhenUnavailable:(BOOL)a10
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v22 = a8;
  v27.receiver = self;
  v27.super_class = _TUIRenderModelPageControl;
  v26 = 1;
  v23 = [(TUIRenderModelInteractive *)&v27 initWithReuseIdentifier:@"TUIReuseIdentifierPageControlView" identifier:a6 style:0 elementStates:a3 imageModelIDToResource:0 actionHandler:0 viewState:a4 enabled:top pressScale:left touchInsets:bottom pointer:right focusStyle:0 menu:v26 name:a7, 0, 0, 0];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_scrollIdentifier, a8);
    v24->_actionKind = a9;
    v24->_hiddenWhenUnavailable = a10;
  }

  return v24;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

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

- (id)_copyAppearanceWithFlags:(unint64_t)a3 statesCopyProc:(void *)a4
{
  v7 = objc_alloc(objc_opt_class());
  v8 = [(TUIRenderModelInteractive *)self stateToModel];
  v9 = (a4)(v8, a3);
  [(TUIRenderModelInteractive *)self pressScale];
  v11 = v10;
  [(TUIRenderModelInteractive *)self touchInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(TUIRenderModelInteractive *)self identifier];
  v21 = [(TUIRenderModelInteractive *)self pointer];
  v22 = [(_TUIRenderModelPageControl *)self scrollIdentifier];
  v23 = [v7 initWithStateToRenderModel:v9 pressScale:v20 touchInsets:v21 identifier:v22 pointer:-[_TUIRenderModelPageControl actionKind](self scrollIdentifier:"actionKind") kind:-[_TUIRenderModelPageControl hiddenWhenUnavailable](self hiddenWhenUnavailable:{"hiddenWhenUnavailable"), v11, v13, v15, v17, v19}];

  TUIRenderModelCopyProperties(v23, self);
  return v23;
}

@end