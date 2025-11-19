@interface CNAvatarView
+ (id)descriptionForDisplayedImageState:(int64_t)a3;
+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)a3;
+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)a3 shouldUseCachingRenderer:(BOOL)a4 description:(id)a5;
+ (id)makeDescriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)a3 shouldUseCachingRenderer:(BOOL)a4;
- (BOOL)avatarCardController:(id)a3 shouldShowContact:(id)a4;
- (BOOL)bypassActionValidation;
- (BOOL)isUpdatingGroupViewConfiguration;
- (BOOL)shouldUpdateWithContacts:(id)a3;
- (CALayer)sourceAvatarLayer;
- (CGRect)frameForAvatarAtIndex:(unint64_t)a3 inView:(id)a4;
- (CGRect)transitioningFrame;
- (CGRect)transitioningImageFrame;
- (CGSize)sizeThatFits:(CGSize)result;
- (CNAvatarView)init;
- (CNAvatarView)initWithContact:(id)a3;
- (CNAvatarView)initWithFrame:(CGRect)a3;
- (CNAvatarView)initWithImageRenderer:(id)a3 threeDTouchEnabled:(BOOL)a4 contactStore:(id)a5;
- (CNAvatarView)initWithImageRenderer:(id)a3 threeDTouchEnabled:(BOOL)a4 contactStore:(id)a5 style:(unint64_t)a6 schedulerProvider:(id)a7 backgroundStyle:(unint64_t)a8 personaId:(id)a9;
- (CNAvatarView)initWithSettings:(id)a3;
- (CNAvatarViewDelegate)delegate;
- (CNContact)contact;
- (NSArray)actionCategories;
- (UIImage)contentImage;
- (UIView)forcePressView;
- (double)_diameter;
- (id)avatarCardController:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5;
- (id)currentLikenessScope;
- (id)descriptorForRequiredKeys;
- (id)presentingViewControllerForAvatarCardController:(id)a3;
- (id)updateViewWithGroupIdentity:(id)a3;
- (id)updateViewWithGroupIdentity:(id)a3 maskingContacts:(id)a4;
- (int64_t)avatarCardController:(id)a3 presentationResultForLocation:(CGPoint)a4;
- (void)_renderContactsImage;
- (void)_setContacts:(id)a3;
- (void)_updateCardActions;
- (void)_updateRegistration;
- (void)avatarCacheDidUpdateForIdentifiers:(id)a3;
- (void)avatarCardControllerDidDismiss:(id)a3;
- (void)avatarCardControllerWillBeginPreviewInteraction:(id)a3;
- (void)avatarCardControllerWillDismiss:(id)a3;
- (void)avatarViewDidFinishRendering;
- (void)contactDidChange;
- (void)contactDidChange:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)dismissContactViewController:(id)a3;
- (void)layoutSubviews;
- (void)notifyDelegateOfGroupConfigurationUpdateWithError:(id)a3;
- (void)performTransitionAnimationWithStartHandler:(id)a3 completion:(id)a4;
- (void)resetGroupUpdateTokenIfNeeded;
- (void)setActionCategories:(id)a3;
- (void)setAutoUpdateContact:(BOOL)a3;
- (void)setBackgroundStyle:(unint64_t)a3;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
- (void)setBypassActionValidation:(BOOL)a3;
- (void)setContact:(id)a3;
- (void)setContacts:(id)a3;
- (void)setContacts:(id)a3 forToken:(id)a4;
- (void)setContextToken:(id)a3;
- (void)setDisableCornerRadiusForAvatar:(BOOL)a3;
- (void)setForcePressView:(id)a3;
- (void)setImage:(id)a3 state:(int64_t)a4;
- (void)setShouldFetchSharedMeContactPhoto:(BOOL)a3;
- (void)setShowsActionsOnForcePress:(BOOL)a3;
- (void)setShowsActionsOnTap:(BOOL)a3;
- (void)setShowsContactOnTap:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setThreeDTouchEnabled:(BOOL)a3;
- (void)setupAvatarCardControllerIfNeeded;
- (void)showContact:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CNAvatarView

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = CNAvatarView;
  [(CNAvatarView *)&v28 layoutSubviews];
  v3 = [(CNAvatarView *)self window];

  if (v3)
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    [(CNAvatarView *)self bounds];
    [(CNAvatarView *)self sizeThatFits:v6, v7];
    v9 = v8;
    v11 = v10;
    v12 = [(CNAvatarView *)self imageView];
    [v12 frame];
    v15 = v11 == v14 && v9 == v13;

    if (!v15)
    {
      v16 = [(CNAvatarView *)self imageView];
      [v16 setFrame:{v4, v5, v9, v11}];

      v17 = [(CNAvatarView *)self alternativeImageView];
      [v17 setFrame:{v4, v5, v9, v11}];

      v18 = [(CNAvatarView *)self alternativeImageView];
      v19 = [v18 layer];
      [v19 frame];
      v21 = v20 * 0.5;
      v22 = [(CNAvatarView *)self alternativeImageView];
      v23 = [v22 layer];
      [v23 setCornerRadius:v21];

      if ([(CNAvatarView *)self displayedImageState]== 1)
      {
        [(CNAvatarView *)self setImage:0 state:0];
      }
    }

    v24 = [MEMORY[0x1E69966E8] currentEnvironment];
    v25 = [v24 featureFlags];
    v26 = [v25 isFeatureEnabled:6];

    if ((v26 & 1) == 0 && (!v15 || ![(CNAvatarView *)self displayedImageState]))
    {
      [(CNAvatarView *)self _renderContactsImage];
    }

    v27 = [(CNAvatarView *)self avatarView];
    [v27 setFrame:{v4, v5, v9, v11}];
  }
}

- (void)_renderContactsImage
{
  v59[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  if ([v4 isFeatureEnabled:6])
  {
    v5 = [(CNAvatarView *)self contacts];

    if (v5)
    {
      v6 = [(CNAvatarView *)self contacts];
      if (self->_style)
      {
        v7 = [(CNAvatarView *)self contacts];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __36__CNAvatarView__renderContactsImage__block_invoke;
        v55[3] = &unk_1E74E1D08;
        v55[4] = self;
        v8 = [v7 _cn_map:v55];

        v6 = v8;
      }

      v9 = [(CNAvatarView *)self avatarView];
      v10 = v9 == 0;

      if (v10)
      {
        v11 = [[_TtC10ContactsUI25CNAvatarView_SwiftWrapper alloc] initWithContacts:v6 listener:self];
        [(CNAvatarView_SwiftWrapper *)v11 setBackgroundStyle:[(CNAvatarView *)self backgroundStyle]];
        v27 = [(CNAvatarView *)self borderColor];
        [(CNAvatarView_SwiftWrapper *)v11 setBorderColor:v27];

        [(CNAvatarView *)self borderWidth];
        [(CNAvatarView_SwiftWrapper *)v11 setBorderWidth:?];
        [(CNAvatarView *)self addSubview:v11];
        [(CNAvatarView *)self setAvatarView:v11];
      }

      else
      {
        v11 = [(CNAvatarView *)self avatarView];
        [(CNAvatarView_SwiftWrapper *)v11 setContacts:v6];
      }

      [(CNAvatarView *)self bounds];
      [(CNAvatarView *)self sizeThatFits:v28, v29];
      v31 = v30;
      v33 = v32;
      v14 = [(CNAvatarView *)self avatarView];
      [v14 setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), v31, v33}];
LABEL_24:

      goto LABEL_25;
    }
  }

  else
  {
  }

  kdebug_trace();
  [(CNAvatarView *)self _updateRegistration];
  v12 = [(CNAvatarView *)self rendererToken];
  [v12 cancel];

  [(CNAvatarView *)self setRendererToken:0];
  v6 = [(CNAvatarView *)self currentLikenessScope];
  if (v6)
  {
    if ([(CNAvatarView *)self displayedImageState])
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v15 = [(CNAvatarView *)self imageRenderer];
      v16 = [(CNAvatarView *)self contacts];
      v17 = [v15 loadingPlaceholderForContactCount:objc_msgSend(v16 scope:{"count"), v6}];

      [(CNAvatarView *)self setImage:v17 state:1];
      v18 = [(CNAvatarView *)self imageView];
      v19 = [v18 image];
      v20 = [v17 isEqual:v19];

      if (v20)
      {
        v21 = MEMORY[0x1E6996B80];
        v22 = [(CNAvatarView *)self contacts];
        v14 = [v21 publicFingerprintForContacts:v22 scope:v6];

        v23 = [(CNAvatarView *)self contacts];
        v24 = [v23 count];
        v13 = v24 > 1;

        v25 = CNUILogAvatarView();
        v26 = v25;
        if (v24 < 2)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v14;
            _os_log_impl(&dword_199A75000, v26, OS_LOG_TYPE_INFO, "[CNAvatarView][LikenessRenderer] (%p) showing placeholder, requesting image for contact %{public}@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_debug_impl(&dword_199A75000, v26, OS_LOG_TYPE_DEBUG, "[CNAvatarView][LikenessRenderer] (%p) showing placeholder, requesting image for group %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    v34 = [(CNAvatarView *)self contacts];
    v35 = [v34 count] == 0;

    if (!v35)
    {
      v36 = [(CNAvatarView *)self imageRenderer];
      v37 = [(CNAvatarView *)self contacts];
      v38 = [(CNAvatarView *)self schedulerProvider];
      v39 = [v38 backgroundScheduler];
      v40 = [v36 renderedLikenessesForContacts:v37 scope:v6 workScheduler:v39];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3042000000;
      v57 = __Block_byref_object_copy__2846;
      v58 = __Block_byref_object_dispose__2847;
      v59[0] = 0;
      objc_initWeak(&location, self);
      v41 = [(CNAvatarView *)self schedulerProvider];
      v42 = [v41 mainThreadScheduler];

      v43 = MEMORY[0x1E69967A0];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __36__CNAvatarView__renderContactsImage__block_invoke_71;
      v48[3] = &unk_1E74E1D58;
      objc_copyWeak(&v52, &location);
      v53 = v13;
      v14 = v14;
      v49 = v14;
      v44 = v42;
      v50 = v44;
      v51 = buf;
      v45 = [v43 observerWithResultBlock:v48];
      v46 = [v40 subscribe:v45];
      [(CNAvatarView *)self setRendererToken:v46];

      v47 = [(CNAvatarView *)self rendererToken];
      objc_storeWeak((*&buf[8] + 40), v47);

      objc_destroyWeak(&v52);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
      objc_destroyWeak(v59);
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)isUpdatingGroupViewConfiguration
{
  v2 = [(CNAvatarView *)self groupViewConfigurationUpdateToken];
  v3 = v2 != 0;

  return v3;
}

- (void)setupAvatarCardControllerIfNeeded
{
  v3 = [(CNAvatarView *)self cardController];
  if (!v3)
  {
    if ([(CNAvatarView *)self isThreeDTouchEnabled])
    {
      v4 = [(CNAvatarView *)self traitCollection];
      v5 = [CNAvatarCardController avatarCardEnabledForTraitCollection:v4];

      if (!v5)
      {
        return;
      }

      v6 = objc_alloc_init(CNAvatarCardController);
      [(CNAvatarCardController *)v6 setAvatarView:self];
      [(CNAvatarCardController *)v6 setDelegate:self];
      [(CNAvatarView *)self setCardController:v6];
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }
  }
}

- (void)_updateRegistration
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNAvatarView *)self autoUpdateContact];
  if (self->_registeredInNotifier != v3)
  {
    v4 = v3;
    if (v3)
    {
      v22 = v3;
      v5 = [(CNAvatarView *)self descriptorForRequiredKeys];
      v33[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = self->_contacts;
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v28;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v27 + 1) + 8 * i);
            v13 = +[CNUIContactsEnvironment currentEnvironment];
            v14 = [v13 contactChangesNotifier];
            [v14 registerObserver:self forContact:v12 keysToFetch:v6];
          }

          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v9);
      }

      v4 = v22;
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = self->_contacts;
      v15 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v6);
            }

            v19 = *(*(&v23 + 1) + 8 * j);
            v20 = +[CNUIContactsEnvironment currentEnvironment];
            v21 = [v20 contactChangesNotifier];
            [v21 unregisterObserver:self forContact:v19];
          }

          v16 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v16);
      }
    }

    self->_registeredInNotifier = v4;
  }
}

- (id)descriptorForRequiredKeys
{
  v3 = objc_opt_class();
  v4 = [(CNAvatarView *)self isThreeDTouchEnabled];

  return [v3 descriptorForRequiredKeysWithThreeDTouchEnabled:v4];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CNAvatarView;
  [(CNAvatarView *)&v3 didMoveToWindow];
  [(CNAvatarView *)self _updateCardActions];
  [(CNAvatarView *)self _updateRegistration];
  [(CNAvatarView *)self setNeedsLayout];
}

- (void)_updateCardActions
{
  if ([(CNAvatarView *)self isThreeDTouchEnabled])
  {
    v3 = [(CNAvatarView *)self traitCollection];
    if ([CNAvatarCardController avatarCardEnabledForTraitCollection:v3]&& ([(CNAvatarView *)self window], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      v6 = [(CNAvatarView *)self delegate];

      if (v6)
      {
        v8 = [(CNAvatarView *)self forcePressView];
        v7 = [(CNAvatarView *)self cardController];
        [v7 setSourceView:v8];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v8 = [(CNAvatarView *)self cardController];
  [v8 setSourceView:0];
LABEL_8:
}

- (CNAvatarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)avatarViewDidFinishRendering
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = CNUILogAvatarView();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(CNAvatarView *)self delegate];
    *buf = 134218242;
    v30 = self;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "[CNAvatarView %p] avatarViewDidFinishRendering called with delegate %@", buf, 0x16u);
  }

  v5 = [(CNAvatarView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v19 = CNUILogAvatarView();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(CNAvatarView *)self delegate];
      *buf = 134218242;
      v30 = self;
      v31 = 2114;
      v32 = v22;
      _os_log_debug_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEBUG, "[CNAvatarView %p] Delegate %{public}@ does not respond to didUpdateContentForAvatarView: - update will not occur", buf, 0x16u);
    }

    v20 = CNUILogAvatarView();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 134218242;
      v30 = self;
      v31 = 2114;
      v32 = v24;
      _os_log_debug_impl(&dword_199A75000, v20, OS_LOG_TYPE_DEBUG, "[CNAvatarView %p] Call stack:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v7 = CNUIIsMessages();
  v8 = CNUILogAvatarView();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (!v7)
  {
    if (v9)
    {
      *buf = 134217984;
      v30 = self;
      _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_INFO, "[CNAvatarView %p] Using standard path for content image, notifying delegate directly", buf, 0xCu);
    }

    v21 = [(CNAvatarView *)self delegate];
    [v21 didUpdateContentForAvatarView:self];

    v20 = CNUILogAvatarView();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v30 = self;
      _os_log_impl(&dword_199A75000, v20, OS_LOG_TYPE_INFO, "[CNAvatarView %p] Successfully notified delegate", buf, 0xCu);
    }

LABEL_17:

    return;
  }

  if (v9)
  {
    *buf = 134217984;
    v30 = self;
    _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_INFO, "oz: [CNAvatarView %p] Using Messages app path for content image", buf, 0xCu);
  }

  v10 = [(CNAvatarView *)self imageRenderer];
  v11 = [(CNAvatarView *)self contacts];
  v12 = [(CNAvatarView *)self currentLikenessScope];
  v13 = [(CNAvatarView *)self schedulerProvider];
  v14 = [v13 backgroundScheduler];
  v15 = [v10 renderedLikenessesForContacts:v11 scope:v12 workScheduler:v14];

  objc_initWeak(buf, self);
  v16 = MEMORY[0x1E69967A0];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __44__CNAvatarView_avatarViewDidFinishRendering__block_invoke;
  v27[3] = &unk_1E74E4DC0;
  objc_copyWeak(&v28, buf);
  v25[4] = self;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __44__CNAvatarView_avatarViewDidFinishRendering__block_invoke_2;
  v26[3] = &unk_1E74E6A88;
  v26[4] = self;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __44__CNAvatarView_avatarViewDidFinishRendering__block_invoke_3;
  v25[3] = &unk_1E74E5200;
  v17 = [v16 observerWithResultBlock:v27 completionBlock:v26 failureBlock:v25];
  v18 = [v15 subscribe:v17];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

- (CNContact)contact
{
  v2 = [(CNAvatarView *)self contacts];
  v3 = [v2 firstObject];

  return v3;
}

- (void)resetGroupUpdateTokenIfNeeded
{
  if ([(CNAvatarView *)self isUpdatingGroupViewConfiguration])
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNUIAvatarViewErrorDomain" code:0 userInfo:0];
    [(CNAvatarView *)self notifyDelegateOfGroupConfigurationUpdateWithError:v3];

    [(CNAvatarView *)self setGroupViewConfigurationUpdateToken:0];
  }
}

- (UIView)forcePressView
{
  WeakRetained = objc_loadWeakRetained(&self->_forcePressView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_forcePressView);
LABEL_8:
    v7 = v4;
    goto LABEL_9;
  }

  v5 = self;
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    v4 = v6;
    goto LABEL_8;
  }

  v7 = v5;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v8 = [v7 superview];

    v7 = v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

LABEL_9:

  return v7;
}

- (CNAvatarView)init
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = [v3 cachingLikenessRenderer];
  v5 = [objc_opt_class() defaultThreeDTouchSupport];
  v6 = [v3 contactStore];
  v7 = [(CNAvatarView *)self initWithImageRenderer:v4 threeDTouchEnabled:v5 contactStore:v6];

  return v7;
}

- (void)dealloc
{
  v3 = [(CNAvatarView *)self rendererToken];
  [v3 cancel];

  v4 = +[CNUIContactsEnvironment currentEnvironment];
  v5 = [v4 contactChangesNotifier];
  [v5 removeEntriesWithoutObservers];

  if ([(CNAvatarView *)self stateCaptureHandle])
  {
    [(CNAvatarView *)self stateCaptureHandle];
    os_state_remove_handler();
  }

  v6.receiver = self;
  v6.super_class = CNAvatarView;
  [(CNAvatarView *)&v6 dealloc];
}

- (id)currentLikenessScope
{
  v3 = [(CNAvatarView *)self window];

  if (!v3 || ((-[CNAvatarView imageView](self, "imageView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 bounds], v6 = v5, v8 = v7, v9 = *MEMORY[0x1E695F060], v10 = *(MEMORY[0x1E695F060] + 8), v4, v6 == v9) ? (v11 = v8 == v10) : (v11 = 0), v11))
  {
    v24 = 0;
  }

  else
  {
    v12 = [(CNAvatarView *)self imageView];
    [v12 bounds];
    v14 = v13;
    v16 = v15;

    v17 = [(CNAvatarView *)self window];
    v18 = [v17 screen];
    [v18 scale];
    v20 = v19;

    v21 = [(CNAvatarView *)self window];
    v22 = [v21 effectiveUserInterfaceLayoutDirection];

    v23 = [(CNAvatarView *)self backgroundStyle];
    if (!v23)
    {
      if ([(CNAvatarView *)self style])
      {
        v23 = 0;
      }

      else
      {
        v25 = [(CNAvatarView *)self traitCollection];
        v23 = [v25 userInterfaceStyle] == 2;
      }
    }

    v26 = [(CNAvatarView *)self style];
    v27 = [(CNAvatarView *)self maskedAvatarIndices];
    v28 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:v22 == 1 strokeWidth:v26 strokeColor:v23 rightToLeft:0 style:v27 backgroundStyle:v14 color:v16 maskedAvatarIndices:v20, 0.0];

    v24 = [v28 likenessRenderingScope];
  }

  return v24;
}

id __36__CNAvatarView__renderContactsImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setContactType:*(*(a1 + 32) + 456) != 0];

  return v3;
}

void __44__CNAvatarView_avatarViewDidFinishRendering__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[52];
  WeakRetained[52] = v3;
}

void __44__CNAvatarView_avatarViewDidFinishRendering__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didUpdateContentForAvatarView:*(a1 + 32)];
}

void __44__CNAvatarView_avatarViewDidFinishRendering__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didUpdateContentForAvatarView:*(a1 + 32)];
}

- (void)performTransitionAnimationWithStartHandler:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAvatarView *)self sharedProfileStateOracle];

  if (!v8)
  {
    v9 = CNUILogAvatarView();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEBUG, "Skipping transition animation, no state oracle", buf, 2u);
    }

    goto LABEL_7;
  }

  if (![(CNAvatarView *)self isPerformingTransition])
  {
    v10 = objc_alloc_init(CNSharedProfileAnimationGenerator);
    v11 = [(CNAvatarView *)self sharedProfileStateOracle];
    v12 = [v11 avatarViewAnimationTypeForEffectiveState];

    if (v6)
    {
      v6[2](v6, v12);
    }

    if (v12 == 2)
    {
      v24 = CNUILogAvatarView();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v24, OS_LOG_TYPE_DEFAULT, "No transition animation to perform", buf, 2u);
      }

      if (v7)
      {
        v7[2](v7, 2);
      }

      goto LABEL_25;
    }

    if (v12 == 1)
    {
      [(CNAvatarView *)self setIsPerformingTransition:1];
      v19 = CNUILogAvatarView();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEFAULT, "Performing transition animation (peek-a-boo)", buf, 2u);
      }

      v20 = [(CNAvatarView *)self sharedProfileStateOracle];
      v21 = [v20 pendingNickname];
      v22 = [(CNAvatarView *)self sharedProfileStateOracle];
      v23 = [v22 contact];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __70__CNAvatarView_performTransitionAnimationWithStartHandler_completion___block_invoke_103;
      v25[3] = &unk_1E74E6DD0;
      v25[4] = self;
      v26 = v7;
      [(CNSharedProfileAnimationGenerator *)v10 performPeekABooAnimationForAnimatingAvatarView:self pendingNickname:v21 contact:v23 completionHandler:v25];

      v18 = v26;
    }

    else
    {
      if (v12)
      {
LABEL_25:

        goto LABEL_26;
      }

      [(CNAvatarView *)self setIsPerformingTransition:1];
      v13 = CNUILogAvatarView();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v13, OS_LOG_TYPE_DEFAULT, "Performing transition animation (coin flip)", buf, 2u);
      }

      v14 = [(CNAvatarView *)self sharedProfileStateOracle];
      v15 = [v14 pendingNickname];
      v16 = [(CNAvatarView *)self sharedProfileStateOracle];
      v17 = [v16 contact];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__CNAvatarView_performTransitionAnimationWithStartHandler_completion___block_invoke;
      v27[3] = &unk_1E74E6DD0;
      v27[4] = self;
      v28 = v7;
      [(CNSharedProfileAnimationGenerator *)v10 performCoinFlipAnimationForAnimatingAvatarView:self pendingNickname:v15 contact:v17 completionHandler:v27];

      v18 = v28;
    }

    goto LABEL_25;
  }

  v9 = CNUILogAvatarView();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "Skipping transition animation, animation already in progress", buf, 2u);
  }

LABEL_7:

  if (v7)
  {
    v7[2](v7, 2);
  }

LABEL_26:
}

uint64_t __70__CNAvatarView_performTransitionAnimationWithStartHandler_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsPerformingTransition:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __70__CNAvatarView_performTransitionAnimationWithStartHandler_completion___block_invoke_103(uint64_t a1)
{
  [*(a1 + 32) setIsPerformingTransition:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (CALayer)sourceAvatarLayer
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:6];

  if (v5)
  {
    [(CNAvatarView *)self avatarView];
  }

  else
  {
    [(CNAvatarView *)self imageView];
  }
  v6 = ;
  v7 = [v6 layer];

  return v7;
}

- (void)avatarCacheDidUpdateForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:6];

  if ((v7 & 1) == 0)
  {
    v8 = [(CNAvatarView *)self contacts];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__CNAvatarView_avatarCacheDidUpdateForIdentifiers___block_invoke;
    v14[3] = &unk_1E74E7880;
    v15 = v4;
    v9 = [v8 _cn_any:v14];

    if (v9)
    {
      v10 = [MEMORY[0x1E69966E8] currentEnvironment];
      v11 = [v10 schedulerProvider];
      v12 = [v11 mainThreadScheduler];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__CNAvatarView_avatarCacheDidUpdateForIdentifiers___block_invoke_2;
      v13[3] = &unk_1E74E6A88;
      v13[4] = self;
      [v12 performBlock:v13];
    }
  }
}

uint64_t __51__CNAvatarView_avatarCacheDidUpdateForIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 _cn_containsObject:v3];

  return v4;
}

- (CGRect)transitioningImageFrame
{
  v3 = [(CNAvatarView *)self forcePressView];
  [(CNAvatarView *)self contentImageFrame];
  [v3 convertRect:self fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)transitioningFrame
{
  v2 = [(CNAvatarView *)self forcePressView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)contactDidChange:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSArray *)self->_contacts count]== 1)
  {
    v17[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    contacts = self->_contacts;
    self->_contacts = v5;
  }

  else
  {
    v7 = [(NSArray *)self->_contacts mutableCopy];
    v8 = [v4 identifier];
    v9 = self->_contacts;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __33__CNAvatarView_contactDidChange___block_invoke;
    v15[3] = &unk_1E74E38A8;
    v16 = v8;
    contacts = v8;
    v10 = [(NSArray *)v9 indexOfObjectPassingTest:v15];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSArray *)v7 replaceObjectAtIndex:v10 withObject:v4];
    }

    v11 = self->_contacts;
    self->_contacts = v7;
    v12 = v7;
  }

  v13 = [(CNAvatarView *)self cardController];

  if (v13)
  {
    v14 = [(CNAvatarView *)self cardController];
    [v14 prepareWithContacts:0 store:0];
  }

  [(CNAvatarView *)self contactDidChange];
}

uint64_t __33__CNAvatarView_contactDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)setForcePressView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_forcePressView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_forcePressView, obj);
    v6 = [(CNAvatarView *)self window];

    v5 = obj;
    if (v6)
    {
      [(CNAvatarView *)self _updateCardActions];
      v5 = obj;
    }
  }
}

- (void)avatarCardControllerDidDismiss:(id)a3
{
  v9 = a3;
  v4 = [(CNAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNAvatarView *)self delegate];
    [v6 didDismissActionsForAvatarView:self];
  }

  v7 = [(CNAvatarView *)self contacts];
  v8 = [v9 contacts];

  if (v7 != v8)
  {
    [v9 cleanupAfterDisplay];
  }
}

- (void)avatarCardControllerWillDismiss:(id)a3
{
  v4 = [(CNAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNAvatarView *)self delegate];
    [v6 willDismissActionsForAvatarView:self];
  }
}

- (BOOL)avatarCardController:(id)a3 shouldShowContact:(id)a4
{
  v5 = a4;
  v6 = [(CNAvatarView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNAvatarView *)self delegate];
    v9 = [v8 avatarView:self shouldShowContact:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)avatarCardController:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CNAvatarView *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CNAvatarView *)self delegate];
    v12 = [v11 avatarView:self orderedPropertiesForProperties:v7 category:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)avatarCardControllerWillBeginPreviewInteraction:(id)a3
{
  v4 = [(CNAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNAvatarView *)self delegate];
    [v6 willBeginPreviewInteractionForAvatarView:self];
  }
}

- (int64_t)avatarCardController:(id)a3 presentationResultForLocation:(CGPoint)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CNAvatarView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNAvatarView *)self delegate];
    v9 = +[CNAvatarCardController descriptorForRequiredKeys];
    v26[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v11 = [v8 contactsForPreviewInteractionForAvatarView:self suggestedKeysToFetch:v10];
  }

  else
  {
    v11 = [(CNAvatarView *)self contacts];
  }

  if (![v11 count])
  {
    goto LABEL_12;
  }

  v12 = [(CNAvatarView *)self contactStore];
  [v5 prepareWithContacts:v11 store:v12];

  v13 = [v5 hasActions];
  v14 = [(CNAvatarView *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(CNAvatarView *)self delegate];
    v17 = [v16 overrideImageDataForPreviewInteractionForAvatarView:self];

    [v5 prepareWithOverrideImageData:v17];
    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v13)
  {
LABEL_12:
    v24 = 2;
    goto LABEL_13;
  }

  v18 = [(CNAvatarView *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(CNAvatarView *)self delegate];
    v21 = [v20 shouldShowActionsForAvatarView:self];

    if (!v21)
    {
      goto LABEL_12;
    }
  }

  [v5 prepareForDisplay];
  v22 = [(CNAvatarView *)self name];
  [v5 setName:v22];

  v23 = [(CNAvatarView *)self message];
  [v5 setMessage:v23];

  v24 = 0;
LABEL_13:

  return v24;
}

- (id)presentingViewControllerForAvatarCardController:(id)a3
{
  v4 = [(CNAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNAvatarView *)self delegate];
    v7 = [v6 presentingViewControllerForAvatarView:self];

    [v7 set_cardViewControllerTransitioning:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)bypassActionValidation
{
  v2 = [(CNAvatarView *)self cardController];
  v3 = [v2 bypassActionValidation];

  return v3;
}

- (void)setBypassActionValidation:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNAvatarView *)self cardController];
  [v4 setBypassActionValidation:v3];
}

- (NSArray)actionCategories
{
  v2 = [(CNAvatarView *)self cardController];
  v3 = [v2 actionCategories];

  return v3;
}

- (void)setActionCategories:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarView *)self cardController];
  [v5 setActionCategories:v4];
}

- (void)setShowsContactOnTap:(BOOL)a3
{
  if (self->_showsContactOnTap != a3)
  {
    self->_showsContactOnTap = a3;
  }
}

- (void)setAutoUpdateContact:(BOOL)a3
{
  if (self->_autoUpdateContact != a3)
  {
    self->_autoUpdateContact = a3;
    [(CNAvatarView *)self _updateRegistration];
  }
}

- (void)contactDidChange
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:6];

  if ((v5 & 1) == 0)
  {
    [(CNAvatarView *)self clearImage];

    [(CNAvatarView *)self _renderContactsImage];
  }
}

- (void)dismissContactViewController:(id)a3
{
  v4 = [(CNAvatarView *)self contactViewNavigationController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__CNAvatarView_dismissContactViewController___block_invoke;
  v5[3] = &unk_1E74E6A88;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (void)showContact:(id)a3
{
  v9 = [(CNAvatarView *)self contact];
  v3 = [v9 identifier];
  if ([v9 hasBeenPersisted])
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contact://show?id=%@", v3];
    v6 = [v4 URLWithString:v5];

    v7 = +[CNUIContactsEnvironment currentEnvironment];
    v8 = [v7 applicationWorkspace];
    [v8 openSensitiveURLInBackground:v6 withOptions:0];
  }
}

- (double)_diameter
{
  [(CNAvatarView *)self bounds];
  Width = CGRectGetWidth(v5);
  [(CNAvatarView *)self bounds];
  result = CGRectGetHeight(v6);
  if (Width < result)
  {
    return Width;
  }

  return result;
}

- (UIImage)contentImage
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:6];

  if (v5)
  {
    v6 = self->_contentImage;
  }

  else
  {
    v7 = [(CNAvatarView *)self imageView];
    v6 = [v7 image];
  }

  return v6;
}

- (void)setDisableCornerRadiusForAvatar:(BOOL)a3
{
  if (self->_disableCornerRadiusForAvatar != a3)
  {
    self->_disableCornerRadiusForAvatar = a3;
    [(CNAvatarView *)self setNeedsLayout];
  }
}

- (void)setThreeDTouchEnabled:(BOOL)a3
{
  if (self->_threeDTouchEnabled != a3)
  {
    self->_threeDTouchEnabled = a3;
    if (a3)
    {
      [(CNAvatarView *)self setupAvatarCardControllerIfNeeded];
    }

    [(CNAvatarView *)self _updateCardActions];
  }
}

- (void)setImage:(id)a3 state:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CNAvatarView *)self imageView];
  v8 = [v7 image];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    [(CNAvatarView *)self setDisplayedImageState:a4];
    if (a4 != 2)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if ([(CNAvatarView *)self allowStaleRendering])
  {
    v10 = [(CNAvatarView *)self allowStaleRenderingWithMatchingContextToken];
    if (a4 == 1)
    {
      [(CNAvatarView *)self setAllowStaleRenderingWithMatchingContextToken:1];
    }

    v11 = !v10;
    if (a4 == 2)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      v12 = CNUILogAvatarView();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        [(CNAvatarView *)self setDisplayedImageState:a4];
        goto LABEL_19;
      }

      v13 = [objc_opt_class() descriptionForDisplayedImageState:a4];
      v18 = 134218242;
      v19 = self;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_INFO, "[CNAvatarView] %p ignoring setting image for state (%{public}@), showing stale image instead", &v18, 0x16u);
LABEL_12:

      goto LABEL_15;
    }
  }

  v14 = [(CNAvatarView *)self imageView];
  [v14 setImage:v6];

  if (a4 != 2)
  {
    v12 = CNUILogAvatarView();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    v13 = [(CNAvatarView *)self contacts];
    v18 = 138412290;
    v19 = v13;
    _os_log_debug_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEBUG, "[CNAvatarView] Setting placeholder image for %@", &v18, 0xCu);
    goto LABEL_12;
  }

  [(CNAvatarView *)self setDisplayedImageState:2];
LABEL_17:
  v15 = [(CNAvatarView *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(CNAvatarView *)self delegate];
    [v17 didUpdateContentForAvatarView:self];
  }

LABEL_19:
}

void __36__CNAvatarView__renderContactsImage__block_invoke_71(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (*(a1 + 64) == 1)
  {
    v6 = CNUILogAvatarView();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      *buf = 134218242;
      v17 = v5;
      v18 = 2114;
      v19 = v7;
      _os_log_debug_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEBUG, "[CNAvatarView][LikenessRenderer] (%p) received image for group %{public}@, replacing placeholder", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v6 = [WeakRetained contacts];
  if ([v6 count]!= 1)
  {
LABEL_8:

    goto LABEL_9;
  }

  v8 = *(a1 + 32);

  if (v8)
  {
    v6 = CNUILogAvatarView();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 134218498;
      v17 = v5;
      v18 = 2112;
      v19 = v3;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "[CNAvatarView][LikenessRenderer] (%p) received image (%@) for contact %{public}@, replacing placeholder", buf, 0x20u);
    }

    goto LABEL_8;
  }

LABEL_9:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__CNAvatarView__renderContactsImage__block_invoke_72;
  v13[3] = &unk_1E74E1D30;
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v3;
  v15 = v10;
  v13[4] = v5;
  v12 = v3;
  [v11 performBlock:v13];
}

void __36__CNAvatarView__renderContactsImage__block_invoke_72(uint64_t a1)
{
  v2 = [*(a1 + 32) rendererToken];

  v3 = [*(a1 + 32) rendererToken];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));

  if (v2)
  {
    v5 = v3 == WeakRetained;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) setImage:*(a1 + 40) state:2];
  }

  kdebug_trace();
  if ([*(a1 + 32) isUpdatingGroupViewConfiguration])
  {
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNUIAvatarViewErrorDomain" code:1 userInfo:0];
    }

    v8 = v7;
    [*(a1 + 32) notifyDelegateOfGroupConfigurationUpdateWithError:v7];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNAvatarView;
  v4 = a3;
  [(CNAvatarView *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(CNAvatarView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = [(CNAvatarView *)self style];
  if (v5 != v7 && !v8)
  {
    [(CNAvatarView *)self _renderContactsImage];
  }
}

- (CGRect)frameForAvatarAtIndex:(unint64_t)a3 inView:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E6996AB0];
  v8 = [(CNAvatarView *)self contacts];
  v9 = [v7 layoutConfigurationsForType:2 withItemCount:{objc_msgSend(v8, "count")}];

  if ([v9 count] <= a3)
  {
    v22 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v26 = *(MEMORY[0x1E695F058] + 16);
    v28 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v10 = [v9 objectAtIndex:a3];
    v11 = [(CNAvatarView *)self effectiveUserInterfaceLayoutDirection]== 1;
    v12 = [(CNAvatarView *)self imageView];
    [v12 bounds];
    [v10 itemFrameInContainingBounds:v11 isRTL:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [(CNAvatarView *)self convertRect:v6 toView:v14, v16, v18, v20];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
  }

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)setBackgroundStyle:(unint64_t)a3
{
  self->_backgroundStyle = a3;
  v4 = [(CNAvatarView *)self avatarView];
  [v4 setBackgroundStyle:a3];
}

- (void)notifyDelegateOfGroupConfigurationUpdateWithError:(id)a3
{
  v9 = a3;
  v4 = [(CNAvatarView *)self delegate];
  if (v9)
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [(CNAvatarView *)self delegate];
    v7 = [(CNAvatarView *)self groupViewConfigurationUpdateToken];
    [v6 avatarView:self didFailToUpdateViewForGroupConfiguration:v7 withError:v9];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [(CNAvatarView *)self delegate];
    v7 = [(CNAvatarView *)self groupViewConfigurationUpdateToken];
    [v6 avatarView:self didUpdateViewForGroupConfiguration:v7];
  }

LABEL_7:
}

- (id)updateViewWithGroupIdentity:(id)a3 maskingContacts:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 groupPhoto];

  if (v8)
  {
    [(CNAvatarView *)self setShouldUpdateMaskedAvatars:0];
    v9 = [MEMORY[0x1E696AC90] indexSet];
    [(CNAvatarView *)self setMaskedAvatarIndices:v9];
  }

  else
  {
    v10 = [v7 contacts];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__CNAvatarView_updateViewWithGroupIdentity_maskingContacts___block_invoke;
    v15[3] = &unk_1E74E38A8;
    v16 = v6;
    v11 = [v10 indexesOfObjectsPassingTest:v15];

    v12 = [(CNAvatarView *)self maskedAvatarIndices];
    -[CNAvatarView setShouldUpdateMaskedAvatars:](self, "setShouldUpdateMaskedAvatars:", [v12 isEqualToIndexSet:v11] ^ 1);

    [(CNAvatarView *)self setMaskedAvatarIndices:v11];
  }

  v13 = [(CNAvatarView *)self updateViewWithGroupIdentity:v7];

  return v13;
}

- (id)updateViewWithGroupIdentity:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v4 groupPhoto];
  if (v6)
  {
    v7 = [(CNAvatarView *)self contact];
    v8 = [v7 isKeyAvailable:*MEMORY[0x1E695C400]];

    if (v8)
    {
      v9 = [(CNAvatarView *)self contact];
      v10 = [v9 thumbnailImageData];
      v11 = [v6 isEqualToData:v10];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    v12 = [MEMORY[0x1E695CF18] contactWithDisplayName:0 emailOrPhoneNumber:0];
    [v12 setImageData:v6];
    [v12 setThumbnailImageData:v6];
    v18[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(CNAvatarView *)self setContacts:v13 forToken:v5];

LABEL_7:
LABEL_8:
    v16 = v5;
    goto LABEL_9;
  }

  v14 = [v4 contacts];
  v15 = [(CNAvatarView *)self shouldUpdateWithContacts:v14];

  if (v15)
  {
    v12 = [v4 contacts];
    [(CNAvatarView *)self setContacts:v12 forToken:v5];
    goto LABEL_7;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (BOOL)shouldUpdateWithContacts:(id)a3
{
  v4 = a3;
  if (-[CNAvatarView shouldUpdateMaskedAvatars](self, "shouldUpdateMaskedAvatars") || ([MEMORY[0x1E69966E8] currentEnvironment], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "featureFlags"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isFeatureEnabled:", 6), v6, v5, (v7 & 1) != 0))
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    contacts = self->_contacts;
    if (v4 | contacts)
    {
      v8 = [(NSArray *)contacts _cn_isIdenticalToArray:v4]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (void)_setContacts:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v5 _cn_map:&__block_literal_global_2857];
    v10 = v9;
    v11 = @"nil";
    if (v9)
    {
      v11 = v9;
    }

    v12 = [v8 stringWithFormat:@"CNAvatarView (%p) - %@", self, v11];
    v13 = [(CNAvatarView *)self layer];
    [v13 setName:v12];
  }

  v14 = CNUILogAvatarView();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v29 = self;
    v30 = 2114;
    v31 = v5;
    _os_log_debug_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEBUG, "[CNAvatarView] (%p) setContacts: %{public}@", buf, 0x16u);
  }

  if ([(CNAvatarView *)self shouldUpdateWithContacts:v5])
  {
    self->_registeredInNotifier = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->_contacts;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          v21 = +[CNUIContactsEnvironment currentEnvironment];
          v22 = [v21 contactChangesNotifier];
          [v22 unregisterObserver:self forContact:v20];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    objc_storeStrong(&self->_contacts, a3);
    [(CNAvatarView *)self setShouldUpdateMaskedAvatars:0];
    [(CNAvatarView *)self clearImage];
    [(CNAvatarView *)self _renderContactsImage];
  }
}

- (void)setContacts:(id)a3 forToken:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CNAvatarView *)self resetGroupUpdateTokenIfNeeded];
  [(CNAvatarView *)self setGroupViewConfigurationUpdateToken:v6];

  [(CNAvatarView *)self _setContacts:v7];
}

- (void)setContacts:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:6];

  contacts = self->_contacts;
  if (v6)
  {
    if ((v8 || !contacts) && [(NSArray *)contacts isEqualToArray:?])
    {
      goto LABEL_12;
    }
  }

  else if ((v8 || !contacts) && [(NSArray *)contacts isEqualToArray:?])
  {
    goto LABEL_13;
  }

  [(CNAvatarView *)self resetGroupUpdateTokenIfNeeded];
LABEL_12:
  [(CNAvatarView *)self _setContacts:v8];
LABEL_13:
}

- (void)setBorderWidth:(double)a3
{
  if (self->_borderWidth != a3)
  {
    self->_borderWidth = a3;
    v4 = [(CNAvatarView *)self avatarView];
    [v4 setBorderWidth:a3];
  }
}

- (void)setBorderColor:(id)a3
{
  v5 = a3;
  if (self->_borderColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_borderColor, a3);
    v6 = [(CNAvatarView *)self avatarView];
    [v6 setBorderColor:v7];

    v5 = v7;
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    v4 = [(CNAvatarView *)self contacts];

    if (v4)
    {

      [(CNAvatarView *)self _renderContactsImage];
    }
  }
}

- (void)setContextToken:(id)a3
{
  if (self->_contextToken != a3)
  {
    objc_storeStrong(&self->_contextToken, a3);
    if ([(CNAvatarView *)self allowStaleRendering])
    {
      [(CNAvatarView *)self setAllowStaleRenderingWithMatchingContextToken:0];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setShouldFetchSharedMeContactPhoto:(BOOL)a3
{
  if (self->_shouldFetchSharedMeContactPhoto != a3)
  {
    v4 = a3;
    self->_shouldFetchSharedMeContactPhoto = a3;
    v5 = [(CNAvatarView *)self imageRenderer];
    v7 = v5;
    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [v5 setLookupOptions:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)result
{
  if (result.width >= result.height)
  {
    result.width = result.height;
  }

  width = result.width;
  result.height = width;
  return result;
}

- (CNAvatarView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CNAvatarView *)self init];
  v8 = v7;
  if (v7)
  {
    [(CNAvatarView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (CNAvatarView)initWithImageRenderer:(id)a3 threeDTouchEnabled:(BOOL)a4 contactStore:(id)a5 style:(unint64_t)a6 schedulerProvider:(id)a7 backgroundStyle:(unint64_t)a8 personaId:(id)a9
{
  v31 = a3;
  v30 = a5;
  v16 = a7;
  v17 = a9;
  v18 = *MEMORY[0x1E695F058];
  v19 = *(MEMORY[0x1E695F058] + 8);
  v34.receiver = self;
  v34.super_class = CNAvatarView;
  v20 = [(CNAvatarView *)&v34 initWithFrame:v18, v19, *&CNAvatarViewDefaultSize, unk_1EAF768C8];
  v21 = v20;
  if (v20)
  {
    v20->_threeDTouchEnabled = a4;
    objc_storeStrong(&v20->_contactStore, a5);
    objc_storeStrong(&v21->_imageRenderer, a3);
    v21->_style = a6;
    v22 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v21->_imageView;
    v21->_imageView = v22;

    v24 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    alternativeImageView = v21->_alternativeImageView;
    v21->_alternativeImageView = v24;

    [(UIImageView *)v21->_alternativeImageView setContentMode:2, v30, v31];
    [(UIImageView *)v21->_alternativeImageView setClipsToBounds:1];
    objc_storeStrong(&v21->_schedulerProvider, a7);
    v21->_backgroundStyle = a8;
    objc_storeStrong(&v21->_personaId, a9);
    v26 = [MEMORY[0x1E69966E8] currentEnvironment];
    v27 = [v26 isInternalBuild];

    if (v27)
    {
      objc_initWeak(&location, v21);
      v28 = MEMORY[0x1E69E96A0];
      objc_copyWeak(&v32, &location);
      [(CNAvatarView *)v21 setStateCaptureHandle:os_state_add_handler()];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }

    [(CNAvatarView *)v21 addSubview:v21->_imageView];
    [(CNAvatarView *)v21 addSubview:v21->_alternativeImageView];
    [(CNAvatarView *)v21 setupAvatarCardControllerIfNeeded];
    [(CNAvatarView *)v21 setShowsContactOnTap:0];
    [(CNAvatarView *)v21 setAutoUpdateContact:1];
  }

  return v21;
}

_DWORD *__120__CNAvatarView_initWithImageRenderer_threeDTouchEnabled_contactStore_style_schedulerProvider_backgroundStyle_personaId___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (*(a2 + 16) == 3)
  {
    v5 = WeakRetained;
    v6 = v5;
    if (v5 && ([v5 window], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [v6 contacts];
      v9 = [v8 description];

      v10 = [v6 window];
      [v6 center];
      v12 = v11;
      v14 = v13;
      v15 = [v6 superview];
      [v10 convertPoint:v15 fromView:{v12, v14}];
      v17 = v16;
      v19 = v18;

      v20 = MEMORY[0x1E696AEC0];
      v27.x = v17;
      v27.y = v19;
      v21 = NSStringFromCGPoint(v27);
      v22 = [v20 stringWithFormat:@"CNAvatarViewDebug, view at %@ shows %@", v21, v9];

      v23 = [MEMORY[0x1E696AE40] dataWithPropertyList:v22 format:200 options:0 error:0];
      v24 = [v23 length];
      v25 = malloc_type_calloc(1uLL, v24 + 200, 0x1000040BEF03554uLL);
      *v25 = 1;
      v25[1] = v24;
      memcpy(v25 + 50, [v23 bytes], v24);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (CNAvatarView)initWithImageRenderer:(id)a3 threeDTouchEnabled:(BOOL)a4 contactStore:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[CNUIContactsEnvironment currentEnvironment];
  v11 = [v10 defaultSchedulerProvider];

  v12 = [(CNAvatarView *)self initWithImageRenderer:v9 threeDTouchEnabled:v5 contactStore:v8 style:0 schedulerProvider:v11 backgroundStyle:0 personaId:0];
  return v12;
}

- (CNAvatarView)initWithSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 likenessRenderer];
  if ([v5 conformsToProtocol:&unk_1F0E28E18])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    [v7 addDelegate:self];
  }

  v9 = [v4 threeDTouchEnabled];
  v10 = [v4 contactStore];
  v11 = [v4 style];
  v12 = [v4 schedulerProvider];
  v13 = [v4 backgroundStyle];
  v14 = [v4 personaId];

  v15 = [(CNAvatarView *)self initWithImageRenderer:v5 threeDTouchEnabled:v9 contactStore:v10 style:v11 schedulerProvider:v12 backgroundStyle:v13 personaId:v14];
  return v15;
}

+ (id)makeDescriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)a3 shouldUseCachingRenderer:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
  v7 = *MEMORY[0x1E695C1C8];
  v14[0] = v6;
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  if (v4)
  {
    [MEMORY[0x1E6996B90] descriptorForRequiredKeysForCaching];
  }

  else
  {
    [MEMORY[0x1E6996B90] descriptorForRequiredKeys];
  }
  v9 = ;
  v10 = [v8 arrayByAddingObject:v9];

  if (v5)
  {
    v11 = [CNAvatarCardController descriptorForRequiredKeysIncludingAvatarViewDescriptors:0];
    v12 = [v10 arrayByAddingObject:v11];

    v10 = v11;
  }

  else
  {
    v12 = [v10 arrayByAddingObject:*MEMORY[0x1E695C278]];
  }

  return v12;
}

+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)a3 shouldUseCachingRenderer:(BOOL)a4 description:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
    v10 = [CNAvatarCardController avatarCardEnabledForTraitCollection:v9];

    v11 = !v10;
    v12 = !v5;
    if (v5 && (v11 & 1) == 0)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __101__CNAvatarView_descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description___block_invoke;
      v31[3] = &unk_1E74E1CB8;
      v32[1] = a1;
      v33 = v10;
      v34 = v5;
      v13 = v32;
      v32[0] = v8;
      if (descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_token_1 != -1)
      {
        dispatch_once(&descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_token_1, v31);
      }

      v14 = &descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_1;
      goto LABEL_21;
    }
  }

  else
  {
    v10 = 0;
    v12 = !v5;
    v11 = 1;
  }

  if (v12 || v10)
  {
    if ((v11 | v5))
    {
      if (v10 || v5)
      {
        v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't be reached" userInfo:0];
        objc_exception_throw(v18);
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __101__CNAvatarView_descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description___block_invoke_4;
      v19[3] = &unk_1E74E1CB8;
      v20[1] = a1;
      v21 = v10;
      v22 = v5;
      v13 = v20;
      v20[0] = v8;
      if (descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_token_4 != -1)
      {
        dispatch_once(&descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_token_4, v19);
      }

      v14 = &descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_4;
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __101__CNAvatarView_descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description___block_invoke_3;
      v23[3] = &unk_1E74E1CB8;
      v24[1] = a1;
      v25 = v10;
      v26 = v5;
      v13 = v24;
      v24[0] = v8;
      if (descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_token_3 != -1)
      {
        dispatch_once(&descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_token_3, v23);
      }

      v14 = &descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_3;
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__CNAvatarView_descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description___block_invoke_2;
    block[3] = &unk_1E74E1CB8;
    v28[1] = a1;
    v29 = v10;
    v30 = v5;
    v13 = v28;
    v28[0] = v8;
    if (descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_token_2 != -1)
    {
      dispatch_once(&descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_token_2, block);
    }

    v14 = &descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_2;
  }

LABEL_21:
  v15 = *v14;
  v16 = *v14;

  return v15;
}

void __101__CNAvatarView_descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695CD58];
  v5 = [*(a1 + 40) makeDescriptorForRequiredKeysWithThreeDTouchEnabled:*(a1 + 48) shouldUseCachingRenderer:*(a1 + 49)];
  v3 = [v2 descriptorWithKeyDescriptors:v5 description:*(a1 + 32)];
  v4 = descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_1;
  descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_1 = v3;
}

void __101__CNAvatarView_descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695CD58];
  v5 = [*(a1 + 40) makeDescriptorForRequiredKeysWithThreeDTouchEnabled:*(a1 + 48) shouldUseCachingRenderer:*(a1 + 49)];
  v3 = [v2 descriptorWithKeyDescriptors:v5 description:*(a1 + 32)];
  v4 = descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_2;
  descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_2 = v3;
}

void __101__CNAvatarView_descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E695CD58];
  v5 = [*(a1 + 40) makeDescriptorForRequiredKeysWithThreeDTouchEnabled:*(a1 + 48) shouldUseCachingRenderer:*(a1 + 49)];
  v3 = [v2 descriptorWithKeyDescriptors:v5 description:*(a1 + 32)];
  v4 = descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_3;
  descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_3 = v3;
}

void __101__CNAvatarView_descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E695CD58];
  v5 = [*(a1 + 40) makeDescriptorForRequiredKeysWithThreeDTouchEnabled:*(a1 + 48) shouldUseCachingRenderer:*(a1 + 49)];
  v3 = [v2 descriptorWithKeyDescriptors:v5 description:*(a1 + 32)];
  v4 = descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_4;
  descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description__cn_once_object_4 = v3;
}

+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:]"];
  v6 = [a1 descriptorForRequiredKeysWithThreeDTouchEnabled:v3 shouldUseCachingRenderer:1 description:v5];

  return v6;
}

+ (id)descriptionForDisplayedImageState:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unexpected Image State";
  }

  else
  {
    return off_1E74E1D78[a3];
  }
}

- (void)setShowsActionsOnForcePress:(BOOL)a3
{
  if (self->_showsActionsOnForcePress != a3)
  {
    self->_showsActionsOnForcePress = a3;
    [(CNAvatarView *)self _updateCardActions];
  }
}

- (void)setShowsActionsOnTap:(BOOL)a3
{
  if (self->_showsActionsOnTap != a3)
  {
    self->_showsActionsOnTap = a3;
    [(CNAvatarView *)self _updateCardActions];
  }
}

- (void)setContact:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(CNAvatarView *)self setContacts:v6];
  }

  else
  {
    [(CNAvatarView *)self setContacts:MEMORY[0x1E695E0F0]];
  }
}

- (CNAvatarView)initWithContact:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNAvatarView *)self init];
  if (v5)
  {
    if (v4)
    {
      v8[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    [(CNAvatarView *)v5 setContacts:v6];
  }

  return v5;
}

void __30___CNAvatarView_setupSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) bounds];
    v8 = v7;
    v10 = v9;
    v11 = [*(a1 + 32) window];
    v12 = [v11 screen];
    [v12 scale];
    v14 = [v16 _cnui_likenessForSize:v8 scale:{v10, v13}];
  }

  else
  {
    v14 = [v16 _cnui_likeness];
  }

  v15 = [objc_alloc(MEMORY[0x1E69BDC40]) initWithLikeness:v14];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 40) addObject:v15];
  [*(a1 + 32) addSubview:v15];
  if (a3 == 1)
  {
    *a4 = 1;
  }
}

@end