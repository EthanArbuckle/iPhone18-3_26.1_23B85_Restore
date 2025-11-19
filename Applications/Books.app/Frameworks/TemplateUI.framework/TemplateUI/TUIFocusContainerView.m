@interface TUIFocusContainerView
+ (id)renderModelWithSubviewsModel:(id)a3 identifier:(id)a4 focusStyle:(id)a5 actionHandler:(id)a6 linkEntities:(id)a7;
- (TUIFocusContainerView)initWithFrame:(CGRect)a3;
- (id)keyCommands;
- (void)_handleSecondaryTapGesture:(id)a3;
- (void)_handleTapGesture:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)tui_handleContextMenuKey:(id)a3;
- (void)tui_handleSelectKey:(id)a3;
- (void)viewDidEndDisplay;
@end

@implementation TUIFocusContainerView

+ (id)renderModelWithSubviewsModel:(id)a3 identifier:(id)a4 focusStyle:(id)a5 actionHandler:(id)a6 linkEntities:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[_TUIFocusContainerRenderModel alloc] initWithIdentifier:v14 submodel:v15 focusStyle:v13 actionHandler:v12 linkEntities:v11];

  return v16;
}

- (TUIFocusContainerView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = TUIFocusContainerView;
  v3 = [(TUIContainerView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"_handleTapGesture:"];
    tapGesture = v3->_tapGesture;
    v3->_tapGesture = v4;

    [(UITapGestureRecognizer *)v3->_tapGesture setAllowedTouchTypes:&__NSArray0__struct];
    [(UITapGestureRecognizer *)v3->_tapGesture setAllowedPressTypes:&off_2732F8];
    [(TUIFocusContainerView *)v3 addGestureRecognizer:v3->_tapGesture];
    v6 = [[_TUISecondaryTapGestureRecognizer alloc] initWithTarget:v3 action:"_handleSecondaryTapGesture:"];
    secondaryTapGesture = v3->_secondaryTapGesture;
    v3->_secondaryTapGesture = &v6->super;

    [(TUIFocusContainerView *)v3 addGestureRecognizer:v3->_secondaryTapGesture];
  }

  return v3;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = TUIFocusContainerView;
  [(TUIContainerView *)&v5 prepareForReuse];
  [(TUIFocusStylingHelper *)self->_styler reset];
  styler = self->_styler;
  self->_styler = 0;

  [(TUIInteractionsHelper *)self->_interactionHelper detachInteractions];
  interactionHelper = self->_interactionHelper;
  self->_interactionHelper = 0;
}

- (void)applyLayoutAttributes:(id)a3
{
  v19.receiver = self;
  v19.super_class = TUIFocusContainerView;
  [(TUIContainerView *)&v19 applyLayoutAttributes:a3];
  styler = self->_styler;
  if (styler)
  {
    v5 = sub_13D3B8(self);
    v6 = [v5 focusStyle];
    [(TUIFocusStylingHelper *)styler updateStyle:v6];
  }

  else
  {
    v7 = [TUIFocusStylingHelper alloc];
    v5 = [(TUIContainerView *)self contentView];
    v6 = sub_13D3B8(self);
    v8 = [v6 focusStyle];
    v9 = [(TUIFocusStylingHelper *)v7 initWithContainer:self reference:v5 style:v8];
    v10 = self->_styler;
    self->_styler = v9;
  }

  interactionHelper = self->_interactionHelper;
  if (!interactionHelper)
  {
    v12 = [[TUIInteractionsHelper alloc] initWithView:self];
    v13 = self->_interactionHelper;
    self->_interactionHelper = v12;

    interactionHelper = self->_interactionHelper;
  }

  v14 = sub_13D3B8(self);
  v15 = [v14 linkEntities];
  [(TUIInteractionsHelper *)interactionHelper updateWithLinkEntities:v15];

  v16 = self->_interactionHelper;
  v17 = [(TUIReusableBaseView *)self feedControllerHost];
  v18 = [v17 interactionBuilder];
  [(TUIInteractionsHelper *)v16 updateInteractionsWithBuilder:v18];
}

- (void)viewDidEndDisplay
{
  [(TUIInteractionsHelper *)self->_interactionHelper detachInteractions];
  interactionHelper = self->_interactionHelper;
  self->_interactionHelper = 0;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 nextFocusedItem];

  if (v7 == self)
  {
    [(TUIFocusStylingHelper *)self->_styler activateEffectWithAnimationCoordinator:v6];
  }

  else
  {
    v8 = [v9 previouslyFocusedItem];

    if (v8 == self)
    {
      [(TUIFocusStylingHelper *)self->_styler deactivateEffectWithAnimationCoordinator:v6];
    }
  }
}

- (id)keyCommands
{
  v2 = sub_13D3B8(self);
  v3 = [v2 actionHandler];
  v4 = [v3 keyCommands];

  return v4;
}

- (void)_handleTapGesture:(id)a3
{
  v5 = sub_13D3B8(self);
  v4 = [v5 actionHandler];
  [v4 invoke:@"press" view:self allowRefId:1];
}

- (void)_handleSecondaryTapGesture:(id)a3
{
  v4 = a3;
  v10 = sub_13D3B8(self);
  v5 = [v10 actionHandler];
  [v4 locationInView:self];
  v7 = v6;
  v9 = v8;

  [v5 invoke:@"context-menu" view:self point:1 allowRefId:{v7, v9}];
}

- (void)tui_handleSelectKey:(id)a3
{
  v5 = sub_13D3B8(self);
  v4 = [v5 actionHandler];
  [v4 invoke:@"press" view:self allowRefId:1];
}

- (void)tui_handleContextMenuKey:(id)a3
{
  v5 = sub_13D3B8(self);
  v4 = [v5 actionHandler];
  [v4 invoke:@"context-menu" view:self allowRefId:1];
}

@end