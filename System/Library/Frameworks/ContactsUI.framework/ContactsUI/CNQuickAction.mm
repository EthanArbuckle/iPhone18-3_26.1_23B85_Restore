@interface CNQuickAction
+ (BOOL)reallyPerform;
+ (id)actionWithTitle:(id)a3 image:(id)a4 block:(id)a5;
+ (id)defaultTitleForActionInCategory:(id)a3 context:(int64_t)a4;
+ (id)possibleTitlesForActionsInCategories:(id)a3 context:(int64_t)a4;
- (BOOL)isBackAction;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesDuetInteraction:(id)a3;
- (CNQuickAction)init;
- (CNQuickActionsManager)manager;
- (NSString)globalIdentifier;
- (UIImage)image;
- (UIView)sourceView;
- (id)_coreDuetInteractionMechanisms;
- (id)defaultTitleForContext:(int64_t)a3;
- (id)description;
- (id)imageForContext:(int64_t)a3;
- (id)outlinedImage;
- (id)titleForContext:(int64_t)a3;
- (id)userActionType;
- (unint64_t)hash;
- (void)performWithCompletionBlock:(id)a3;
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
  v5 = [(CNQuickAction *)self title];
  v6 = [(CNQuickAction *)self globalIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@ - %@ - score: %lu", v4, self, v5, v6, -[CNQuickAction score](self, "score")];

  return v7;
}

- (void)performWithCompletionBlock:(id)a3
{
  v9 = a3;
  v4 = [(CNQuickAction *)self performBlock];

  if (v4)
  {
    v5 = [(CNQuickAction *)self performBlock];
    v5[2]();
  }

  else
  {
    v5 = [(CNQuickAction *)self globalIdentifier];
    NSLog(&cfstr_PerformAction.isa, v5);
  }

  v6 = [(CNQuickAction *)self manager];

  if (v6)
  {
    v7 = [(CNQuickAction *)self manager];
    [v7 actionPerformed:self];
  }

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

- (id)titleForContext:(int64_t)a3
{
  v5 = [(CNQuickAction *)self title];
  if (!v5)
  {
    v5 = [(CNQuickAction *)self defaultTitleForContext:a3];
  }

  return v5;
}

- (id)defaultTitleForContext:(int64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(CNQuickAction *)self category];
  v7 = [v5 defaultTitleForActionInCategory:v6 context:a3];

  return v7;
}

- (id)imageForContext:(int64_t)a3
{
  v4 = [(CNQuickAction *)self category];
  v5 = [v4 isEqualToString:CNQuickActionCategoryAudioCall];

  if (v5)
  {
    v6 = MEMORY[0x1E695C150];
  }

  else
  {
    v7 = [(CNQuickAction *)self category];
    v8 = [v7 isEqualToString:CNQuickActionCategoryVideoCall];

    if (v8)
    {
      v6 = MEMORY[0x1E695C1B8];
    }

    else
    {
      v9 = [(CNQuickAction *)self category];
      v10 = [v9 isEqualToString:CNQuickActionCategoryInstantMessage];

      if (v10)
      {
        v6 = MEMORY[0x1E695C178];
      }

      else
      {
        v11 = [(CNQuickAction *)self category];
        v12 = [v11 isEqualToString:CNQuickActionCategoryMail];

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
    v14 = v13;
    v15 = MEMORY[0x1E69DCAB8];
    v16 = [(CNQuickAction *)self imageTintColor];
    v17 = [v15 cnui_userActionSymbolImageForActionType:v14 scale:3 withColor:v16];

LABEL_14:
    goto LABEL_15;
  }

LABEL_11:
  v18 = [(CNQuickAction *)self category];
  v19 = [v18 isEqualToString:CNQuickActionCategoryInfo];

  if (v19)
  {
    v20 = MEMORY[0x1E69DCAB8];
    v14 = [(CNQuickAction *)self imageTintColor];
    v21 = @"info.circle.fill";
LABEL_13:
    v17 = [v20 cnui_symbolImageNamed:v21 scale:3 withColor:v14 useFixedSize:1];
    goto LABEL_14;
  }

  v23 = [(CNQuickAction *)self category];
  v24 = [v23 isEqualToString:CNQuickActionCategoryAddToContacts];

  if (v24)
  {
    v25 = [(CNQuickAction *)self identifier];
    v26 = [v25 isEqualToString:@"create-new"];

    v20 = MEMORY[0x1E69DCAB8];
    v14 = [(CNQuickAction *)self imageTintColor];
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
  v3 = [(CNQuickAction *)self userActionType];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [(CNQuickAction *)self imageTintColor];
    v6 = [v4 cnui_userActionOutlinedSymbolImageForActionType:v3 scale:3 withColor:v5];
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
    v5 = [(CNQuickAction *)self userActionType];
    if (v5)
    {
      v6 = MEMORY[0x1E69DCAB8];
      v7 = [(CNQuickAction *)self imageTintColor];
      v3 = [v6 cnui_userActionSymbolImageForActionType:v5 scale:3 withColor:v7];
    }

    else
    {
      v3 = [(CNQuickAction *)self imageForContext:0];
    }
  }

  return v3;
}

- (BOOL)matchesDuetInteraction:(id)a3
{
  v4 = a3;
  v5 = [(CNQuickAction *)self _coreDuetInteractionMechanisms];
  if ([v5 containsIndex:{objc_msgSend(v4, "mechanism")}])
  {
    v6 = [v4 contact];
    v7 = [v6 identifier];

    v8 = [(CNQuickAction *)self _coreDuetValue];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v7 compare:v8 options:385] == 0;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = MEMORY[0x1E695CF50];
          v11 = v8;
          v12 = [v10 phoneNumberWithStringValue:v7];
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
  v3 = [MEMORY[0x1E696AD50] indexSet];
  v4 = [(CNQuickAction *)self category];
  v5 = [v4 isEqualToString:CNQuickActionCategoryAudioCall];

  if (v5)
  {
    v6 = 16;
  }

  else
  {
    v7 = [(CNQuickAction *)self category];
    v8 = [v7 isEqualToString:CNQuickActionCategoryVideoCall];

    if (v8)
    {
      v6 = 17;
    }

    else
    {
      v9 = [(CNQuickAction *)self category];
      v10 = [v9 isEqualToString:CNQuickActionCategoryInstantMessage];

      if (v10)
      {
        [v3 addIndex:2];
        [v3 addIndex:3];
        v6 = 4;
      }

      else
      {
        v11 = [(CNQuickAction *)self category];
        v12 = [v11 isEqualToString:CNQuickActionCategoryMail];

        if (!v12)
        {
          goto LABEL_10;
        }

        v6 = 1;
      }
    }
  }

  [v3 addIndex:v6];
LABEL_10:

  return v3;
}

- (NSString)globalIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CNQuickAction *)self category];
  v5 = [(CNQuickAction *)self identifier];
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CNQuickAction *)self globalIdentifier];
    v7 = [v5 globalIdentifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(CNQuickAction *)self globalIdentifier];
  v3 = [v2 hash];

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

+ (id)actionWithTitle:(id)a3 image:(id)a4 block:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  [v11 setImage:v9];

  [v11 setTitle:v10];
  [v11 setPerformBlock:v8];

  return v11;
}

+ (id)defaultTitleForActionInCategory:(id)a3 context:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 isEqualToString:CNQuickActionCategoryAudioCall];
  if (a4 == 5)
  {
    if (v6)
    {
      v7 = @"ACTION_BUTTON_AUDIO_CALL";
LABEL_22:
      v8 = CNContactsUIBundle();
      v9 = [v8 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized"];

      goto LABEL_23;
    }

    if ([v5 isEqualToString:CNQuickActionCategoryVideoCall])
    {
      v7 = @"ACTION_BUTTON_VIDEO_CALL";
      goto LABEL_22;
    }

    if ([v5 isEqualToString:CNQuickActionCategoryInstantMessage])
    {
      v7 = @"ACTION_BUTTON_MESSAGE";
      goto LABEL_22;
    }

    if ([v5 isEqualToString:CNQuickActionCategoryMail])
    {
      v7 = @"ACTION_BUTTON_MAIL";
      goto LABEL_22;
    }

    if ([v5 isEqualToString:CNQuickActionCategoryInfo])
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

    if ([v5 isEqualToString:CNQuickActionCategoryVideoCall])
    {
      v7 = @"ACTION_VIDEO_CALL";
      goto LABEL_22;
    }

    if ([v5 isEqualToString:CNQuickActionCategoryInstantMessage])
    {
      v7 = @"ACTION_MESSAGE";
      goto LABEL_22;
    }

    if ([v5 isEqualToString:CNQuickActionCategoryMail])
    {
      v7 = @"ACTION_MAIL";
      goto LABEL_22;
    }

    if ([v5 isEqualToString:CNQuickActionCategoryInfo])
    {
      v7 = @"ACTION_INFO";
      goto LABEL_22;
    }
  }

  v9 = 0;
LABEL_23:

  return v9;
}

+ (id)possibleTitlesForActionsInCategories:(id)a3 context:(int64_t)a4
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = [v6 array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__CNQuickAction_possibleTitlesForActionsInCategories_context___block_invoke;
  v12[3] = &unk_1E74E2288;
  v13 = v8;
  v14 = a1;
  v15 = a4;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

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
  v2 = [(CNQuickAction *)self identifier];
  v3 = [v2 isEqualToString:@"back"];

  return v3;
}

- (id)userActionType
{
  if (userActionType_cn_once_token_1 != -1)
  {
    dispatch_once(&userActionType_cn_once_token_1, &__block_literal_global_19203);
  }

  v3 = userActionType_cn_once_object_1;
  v4 = [(CNQuickAction *)self category];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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