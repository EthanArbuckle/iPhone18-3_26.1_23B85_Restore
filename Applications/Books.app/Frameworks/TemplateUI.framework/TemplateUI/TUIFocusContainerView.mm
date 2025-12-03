@interface TUIFocusContainerView
+ (id)renderModelWithSubviewsModel:(id)model identifier:(id)identifier focusStyle:(id)style actionHandler:(id)handler linkEntities:(id)entities;
- (TUIFocusContainerView)initWithFrame:(CGRect)frame;
- (id)keyCommands;
- (void)_handleSecondaryTapGesture:(id)gesture;
- (void)_handleTapGesture:(id)gesture;
- (void)applyLayoutAttributes:(id)attributes;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)tui_handleContextMenuKey:(id)key;
- (void)tui_handleSelectKey:(id)key;
- (void)viewDidEndDisplay;
@end

@implementation TUIFocusContainerView

+ (id)renderModelWithSubviewsModel:(id)model identifier:(id)identifier focusStyle:(id)style actionHandler:(id)handler linkEntities:(id)entities
{
  entitiesCopy = entities;
  handlerCopy = handler;
  styleCopy = style;
  identifierCopy = identifier;
  modelCopy = model;
  v16 = [[_TUIFocusContainerRenderModel alloc] initWithIdentifier:identifierCopy submodel:modelCopy focusStyle:styleCopy actionHandler:handlerCopy linkEntities:entitiesCopy];

  return v16;
}

- (TUIFocusContainerView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = TUIFocusContainerView;
  v3 = [(TUIContainerView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)applyLayoutAttributes:(id)attributes
{
  v19.receiver = self;
  v19.super_class = TUIFocusContainerView;
  [(TUIContainerView *)&v19 applyLayoutAttributes:attributes];
  styler = self->_styler;
  if (styler)
  {
    contentView = sub_13D3B8(self);
    focusStyle = [contentView focusStyle];
    [(TUIFocusStylingHelper *)styler updateStyle:focusStyle];
  }

  else
  {
    v7 = [TUIFocusStylingHelper alloc];
    contentView = [(TUIContainerView *)self contentView];
    focusStyle = sub_13D3B8(self);
    v6FocusStyle = [focusStyle focusStyle];
    v9 = [(TUIFocusStylingHelper *)v7 initWithContainer:self reference:contentView style:v6FocusStyle];
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
  linkEntities = [v14 linkEntities];
  [(TUIInteractionsHelper *)interactionHelper updateWithLinkEntities:linkEntities];

  v16 = self->_interactionHelper;
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  interactionBuilder = [feedControllerHost interactionBuilder];
  [(TUIInteractionsHelper *)v16 updateInteractionsWithBuilder:interactionBuilder];
}

- (void)viewDidEndDisplay
{
  [(TUIInteractionsHelper *)self->_interactionHelper detachInteractions];
  interactionHelper = self->_interactionHelper;
  self->_interactionHelper = 0;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  nextFocusedItem = [contextCopy nextFocusedItem];

  if (nextFocusedItem == self)
  {
    [(TUIFocusStylingHelper *)self->_styler activateEffectWithAnimationCoordinator:coordinatorCopy];
  }

  else
  {
    previouslyFocusedItem = [contextCopy previouslyFocusedItem];

    if (previouslyFocusedItem == self)
    {
      [(TUIFocusStylingHelper *)self->_styler deactivateEffectWithAnimationCoordinator:coordinatorCopy];
    }
  }
}

- (id)keyCommands
{
  v2 = sub_13D3B8(self);
  actionHandler = [v2 actionHandler];
  keyCommands = [actionHandler keyCommands];

  return keyCommands;
}

- (void)_handleTapGesture:(id)gesture
{
  v5 = sub_13D3B8(self);
  actionHandler = [v5 actionHandler];
  [actionHandler invoke:@"press" view:self allowRefId:1];
}

- (void)_handleSecondaryTapGesture:(id)gesture
{
  gestureCopy = gesture;
  v10 = sub_13D3B8(self);
  actionHandler = [v10 actionHandler];
  [gestureCopy locationInView:self];
  v7 = v6;
  v9 = v8;

  [actionHandler invoke:@"context-menu" view:self point:1 allowRefId:{v7, v9}];
}

- (void)tui_handleSelectKey:(id)key
{
  v5 = sub_13D3B8(self);
  actionHandler = [v5 actionHandler];
  [actionHandler invoke:@"press" view:self allowRefId:1];
}

- (void)tui_handleContextMenuKey:(id)key
{
  v5 = sub_13D3B8(self);
  actionHandler = [v5 actionHandler];
  [actionHandler invoke:@"context-menu" view:self allowRefId:1];
}

@end