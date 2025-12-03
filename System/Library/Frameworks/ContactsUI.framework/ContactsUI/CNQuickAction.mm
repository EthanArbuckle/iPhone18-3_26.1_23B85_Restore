@interface CNQuickAction
+ (BOOL)reallyPerform;
+ (id)actionWithTitle:(id)title image:(id)image block:(id)block;
+ (id)defaultTitleForActionInCategory:(id)category context:(int64_t)context;
+ (id)possibleTitlesForActionsInCategories:(id)categories context:(int64_t)context;
- (BOOL)isBackAction;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesDuetInteraction:(id)interaction;
- (CNQuickAction)init;
- (CNQuickActionsManager)manager;
- (NSString)globalIdentifier;
- (UIImage)image;
- (UIView)sourceView;
- (id)_coreDuetInteractionMechanisms;
- (id)defaultTitleForContext:(int64_t)context;
- (id)description;
- (id)imageForContext:(int64_t)context;
- (id)outlinedImage;
- (id)titleForContext:(int64_t)context;
- (id)userActionType;
- (unint64_t)hash;
- (void)performWithCompletionBlock:(id)block;
@end

@implementation CNQuickAction

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (CNQuickActionsManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(CNQuickAction *)self title];
  globalIdentifier = [(CNQuickAction *)self globalIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@ - %@ - score: %lu", v4, self, title, globalIdentifier, -[CNQuickAction score](self, "score")];

  return v7;
}

- (void)performWithCompletionBlock:(id)block
{
  blockCopy = block;
  performBlock = [(CNQuickAction *)self performBlock];

  if (performBlock)
  {
    performBlock2 = [(CNQuickAction *)self performBlock];
    performBlock2[2]();
  }

  else
  {
    performBlock2 = [(CNQuickAction *)self globalIdentifier];
    NSLog(&cfstr_PerformAction.isa, performBlock2);
  }

  manager = [(CNQuickAction *)self manager];

  if (manager)
  {
    manager2 = [(CNQuickAction *)self manager];
    [manager2 actionPerformed:self];
  }

  v8 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
    v8 = blockCopy;
  }
}

- (id)titleForContext:(int64_t)context
{
  title = [(CNQuickAction *)self title];
  if (!title)
  {
    title = [(CNQuickAction *)self defaultTitleForContext:context];
  }

  return title;
}

- (id)defaultTitleForContext:(int64_t)context
{
  v5 = objc_opt_class();
  category = [(CNQuickAction *)self category];
  v7 = [v5 defaultTitleForActionInCategory:category context:context];

  return v7;
}

- (id)imageForContext:(int64_t)context
{
  category = [(CNQuickAction *)self category];
  v5 = [category isEqualToString:CNQuickActionCategoryAudioCall];

  if (v5)
  {
    v6 = MEMORY[0x1E695C150];
  }

  else
  {
    category2 = [(CNQuickAction *)self category];
    v8 = [category2 isEqualToString:CNQuickActionCategoryVideoCall];

    if (v8)
    {
      v6 = MEMORY[0x1E695C1B8];
    }

    else
    {
      category3 = [(CNQuickAction *)self category];
      v10 = [category3 isEqualToString:CNQuickActionCategoryInstantMessage];

      if (v10)
      {
        v6 = MEMORY[0x1E695C178];
      }

      else
      {
        category4 = [(CNQuickAction *)self category];
        v12 = [category4 isEqualToString:CNQuickActionCategoryMail];

        if (!v12)
        {
          goto LABEL_11;
        }

        v6 = MEMORY[0x1E695C170];
      }
    }
  }

  v13 = *v6;
  if (v13)
  {
    imageTintColor2 = v13;
    v15 = MEMORY[0x1E69DCAB8];
    imageTintColor = [(CNQuickAction *)self imageTintColor];
    v17 = [v15 cnui_userActionSymbolImageForActionType:imageTintColor2 scale:3 withColor:imageTintColor];

LABEL_14:
    goto LABEL_15;
  }

LABEL_11:
  category5 = [(CNQuickAction *)self category];
  v19 = [category5 isEqualToString:CNQuickActionCategoryInfo];

  if (v19)
  {
    v20 = MEMORY[0x1E69DCAB8];
    imageTintColor2 = [(CNQuickAction *)self imageTintColor];
    v21 = @"info.circle.fill";
LABEL_13:
    v17 = [v20 cnui_symbolImageNamed:v21 scale:3 withColor:imageTintColor2 useFixedSize:1];
    goto LABEL_14;
  }

  category6 = [(CNQuickAction *)self category];
  v24 = [category6 isEqualToString:CNQuickActionCategoryAddToContacts];

  if (v24)
  {
    identifier = [(CNQuickAction *)self identifier];
    v26 = [identifier isEqualToString:@"create-new"];

    v20 = MEMORY[0x1E69DCAB8];
    imageTintColor2 = [(CNQuickAction *)self imageTintColor];
    if (v26)
    {
      v21 = @"person.crop.circle";
    }

    else
    {
      v21 = @"person.crop.circle.badge.plus";
    }

    goto LABEL_13;
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (id)outlinedImage
{
  userActionType = [(CNQuickAction *)self userActionType];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v4 = MEMORY[0x1E69DCAB8];
    imageTintColor = [(CNQuickAction *)self imageTintColor];
    v6 = [v4 cnui_userActionOutlinedSymbolImageForActionType:userActionType scale:3 withColor:imageTintColor];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIImage)image
{
  image = self->_image;
  if (image)
  {
    v3 = image;
  }

  else
  {
    userActionType = [(CNQuickAction *)self userActionType];
    if (userActionType)
    {
      v6 = MEMORY[0x1E69DCAB8];
      imageTintColor = [(CNQuickAction *)self imageTintColor];
      v3 = [v6 cnui_userActionSymbolImageForActionType:userActionType scale:3 withColor:imageTintColor];
    }

    else
    {
      v3 = [(CNQuickAction *)self imageForContext:0];
    }
  }

  return v3;
}

- (BOOL)matchesDuetInteraction:(id)interaction
{
  interactionCopy = interaction;
  _coreDuetInteractionMechanisms = [(CNQuickAction *)self _coreDuetInteractionMechanisms];
  if ([_coreDuetInteractionMechanisms containsIndex:{objc_msgSend(interactionCopy, "mechanism")}])
  {
    contact = [interactionCopy contact];
    identifier = [contact identifier];

    _coreDuetValue = [(CNQuickAction *)self _coreDuetValue];
    if (_coreDuetValue)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [identifier compare:_coreDuetValue options:385] == 0;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = MEMORY[0x1E695CF50];
          v11 = _coreDuetValue;
          v12 = [v10 phoneNumberWithStringValue:identifier];
          v9 = [v11 isLikePhoneNumber:v12];
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_coreDuetInteractionMechanisms
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  category = [(CNQuickAction *)self category];
  v5 = [category isEqualToString:CNQuickActionCategoryAudioCall];

  if (v5)
  {
    v6 = 16;
  }

  else
  {
    category2 = [(CNQuickAction *)self category];
    v8 = [category2 isEqualToString:CNQuickActionCategoryVideoCall];

    if (v8)
    {
      v6 = 17;
    }

    else
    {
      category3 = [(CNQuickAction *)self category];
      v10 = [category3 isEqualToString:CNQuickActionCategoryInstantMessage];

      if (v10)
      {
        [indexSet addIndex:2];
        [indexSet addIndex:3];
        v6 = 4;
      }

      else
      {
        category4 = [(CNQuickAction *)self category];
        v12 = [category4 isEqualToString:CNQuickActionCategoryMail];

        if (!v12)
        {
          goto LABEL_10;
        }

        v6 = 1;
      }
    }
  }

  [indexSet addIndex:v6];
LABEL_10:

  return indexSet;
}

- (NSString)globalIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  category = [(CNQuickAction *)self category];
  identifier = [(CNQuickAction *)self identifier];
  v6 = [v3 stringWithFormat:@"%@.%@", category, identifier];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    globalIdentifier = [(CNQuickAction *)self globalIdentifier];
    globalIdentifier2 = [v5 globalIdentifier];

    v8 = [globalIdentifier isEqualToString:globalIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  globalIdentifier = [(CNQuickAction *)self globalIdentifier];
  v3 = [globalIdentifier hash];

  return v3;
}

- (CNQuickAction)init
{
  v5.receiver = self;
  v5.super_class = CNQuickAction;
  v2 = [(CNQuickAction *)&v5 init];
  [(CNQuickAction *)v2 setEnabled:1];
  [(CNQuickAction *)v2 setDismissesWithAnimation:1];
  v3 = +[CNUIColorRepository contactStyleDefaultTextColor];
  [(CNQuickAction *)v2 setImageTintColor:v3];

  return v2;
}

+ (id)actionWithTitle:(id)title image:(id)image block:(id)block
{
  blockCopy = block;
  imageCopy = image;
  titleCopy = title;
  v11 = objc_alloc_init(self);
  [v11 setImage:imageCopy];

  [v11 setTitle:titleCopy];
  [v11 setPerformBlock:blockCopy];

  return v11;
}

+ (id)defaultTitleForActionInCategory:(id)category context:(int64_t)context
{
  categoryCopy = category;
  v6 = [categoryCopy isEqualToString:CNQuickActionCategoryAudioCall];
  if (context == 5)
  {
    if (v6)
    {
      v7 = @"ACTION_BUTTON_AUDIO_CALL";
LABEL_22:
      v8 = CNContactsUIBundle();
      v9 = [v8 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized"];

      goto LABEL_23;
    }

    if ([categoryCopy isEqualToString:CNQuickActionCategoryVideoCall])
    {
      v7 = @"ACTION_BUTTON_VIDEO_CALL";
      goto LABEL_22;
    }

    if ([categoryCopy isEqualToString:CNQuickActionCategoryInstantMessage])
    {
      v7 = @"ACTION_BUTTON_MESSAGE";
      goto LABEL_22;
    }

    if ([categoryCopy isEqualToString:CNQuickActionCategoryMail])
    {
      v7 = @"ACTION_BUTTON_MAIL";
      goto LABEL_22;
    }

    if ([categoryCopy isEqualToString:CNQuickActionCategoryInfo])
    {
      v7 = @"ACTION_BUTTON_INFO";
      goto LABEL_22;
    }
  }

  else
  {
    if (v6)
    {
      v7 = @"ACTION_AUDIO_CALL";
      goto LABEL_22;
    }

    if ([categoryCopy isEqualToString:CNQuickActionCategoryVideoCall])
    {
      v7 = @"ACTION_VIDEO_CALL";
      goto LABEL_22;
    }

    if ([categoryCopy isEqualToString:CNQuickActionCategoryInstantMessage])
    {
      v7 = @"ACTION_MESSAGE";
      goto LABEL_22;
    }

    if ([categoryCopy isEqualToString:CNQuickActionCategoryMail])
    {
      v7 = @"ACTION_MAIL";
      goto LABEL_22;
    }

    if ([categoryCopy isEqualToString:CNQuickActionCategoryInfo])
    {
      v7 = @"ACTION_INFO";
      goto LABEL_22;
    }
  }

  v9 = 0;
LABEL_23:

  return v9;
}

+ (id)possibleTitlesForActionsInCategories:(id)categories context:(int64_t)context
{
  v6 = MEMORY[0x1E695DF70];
  categoriesCopy = categories;
  array = [v6 array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__CNQuickAction_possibleTitlesForActionsInCategories_context___block_invoke;
  v12[3] = &unk_1E74E2288;
  v13 = array;
  selfCopy = self;
  contextCopy = context;
  v9 = array;
  [categoriesCopy enumerateObjectsUsingBlock:v12];

  v10 = [v9 copy];

  return v10;
}

void __62__CNQuickAction_possibleTitlesForActionsInCategories_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) defaultTitleForActionInCategory:v8 context:*(a1 + 48)];
  [v3 addObject:v4];

  if ([v8 isEqualToString:CNQuickActionCategoryAudioCall])
  {
    v5 = *(a1 + 32);
    v6 = +[CNQuickFaceTimeAction defaultFaceTimeAudioTitle];
  }

  else
  {
    if (![v8 isEqualToString:CNQuickActionCategoryVideoCall])
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 32);
    v6 = +[CNQuickFaceTimeAction defaultFaceTimeTitle];
  }

  v7 = v6;
  [v5 addObject:v6];

LABEL_6:
}

+ (BOOL)reallyPerform
{
  if (reallyPerform_onceToken != -1)
  {
    dispatch_once(&reallyPerform_onceToken, &__block_literal_global_7210);
  }

  return reallyPerform_enabled;
}

uint64_t __30__CNQuickAction_reallyPerform__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"CNEnablePerformQuickActions", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  v2 = v1;
  reallyPerform_enabled = v2;
  return result;
}

- (BOOL)isBackAction
{
  identifier = [(CNQuickAction *)self identifier];
  v3 = [identifier isEqualToString:@"back"];

  return v3;
}

- (id)userActionType
{
  if (userActionType_cn_once_token_1 != -1)
  {
    dispatch_once(&userActionType_cn_once_token_1, &__block_literal_global_19203);
  }

  v3 = userActionType_cn_once_object_1;
  category = [(CNQuickAction *)self category];
  v5 = category;
  if (category)
  {
    v6 = category;
  }

  else
  {
    v6 = CNQuickActionCategoryMail;
  }

  v7 = [v3 objectForKey:v6];

  return v7;
}

void __51__CNQuickAction_CNUIUserActionItem__userActionType__block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C170];
  v6[0] = CNQuickActionCategoryMail;
  v6[1] = CNQuickActionCategoryInstantMessage;
  v1 = *MEMORY[0x1E695C178];
  v7[0] = v0;
  v7[1] = v1;
  v6[2] = CNQuickActionCategoryAudioCall;
  v6[3] = CNQuickActionCategoryVideoCall;
  v2 = *MEMORY[0x1E695C1B8];
  v7[2] = *MEMORY[0x1E695C150];
  v7[3] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v4 = [v3 copy];
  v5 = userActionType_cn_once_object_1;
  userActionType_cn_once_object_1 = v4;
}

@end