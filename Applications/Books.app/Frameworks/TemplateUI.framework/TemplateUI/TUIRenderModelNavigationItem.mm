@interface TUIRenderModelNavigationItem
+ (id)renderModelWithItemType:(unint64_t)type identifier:(id)identifier imageModelIDToResource:(id)resource actionHandler:(id)handler title:(id)title attributedTitle:(id)attributedTitle image:(id)image enabled:(BOOL)self0 buttonType:(unint64_t)self1 buttonRole:(unint64_t)self2 width:(double)self3 minWidth:(double)self4 maxWidth:(double)self5 text:(id)self6 searchTextMaxLength:(int64_t)self7 placeholderText:(id)self8 keyboardAppearance:(unint64_t)self9 navigationBarBackgroundOpacity:(double)opacity observeTrigger:(id)trigger observeTriggerValue:(unint64_t)value ignoreInsetsForOpacityTrigger:(BOOL)opacityTrigger menu:(id)menu subview:(id)subview axAttributes:(id)attributes refId:(id)id refInstance:(id)instance hostingIdentifiers:(id)identifiers hostingProperties:(id)type0 prefersNoPlatter:(BOOL)type1;
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (TUIRenderModelNavigationItem)initWithItemType:(unint64_t)type identifier:(id)identifier imageModelIDToResource:(id)resource actionHandler:(id)handler title:(id)title attributedTitle:(id)attributedTitle image:(id)image enabled:(BOOL)self0 buttonType:(unint64_t)self1 buttonRole:(unint64_t)self2 width:(double)self3 minWidth:(double)self4 maxWidth:(double)self5 text:(id)self6 searchTextMaxLength:(int64_t)self7 placeholderText:(id)self8 keyboardAppearance:(unint64_t)self9 navigationBarBackgroundOpacity:(double)opacity observeTrigger:(id)trigger observeTriggerValue:(unint64_t)value ignoreInsetsForOpacityTrigger:(BOOL)opacityTrigger menu:(id)menu subview:(id)subview axAttributes:(id)attributes refId:(id)id refInstance:(id)instance hostingIdentifiers:(id)identifiers hostingProperties:(id)type0 prefersNoPlatter:(BOOL)type1;
- (id)renderItemWithFactory:(id)factory;
- (id)renderSearchControllerWithFactory:(id)factory;
- (id)renderViewWithFactory:(id)factory;
- (unint64_t)hash;
- (void)_takeAction:(id)action;
@end

@implementation TUIRenderModelNavigationItem

- (TUIRenderModelNavigationItem)initWithItemType:(unint64_t)type identifier:(id)identifier imageModelIDToResource:(id)resource actionHandler:(id)handler title:(id)title attributedTitle:(id)attributedTitle image:(id)image enabled:(BOOL)self0 buttonType:(unint64_t)self1 buttonRole:(unint64_t)self2 width:(double)self3 minWidth:(double)self4 maxWidth:(double)self5 text:(id)self6 searchTextMaxLength:(int64_t)self7 placeholderText:(id)self8 keyboardAppearance:(unint64_t)self9 navigationBarBackgroundOpacity:(double)opacity observeTrigger:(id)trigger observeTriggerValue:(unint64_t)value ignoreInsetsForOpacityTrigger:(BOOL)opacityTrigger menu:(id)menu subview:(id)subview axAttributes:(id)attributes refId:(id)id refInstance:(id)instance hostingIdentifiers:(id)identifiers hostingProperties:(id)type0 prefersNoPlatter:(BOOL)type1
{
  identifierCopy = identifier;
  resourceCopy = resource;
  obj = handler;
  handlerCopy = handler;
  titleCopy = title;
  attributedTitleCopy = attributedTitle;
  imageCopy = image;
  textCopy = text;
  placeholderTextCopy = placeholderText;
  triggerCopy = trigger;
  menuCopy = menu;
  subviewCopy = subview;
  attributesCopy = attributes;
  idCopy = id;
  instanceCopy = instance;
  identifiersCopy = identifiers;
  propertiesCopy = properties;
  v81.receiver = self;
  v81.super_class = TUIRenderModelNavigationItem;
  v45 = [(TUIRenderModelNavigationItem *)&v81 init];
  v46 = v45;
  if (v45)
  {
    v45->_itemType = type;
    v47 = [identifierCopy copyWithZone:0];
    identifier = v46->_identifier;
    v46->_identifier = v47;

    v49 = [resourceCopy copy];
    imageModelIDToResource = v46->_imageModelIDToResource;
    v46->_imageModelIDToResource = v49;

    objc_storeStrong(&v46->_actionHandler, obj);
    v51 = [titleCopy copy];
    title = v46->_title;
    v46->_title = v51;

    v46->_searchTextMaxLength = length;
    v53 = [attributedTitleCopy copy];
    attributedTitle = v46->_attributedTitle;
    v46->_attributedTitle = v53;

    objc_storeStrong(&v46->_image, image);
    v46->_enabled = enabled;
    v46->_buttonType = buttonType;
    v46->_buttonRole = role;
    v46->_width = width;
    v46->_minWidth = minWidth;
    v46->_maxWidth = maxWidth;
    v55 = [textCopy copy];
    text = v46->_text;
    v46->_text = v55;

    v57 = [placeholderTextCopy copy];
    placeholderText = v46->_placeholderText;
    v46->_placeholderText = v57;

    v59 = [triggerCopy copy];
    observeTrigger = v46->_observeTrigger;
    v46->_observeTrigger = v59;

    v46->_observeTriggerValue = value;
    v46->_ignoreInsetsForOpacityTrigger = opacityTrigger;
    objc_storeStrong(&v46->_subviewsModel, subview);
    v46->_navigationBarBackgroundOpacity = opacity;
    v46->_keyboardAppearance = appearance;
    objc_storeStrong(&v46->_menu, menu);
    v61 = [attributesCopy copy];
    axAttributes = v46->_axAttributes;
    v46->_axAttributes = v61;

    objc_storeStrong(&v46->_refId, id);
    objc_storeStrong(&v46->_refInstance, instance);
    v63 = [identifiersCopy copy];
    hostingIdentifiers = v46->_hostingIdentifiers;
    v46->_hostingIdentifiers = v63;

    v65 = [propertiesCopy copy];
    hostingProperties = v46->_hostingProperties;
    v46->_hostingProperties = v65;

    v46->_prefersNoPlatter = platter;
  }

  return v46;
}

+ (id)renderModelWithItemType:(unint64_t)type identifier:(id)identifier imageModelIDToResource:(id)resource actionHandler:(id)handler title:(id)title attributedTitle:(id)attributedTitle image:(id)image enabled:(BOOL)self0 buttonType:(unint64_t)self1 buttonRole:(unint64_t)self2 width:(double)self3 minWidth:(double)self4 maxWidth:(double)self5 text:(id)self6 searchTextMaxLength:(int64_t)self7 placeholderText:(id)self8 keyboardAppearance:(unint64_t)self9 navigationBarBackgroundOpacity:(double)opacity observeTrigger:(id)trigger observeTriggerValue:(unint64_t)value ignoreInsetsForOpacityTrigger:(BOOL)opacityTrigger menu:(id)menu subview:(id)subview axAttributes:(id)attributes refId:(id)id refInstance:(id)instance hostingIdentifiers:(id)identifiers hostingProperties:(id)type0 prefersNoPlatter:(BOOL)type1
{
  propertiesCopy = properties;
  identifiersCopy = identifiers;
  instanceCopy = instance;
  idCopy = id;
  attributesCopy = attributes;
  subviewCopy = subview;
  menuCopy = menu;
  triggerCopy = trigger;
  placeholderTextCopy = placeholderText;
  textCopy = text;
  imageCopy = image;
  attributedTitleCopy = attributedTitle;
  titleCopy = title;
  handlerCopy = handler;
  resourceCopy = resource;
  identifierCopy = identifier;
  LOBYTE(v42) = platter;
  LOBYTE(v41) = opacityTrigger;
  LOBYTE(v40) = enabled;
  v57 = [[TUIRenderModelNavigationItem alloc] initWithItemType:type identifier:identifierCopy imageModelIDToResource:resourceCopy actionHandler:handlerCopy title:titleCopy attributedTitle:attributedTitleCopy image:width enabled:minWidth buttonType:maxWidth buttonRole:opacity width:imageCopy minWidth:v40 maxWidth:buttonType text:role searchTextMaxLength:textCopy placeholderText:length keyboardAppearance:placeholderTextCopy navigationBarBackgroundOpacity:appearance observeTrigger:triggerCopy observeTriggerValue:value ignoreInsetsForOpacityTrigger:v41 menu:menuCopy subview:subviewCopy axAttributes:attributesCopy refId:idCopy refInstance:instanceCopy hostingIdentifiers:identifiersCopy hostingProperties:propertiesCopy prefersNoPlatter:v42];

  return v57;
}

- (id)renderItemWithFactory:(id)factory
{
  factoryCopy = factory;
  menu = [(TUIRenderModelNavigationItem *)self menu];
  if ([menu isPrimary])
  {
    v6 = 0;
  }

  else
  {
    v6 = "_takeAction:";
  }

  subviewsModel = [(TUIRenderModelNavigationItem *)self subviewsModel];
  if (subviewsModel || [(TUIRenderModelNavigationItem *)self buttonType])
  {
    v8 = 1;
  }

  else
  {
    attributedTitle = [(TUIRenderModelNavigationItem *)self attributedTitle];
    if (attributedTitle)
    {
      v8 = 1;
    }

    else
    {
      title = [(TUIRenderModelNavigationItem *)self title];
      if (title)
      {
        image = [(TUIRenderModelNavigationItem *)self image];
        v8 = image != 0;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  if ([(TUIRenderModelNavigationItem *)self buttonType]== &dword_4 + 2)
  {
    [(TUIRenderModelNavigationItem *)self width];
    v9 = [TUIBarButtonItem fixedSpaceItemOfWidth:?];
LABEL_14:
    v12 = v9;
    goto LABEL_15;
  }

  if ([(TUIRenderModelNavigationItem *)self buttonType]== &dword_4 + 3)
  {
    v10 = [TUIBarButtonItem alloc];
    v11 = 0;
LABEL_13:
    v9 = [(TUIBarButtonItem *)v10 initWithBarButtonSystemItem:v11 target:self action:v6];
    goto LABEL_14;
  }

  if ([(TUIRenderModelNavigationItem *)self buttonType]== &dword_8)
  {
    v10 = [TUIBarButtonItem alloc];
    v11 = 24;
    goto LABEL_13;
  }

  if (v8)
  {
    v19 = objc_alloc_init(TUINavigationItemView);
    [(TUINavigationItemView *)v19 setFactory:factoryCopy];
    [(TUINavigationItemView *)v19 configureWithModel:self];
    v12 = [[TUIBarButtonItem alloc] initWithCustomView:v19];
    title2 = [(TUIRenderModelNavigationItem *)self title];
    [(TUIBarButtonItem *)v12 setTitle:title2];

    [(TUIBarButtonItem *)v12 setTarget:self];
    [(TUIBarButtonItem *)v12 setAction:v6];
  }

  else
  {
    v21 = [TUIBarButtonItem alloc];
    title3 = [(TUIRenderModelNavigationItem *)self title];
    v12 = [(TUIBarButtonItem *)v21 initWithTitle:title3 style:0 target:self action:v6];

    [(TUIRenderModelNavigationItem *)self width];
    [(TUIBarButtonItem *)v12 setWidth:?];
    [(TUIRenderModelNavigationItem *)self minWidth];
    [(TUIBarButtonItem *)v12 _setMinimumWidth:?];
    [(TUIRenderModelNavigationItem *)self maxWidth];
    [(TUIBarButtonItem *)v12 _setMaximumWidth:?];
  }

LABEL_15:
  attributedTitle2 = [(TUIRenderModelNavigationItem *)self attributedTitle];
  [(TUIBarButtonItem *)v12 setAttributedTitle:attributedTitle2];

  image2 = [(TUIRenderModelNavigationItem *)self image];
  [(TUIBarButtonItem *)v12 setImage:image2];

  [(TUIBarButtonItem *)v12 setEnabled:[(TUIRenderModelNavigationItem *)self isEnabled]];
  [(TUIBarButtonItem *)v12 setButtonType:[(TUIRenderModelNavigationItem *)self buttonType]];
  [(TUIBarButtonItem *)v12 setButtonRole:[(TUIRenderModelNavigationItem *)self buttonRole]];
  [(TUIRenderModelNavigationItem *)self width];
  [(TUIBarButtonItem *)v12 setButtonWidth:?];
  [(TUIRenderModelNavigationItem *)self minWidth];
  [(TUIBarButtonItem *)v12 setMinButtonWidth:?];
  [(TUIRenderModelNavigationItem *)self maxWidth];
  [(TUIBarButtonItem *)v12 setMaxButtonWidth:?];
  imageModelIDToResource = [(TUIRenderModelNavigationItem *)self imageModelIDToResource];
  [(TUIBarButtonItem *)v12 setImageModelIDToResource:imageModelIDToResource];

  [(TUIBarButtonItem *)v12 setMenuModel:menu];
  axAttributes = [(TUIRenderModelNavigationItem *)self axAttributes];
  [(TUIBarButtonItem *)v12 setAxAttributes:axAttributes];

  [(TUIBarButtonItem *)v12 _setPrefersNoPlatter:[(TUIRenderModelNavigationItem *)self prefersNoPlatter]];

  return v12;
}

- (void)_takeAction:(id)action
{
  actionCopy = action;
  v5 = objc_opt_class();
  v10 = TUIDynamicCast(v5, actionCopy);
  v6 = objc_opt_class();
  v7 = TUIDynamicCast(v6, actionCopy);

  v8 = objc_opt_new();
  if (v10)
  {
    [v8 setObject:v10 forKeyedSubscript:@"sourceView"];
  }

  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:@"sourceBarButtonItem"];
  }

  actionHandler = [(TUIRenderModelNavigationItem *)self actionHandler];
  [actionHandler invoke:@"press" arguments:v8];
}

- (id)renderViewWithFactory:(id)factory
{
  factoryCopy = factory;
  v5 = objc_alloc_init(TUINavigationItemView);
  [(TUINavigationItemView *)v5 setFactory:factoryCopy];

  [(TUINavigationItemView *)v5 configureWithModel:self];

  return v5;
}

- (id)renderSearchControllerWithFactory:(id)factory
{
  factoryCopy = factory;
  v5 = objc_alloc_init(TUISearchController);
  [(TUISearchController *)v5 setFactory:factoryCopy];

  [(TUISearchController *)v5 configureWithModel:self];

  return v5;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  v17 = TUIRenderModelIsEqualToRenderModel(self, v6) && ((title = self->_title, title == *(v6 + 32)) || [(NSString *)title isEqualToString:?]) && ((attributedTitle = self->_attributedTitle, attributedTitle == *(v6 + 40)) || [(NSAttributedString *)attributedTitle isEqualToAttributedString:?]) && ((image = self->_image, image == *(v6 + 48)) || [(UIImage *)image isEqual:?]) && self->_enabled == *(v6 + 8) && self->_buttonType == *(v6 + 56) && self->_buttonRole == *(v6 + 64) && self->_width == *(v6 + 72) && self->_minWidth == *(v6 + 80) && self->_maxWidth == *(v6 + 88) && ((text = self->_text, text == *(v6 + 96)) || [(NSString *)text isEqualToString:?]) && ((placeholderText = self->_placeholderText, placeholderText == *(v6 + 104)) || [(NSAttributedString *)placeholderText isEqualToAttributedString:?]) && self->_keyboardAppearance == *(v6 + 112) && self->_navigationBarBackgroundOpacity == *(v6 + 152) && ((observeTrigger = self->_observeTrigger, observeTrigger == *(v6 + 120)) || [(NSString *)observeTrigger isEqualToString:?]) && self->_observeTriggerValue == *(v6 + 128) && self->_itemType == *(v6 + 136) && ((imageModelIDToResource = self->_imageModelIDToResource, imageModelIDToResource == *(v6 + 208)) || [(NSDictionary *)imageModelIDToResource isEqualToDictionary:?]) && ((actionHandler = self->_actionHandler, actionHandler == *(v6 + 216)) || [(TUIElementActionTriggerHandler *)actionHandler isEqualToHandler:?]) && ((menu = self->_menu, menu == *(v6 + 160)) || [(TUIMenuModel *)menu isEqual:?]) && ((subviewsModel = self->_subviewsModel, subviewsModel == *(v6 + 224)) || [(TUIRenderModelSubviews *)subviewsModel isEqualToRenderModel:?]) && self->_prefersNoPlatter == *(v6 + 10);
  return v17;
}

- (unint64_t)hash
{
  identifier = [(TUIRenderModelNavigationItem *)self identifier];
  v3 = TUIIdentifierHash(identifier);

  return v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end