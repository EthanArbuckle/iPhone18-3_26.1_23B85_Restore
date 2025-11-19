@interface TUIRenderModelNavigationItem
+ (id)renderModelWithItemType:(unint64_t)a3 identifier:(id)a4 imageModelIDToResource:(id)a5 actionHandler:(id)a6 title:(id)a7 attributedTitle:(id)a8 image:(id)a9 enabled:(BOOL)a10 buttonType:(unint64_t)a11 buttonRole:(unint64_t)a12 width:(double)a13 minWidth:(double)a14 maxWidth:(double)a15 text:(id)a16 searchTextMaxLength:(int64_t)a17 placeholderText:(id)a18 keyboardAppearance:(unint64_t)a19 navigationBarBackgroundOpacity:(double)a20 observeTrigger:(id)a21 observeTriggerValue:(unint64_t)a22 ignoreInsetsForOpacityTrigger:(BOOL)a23 menu:(id)a24 subview:(id)a25 axAttributes:(id)a26 refId:(id)a27 refInstance:(id)a28 hostingIdentifiers:(id)a29 hostingProperties:(id)a30 prefersNoPlatter:(BOOL)a31;
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (TUIRenderModelNavigationItem)initWithItemType:(unint64_t)a3 identifier:(id)a4 imageModelIDToResource:(id)a5 actionHandler:(id)a6 title:(id)a7 attributedTitle:(id)a8 image:(id)a9 enabled:(BOOL)a10 buttonType:(unint64_t)a11 buttonRole:(unint64_t)a12 width:(double)a13 minWidth:(double)a14 maxWidth:(double)a15 text:(id)a16 searchTextMaxLength:(int64_t)a17 placeholderText:(id)a18 keyboardAppearance:(unint64_t)a19 navigationBarBackgroundOpacity:(double)a20 observeTrigger:(id)a21 observeTriggerValue:(unint64_t)a22 ignoreInsetsForOpacityTrigger:(BOOL)a23 menu:(id)a24 subview:(id)a25 axAttributes:(id)a26 refId:(id)a27 refInstance:(id)a28 hostingIdentifiers:(id)a29 hostingProperties:(id)a30 prefersNoPlatter:(BOOL)a31;
- (id)renderItemWithFactory:(id)a3;
- (id)renderSearchControllerWithFactory:(id)a3;
- (id)renderViewWithFactory:(id)a3;
- (unint64_t)hash;
- (void)_takeAction:(id)a3;
@end

@implementation TUIRenderModelNavigationItem

- (TUIRenderModelNavigationItem)initWithItemType:(unint64_t)a3 identifier:(id)a4 imageModelIDToResource:(id)a5 actionHandler:(id)a6 title:(id)a7 attributedTitle:(id)a8 image:(id)a9 enabled:(BOOL)a10 buttonType:(unint64_t)a11 buttonRole:(unint64_t)a12 width:(double)a13 minWidth:(double)a14 maxWidth:(double)a15 text:(id)a16 searchTextMaxLength:(int64_t)a17 placeholderText:(id)a18 keyboardAppearance:(unint64_t)a19 navigationBarBackgroundOpacity:(double)a20 observeTrigger:(id)a21 observeTriggerValue:(unint64_t)a22 ignoreInsetsForOpacityTrigger:(BOOL)a23 menu:(id)a24 subview:(id)a25 axAttributes:(id)a26 refId:(id)a27 refInstance:(id)a28 hostingIdentifiers:(id)a29 hostingProperties:(id)a30 prefersNoPlatter:(BOOL)a31
{
  v74 = a4;
  v75 = a5;
  obj = a6;
  v73 = a6;
  v80 = a7;
  v79 = a8;
  v72 = a9;
  v77 = a16;
  v76 = a18;
  v38 = a21;
  v39 = a24;
  v71 = a25;
  v40 = a26;
  v41 = a27;
  v42 = a28;
  v43 = a29;
  v44 = a30;
  v81.receiver = self;
  v81.super_class = TUIRenderModelNavigationItem;
  v45 = [(TUIRenderModelNavigationItem *)&v81 init];
  v46 = v45;
  if (v45)
  {
    v45->_itemType = a3;
    v47 = [v74 copyWithZone:0];
    identifier = v46->_identifier;
    v46->_identifier = v47;

    v49 = [v75 copy];
    imageModelIDToResource = v46->_imageModelIDToResource;
    v46->_imageModelIDToResource = v49;

    objc_storeStrong(&v46->_actionHandler, obj);
    v51 = [v80 copy];
    title = v46->_title;
    v46->_title = v51;

    v46->_searchTextMaxLength = a17;
    v53 = [v79 copy];
    attributedTitle = v46->_attributedTitle;
    v46->_attributedTitle = v53;

    objc_storeStrong(&v46->_image, a9);
    v46->_enabled = a10;
    v46->_buttonType = a11;
    v46->_buttonRole = a12;
    v46->_width = a13;
    v46->_minWidth = a14;
    v46->_maxWidth = a15;
    v55 = [v77 copy];
    text = v46->_text;
    v46->_text = v55;

    v57 = [v76 copy];
    placeholderText = v46->_placeholderText;
    v46->_placeholderText = v57;

    v59 = [v38 copy];
    observeTrigger = v46->_observeTrigger;
    v46->_observeTrigger = v59;

    v46->_observeTriggerValue = a22;
    v46->_ignoreInsetsForOpacityTrigger = a23;
    objc_storeStrong(&v46->_subviewsModel, a25);
    v46->_navigationBarBackgroundOpacity = a20;
    v46->_keyboardAppearance = a19;
    objc_storeStrong(&v46->_menu, a24);
    v61 = [v40 copy];
    axAttributes = v46->_axAttributes;
    v46->_axAttributes = v61;

    objc_storeStrong(&v46->_refId, a27);
    objc_storeStrong(&v46->_refInstance, a28);
    v63 = [v43 copy];
    hostingIdentifiers = v46->_hostingIdentifiers;
    v46->_hostingIdentifiers = v63;

    v65 = [v44 copy];
    hostingProperties = v46->_hostingProperties;
    v46->_hostingProperties = v65;

    v46->_prefersNoPlatter = a31;
  }

  return v46;
}

+ (id)renderModelWithItemType:(unint64_t)a3 identifier:(id)a4 imageModelIDToResource:(id)a5 actionHandler:(id)a6 title:(id)a7 attributedTitle:(id)a8 image:(id)a9 enabled:(BOOL)a10 buttonType:(unint64_t)a11 buttonRole:(unint64_t)a12 width:(double)a13 minWidth:(double)a14 maxWidth:(double)a15 text:(id)a16 searchTextMaxLength:(int64_t)a17 placeholderText:(id)a18 keyboardAppearance:(unint64_t)a19 navigationBarBackgroundOpacity:(double)a20 observeTrigger:(id)a21 observeTriggerValue:(unint64_t)a22 ignoreInsetsForOpacityTrigger:(BOOL)a23 menu:(id)a24 subview:(id)a25 axAttributes:(id)a26 refId:(id)a27 refInstance:(id)a28 hostingIdentifiers:(id)a29 hostingProperties:(id)a30 prefersNoPlatter:(BOOL)a31
{
  v48 = a30;
  v35 = a29;
  v47 = a28;
  v46 = a27;
  v45 = a26;
  v61 = a25;
  v60 = a24;
  v59 = a21;
  v43 = a18;
  v44 = a16;
  v58 = a9;
  v50 = a8;
  v52 = a7;
  v36 = a6;
  v37 = a5;
  v38 = a4;
  LOBYTE(v42) = a31;
  LOBYTE(v41) = a23;
  LOBYTE(v40) = a10;
  v57 = [[TUIRenderModelNavigationItem alloc] initWithItemType:a3 identifier:v38 imageModelIDToResource:v37 actionHandler:v36 title:v52 attributedTitle:v50 image:a13 enabled:a14 buttonType:a15 buttonRole:a20 width:v58 minWidth:v40 maxWidth:a11 text:a12 searchTextMaxLength:v44 placeholderText:a17 keyboardAppearance:v43 navigationBarBackgroundOpacity:a19 observeTrigger:v59 observeTriggerValue:a22 ignoreInsetsForOpacityTrigger:v41 menu:v60 subview:v61 axAttributes:v45 refId:v46 refInstance:v47 hostingIdentifiers:v35 hostingProperties:v48 prefersNoPlatter:v42];

  return v57;
}

- (id)renderItemWithFactory:(id)a3
{
  v4 = a3;
  v5 = [(TUIRenderModelNavigationItem *)self menu];
  if ([v5 isPrimary])
  {
    v6 = 0;
  }

  else
  {
    v6 = "_takeAction:";
  }

  v7 = [(TUIRenderModelNavigationItem *)self subviewsModel];
  if (v7 || [(TUIRenderModelNavigationItem *)self buttonType])
  {
    v8 = 1;
  }

  else
  {
    v18 = [(TUIRenderModelNavigationItem *)self attributedTitle];
    if (v18)
    {
      v8 = 1;
    }

    else
    {
      v23 = [(TUIRenderModelNavigationItem *)self title];
      if (v23)
      {
        v24 = [(TUIRenderModelNavigationItem *)self image];
        v8 = v24 != 0;
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
    [(TUINavigationItemView *)v19 setFactory:v4];
    [(TUINavigationItemView *)v19 configureWithModel:self];
    v12 = [[TUIBarButtonItem alloc] initWithCustomView:v19];
    v20 = [(TUIRenderModelNavigationItem *)self title];
    [(TUIBarButtonItem *)v12 setTitle:v20];

    [(TUIBarButtonItem *)v12 setTarget:self];
    [(TUIBarButtonItem *)v12 setAction:v6];
  }

  else
  {
    v21 = [TUIBarButtonItem alloc];
    v22 = [(TUIRenderModelNavigationItem *)self title];
    v12 = [(TUIBarButtonItem *)v21 initWithTitle:v22 style:0 target:self action:v6];

    [(TUIRenderModelNavigationItem *)self width];
    [(TUIBarButtonItem *)v12 setWidth:?];
    [(TUIRenderModelNavigationItem *)self minWidth];
    [(TUIBarButtonItem *)v12 _setMinimumWidth:?];
    [(TUIRenderModelNavigationItem *)self maxWidth];
    [(TUIBarButtonItem *)v12 _setMaximumWidth:?];
  }

LABEL_15:
  v13 = [(TUIRenderModelNavigationItem *)self attributedTitle];
  [(TUIBarButtonItem *)v12 setAttributedTitle:v13];

  v14 = [(TUIRenderModelNavigationItem *)self image];
  [(TUIBarButtonItem *)v12 setImage:v14];

  [(TUIBarButtonItem *)v12 setEnabled:[(TUIRenderModelNavigationItem *)self isEnabled]];
  [(TUIBarButtonItem *)v12 setButtonType:[(TUIRenderModelNavigationItem *)self buttonType]];
  [(TUIBarButtonItem *)v12 setButtonRole:[(TUIRenderModelNavigationItem *)self buttonRole]];
  [(TUIRenderModelNavigationItem *)self width];
  [(TUIBarButtonItem *)v12 setButtonWidth:?];
  [(TUIRenderModelNavigationItem *)self minWidth];
  [(TUIBarButtonItem *)v12 setMinButtonWidth:?];
  [(TUIRenderModelNavigationItem *)self maxWidth];
  [(TUIBarButtonItem *)v12 setMaxButtonWidth:?];
  v15 = [(TUIRenderModelNavigationItem *)self imageModelIDToResource];
  [(TUIBarButtonItem *)v12 setImageModelIDToResource:v15];

  [(TUIBarButtonItem *)v12 setMenuModel:v5];
  v16 = [(TUIRenderModelNavigationItem *)self axAttributes];
  [(TUIBarButtonItem *)v12 setAxAttributes:v16];

  [(TUIBarButtonItem *)v12 _setPrefersNoPlatter:[(TUIRenderModelNavigationItem *)self prefersNoPlatter]];

  return v12;
}

- (void)_takeAction:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = TUIDynamicCast(v5, v4);
  v6 = objc_opt_class();
  v7 = TUIDynamicCast(v6, v4);

  v8 = objc_opt_new();
  if (v10)
  {
    [v8 setObject:v10 forKeyedSubscript:@"sourceView"];
  }

  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:@"sourceBarButtonItem"];
  }

  v9 = [(TUIRenderModelNavigationItem *)self actionHandler];
  [v9 invoke:@"press" arguments:v8];
}

- (id)renderViewWithFactory:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TUINavigationItemView);
  [(TUINavigationItemView *)v5 setFactory:v4];

  [(TUINavigationItemView *)v5 configureWithModel:self];

  return v5;
}

- (id)renderSearchControllerWithFactory:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TUISearchController);
  [(TUISearchController *)v5 setFactory:v4];

  [(TUISearchController *)v5 configureWithModel:self];

  return v5;
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  v17 = TUIRenderModelIsEqualToRenderModel(self, v6) && ((title = self->_title, title == *(v6 + 32)) || [(NSString *)title isEqualToString:?]) && ((attributedTitle = self->_attributedTitle, attributedTitle == *(v6 + 40)) || [(NSAttributedString *)attributedTitle isEqualToAttributedString:?]) && ((image = self->_image, image == *(v6 + 48)) || [(UIImage *)image isEqual:?]) && self->_enabled == *(v6 + 8) && self->_buttonType == *(v6 + 56) && self->_buttonRole == *(v6 + 64) && self->_width == *(v6 + 72) && self->_minWidth == *(v6 + 80) && self->_maxWidth == *(v6 + 88) && ((text = self->_text, text == *(v6 + 96)) || [(NSString *)text isEqualToString:?]) && ((placeholderText = self->_placeholderText, placeholderText == *(v6 + 104)) || [(NSAttributedString *)placeholderText isEqualToAttributedString:?]) && self->_keyboardAppearance == *(v6 + 112) && self->_navigationBarBackgroundOpacity == *(v6 + 152) && ((observeTrigger = self->_observeTrigger, observeTrigger == *(v6 + 120)) || [(NSString *)observeTrigger isEqualToString:?]) && self->_observeTriggerValue == *(v6 + 128) && self->_itemType == *(v6 + 136) && ((imageModelIDToResource = self->_imageModelIDToResource, imageModelIDToResource == *(v6 + 208)) || [(NSDictionary *)imageModelIDToResource isEqualToDictionary:?]) && ((actionHandler = self->_actionHandler, actionHandler == *(v6 + 216)) || [(TUIElementActionTriggerHandler *)actionHandler isEqualToHandler:?]) && ((menu = self->_menu, menu == *(v6 + 160)) || [(TUIMenuModel *)menu isEqual:?]) && ((subviewsModel = self->_subviewsModel, subviewsModel == *(v6 + 224)) || [(TUIRenderModelSubviews *)subviewsModel isEqualToRenderModel:?]) && self->_prefersNoPlatter == *(v6 + 10);
  return v17;
}

- (unint64_t)hash
{
  v2 = [(TUIRenderModelNavigationItem *)self identifier];
  v3 = TUIIdentifierHash(v2);

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