@interface CNAvatarView
+ (id)descriptionForDisplayedImageState:(int64_t)state;
+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)enabled;
+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)enabled shouldUseCachingRenderer:(BOOL)renderer description:(id)description;
+ (id)makeDescriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)enabled shouldUseCachingRenderer:(BOOL)renderer;
- (BOOL)avatarCardController:(id)controller shouldShowContact:(id)contact;
- (BOOL)bypassActionValidation;
- (BOOL)isUpdatingGroupViewConfiguration;
- (BOOL)shouldUpdateWithContacts:(id)contacts;
- (CALayer)sourceAvatarLayer;
- (CGRect)frameForAvatarAtIndex:(unint64_t)index inView:(id)view;
- (CGRect)transitioningFrame;
- (CGRect)transitioningImageFrame;
- (CGSize)sizeThatFits:(CGSize)result;
- (CNAvatarView)init;
- (CNAvatarView)initWithContact:(id)contact;
- (CNAvatarView)initWithFrame:(CGRect)frame;
- (CNAvatarView)initWithImageRenderer:(id)renderer threeDTouchEnabled:(BOOL)enabled contactStore:(id)store;
- (CNAvatarView)initWithImageRenderer:(id)renderer threeDTouchEnabled:(BOOL)enabled contactStore:(id)store style:(unint64_t)style schedulerProvider:(id)provider backgroundStyle:(unint64_t)backgroundStyle personaId:(id)id;
- (CNAvatarView)initWithSettings:(id)settings;
- (CNAvatarViewDelegate)delegate;
- (CNContact)contact;
- (NSArray)actionCategories;
- (UIImage)contentImage;
- (UIView)forcePressView;
- (double)_diameter;
- (id)avatarCardController:(id)controller orderedPropertiesForProperties:(id)properties category:(id)category;
- (id)currentLikenessScope;
- (id)descriptorForRequiredKeys;
- (id)presentingViewControllerForAvatarCardController:(id)controller;
- (id)updateViewWithGroupIdentity:(id)identity;
- (id)updateViewWithGroupIdentity:(id)identity maskingContacts:(id)contacts;
- (int64_t)avatarCardController:(id)controller presentationResultForLocation:(CGPoint)location;
- (void)_renderContactsImage;
- (void)_setContacts:(id)contacts;
- (void)_updateCardActions;
- (void)_updateRegistration;
- (void)avatarCacheDidUpdateForIdentifiers:(id)identifiers;
- (void)avatarCardControllerDidDismiss:(id)dismiss;
- (void)avatarCardControllerWillBeginPreviewInteraction:(id)interaction;
- (void)avatarCardControllerWillDismiss:(id)dismiss;
- (void)avatarViewDidFinishRendering;
- (void)contactDidChange;
- (void)contactDidChange:(id)change;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)dismissContactViewController:(id)controller;
- (void)layoutSubviews;
- (void)notifyDelegateOfGroupConfigurationUpdateWithError:(id)error;
- (void)performTransitionAnimationWithStartHandler:(id)handler completion:(id)completion;
- (void)resetGroupUpdateTokenIfNeeded;
- (void)setActionCategories:(id)categories;
- (void)setAutoUpdateContact:(BOOL)contact;
- (void)setBackgroundStyle:(unint64_t)style;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
- (void)setBypassActionValidation:(BOOL)validation;
- (void)setContact:(id)contact;
- (void)setContacts:(id)contacts;
- (void)setContacts:(id)contacts forToken:(id)token;
- (void)setContextToken:(id)token;
- (void)setDisableCornerRadiusForAvatar:(BOOL)avatar;
- (void)setForcePressView:(id)view;
- (void)setImage:(id)image state:(int64_t)state;
- (void)setShouldFetchSharedMeContactPhoto:(BOOL)photo;
- (void)setShowsActionsOnForcePress:(BOOL)press;
- (void)setShowsActionsOnTap:(BOOL)tap;
- (void)setShowsContactOnTap:(BOOL)tap;
- (void)setStyle:(unint64_t)style;
- (void)setThreeDTouchEnabled:(BOOL)enabled;
- (void)setupAvatarCardControllerIfNeeded;
- (void)showContact:(id)contact;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CNAvatarView

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = CNAvatarView;
  [(CNAvatarView *)&v28 layoutSubviews];
  window = [(CNAvatarView *)self window];

  if (window)
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    [(CNAvatarView *)self bounds];
    [(CNAvatarView *)self sizeThatFits:v6, v7];
    v9 = v8;
    v11 = v10;
    imageView = [(CNAvatarView *)self imageView];
    [imageView frame];
    v15 = v11 == v14 && v9 == v13;

    if (!v15)
    {
      imageView2 = [(CNAvatarView *)self imageView];
      [imageView2 setFrame:{v4, v5, v9, v11}];

      alternativeImageView = [(CNAvatarView *)self alternativeImageView];
      [alternativeImageView setFrame:{v4, v5, v9, v11}];

      alternativeImageView2 = [(CNAvatarView *)self alternativeImageView];
      layer = [alternativeImageView2 layer];
      [layer frame];
      v21 = v20 * 0.5;
      alternativeImageView3 = [(CNAvatarView *)self alternativeImageView];
      layer2 = [alternativeImageView3 layer];
      [layer2 setCornerRadius:v21];

      if ([(CNAvatarView *)self displayedImageState]== 1)
      {
        [(CNAvatarView *)self setImage:0 state:0];
      }
    }

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v26 = [featureFlags isFeatureEnabled:6];

    if ((v26 & 1) == 0 && (!v15 || ![(CNAvatarView *)self displayedImageState]))
    {
      [(CNAvatarView *)self _renderContactsImage];
    }

    avatarView = [(CNAvatarView *)self avatarView];
    [avatarView setFrame:{v4, v5, v9, v11}];
  }
}

- (void)_renderContactsImage
{
  v59[2] = *MEMORY[0x1E69E9840];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:6])
  {
    contacts = [(CNAvatarView *)self contacts];

    if (contacts)
    {
      contacts2 = [(CNAvatarView *)self contacts];
      if (self->_style)
      {
        contacts3 = [(CNAvatarView *)self contacts];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __36__CNAvatarView__renderContactsImage__block_invoke;
        v55[3] = &unk_1E74E1D08;
        v55[4] = self;
        v8 = [contacts3 _cn_map:v55];

        contacts2 = v8;
      }

      avatarView = [(CNAvatarView *)self avatarView];
      v10 = avatarView == 0;

      if (v10)
      {
        avatarView2 = [[_TtC10ContactsUI25CNAvatarView_SwiftWrapper alloc] initWithContacts:contacts2 listener:self];
        [(CNAvatarView_SwiftWrapper *)avatarView2 setBackgroundStyle:[(CNAvatarView *)self backgroundStyle]];
        borderColor = [(CNAvatarView *)self borderColor];
        [(CNAvatarView_SwiftWrapper *)avatarView2 setBorderColor:borderColor];

        [(CNAvatarView *)self borderWidth];
        [(CNAvatarView_SwiftWrapper *)avatarView2 setBorderWidth:?];
        [(CNAvatarView *)self addSubview:avatarView2];
        [(CNAvatarView *)self setAvatarView:avatarView2];
      }

      else
      {
        avatarView2 = [(CNAvatarView *)self avatarView];
        [(CNAvatarView_SwiftWrapper *)avatarView2 setContacts:contacts2];
      }

      [(CNAvatarView *)self bounds];
      [(CNAvatarView *)self sizeThatFits:v28, v29];
      v31 = v30;
      v33 = v32;
      avatarView3 = [(CNAvatarView *)self avatarView];
      [avatarView3 setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), v31, v33}];
LABEL_24:

      goto LABEL_25;
    }
  }

  else
  {
  }

  kdebug_trace();
  [(CNAvatarView *)self _updateRegistration];
  rendererToken = [(CNAvatarView *)self rendererToken];
  [rendererToken cancel];

  [(CNAvatarView *)self setRendererToken:0];
  contacts2 = [(CNAvatarView *)self currentLikenessScope];
  if (contacts2)
  {
    if ([(CNAvatarView *)self displayedImageState])
    {
      v13 = 0;
      avatarView3 = 0;
    }

    else
    {
      imageRenderer = [(CNAvatarView *)self imageRenderer];
      contacts4 = [(CNAvatarView *)self contacts];
      v17 = [imageRenderer loadingPlaceholderForContactCount:objc_msgSend(contacts4 scope:{"count"), contacts2}];

      [(CNAvatarView *)self setImage:v17 state:1];
      imageView = [(CNAvatarView *)self imageView];
      image = [imageView image];
      v20 = [v17 isEqual:image];

      if (v20)
      {
        v21 = MEMORY[0x1E6996B80];
        contacts5 = [(CNAvatarView *)self contacts];
        avatarView3 = [v21 publicFingerprintForContacts:contacts5 scope:contacts2];

        contacts6 = [(CNAvatarView *)self contacts];
        v24 = [contacts6 count];
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
            *&buf[14] = avatarView3;
            _os_log_impl(&dword_199A75000, v26, OS_LOG_TYPE_INFO, "[CNAvatarView][LikenessRenderer] (%p) showing placeholder, requesting image for contact %{public}@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = avatarView3;
          _os_log_debug_impl(&dword_199A75000, v26, OS_LOG_TYPE_DEBUG, "[CNAvatarView][LikenessRenderer] (%p) showing placeholder, requesting image for group %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v13 = 0;
        avatarView3 = 0;
      }
    }

    contacts7 = [(CNAvatarView *)self contacts];
    v35 = [contacts7 count] == 0;

    if (!v35)
    {
      imageRenderer2 = [(CNAvatarView *)self imageRenderer];
      contacts8 = [(CNAvatarView *)self contacts];
      schedulerProvider = [(CNAvatarView *)self schedulerProvider];
      backgroundScheduler = [schedulerProvider backgroundScheduler];
      v40 = [imageRenderer2 renderedLikenessesForContacts:contacts8 scope:contacts2 workScheduler:backgroundScheduler];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3042000000;
      v57 = __Block_byref_object_copy__2846;
      v58 = __Block_byref_object_dispose__2847;
      v59[0] = 0;
      objc_initWeak(&location, self);
      schedulerProvider2 = [(CNAvatarView *)self schedulerProvider];
      mainThreadScheduler = [schedulerProvider2 mainThreadScheduler];

      v43 = MEMORY[0x1E69967A0];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __36__CNAvatarView__renderContactsImage__block_invoke_71;
      v48[3] = &unk_1E74E1D58;
      objc_copyWeak(&v52, &location);
      v53 = v13;
      avatarView3 = avatarView3;
      v49 = avatarView3;
      v44 = mainThreadScheduler;
      v50 = v44;
      v51 = buf;
      v45 = [v43 observerWithResultBlock:v48];
      v46 = [v40 subscribe:v45];
      [(CNAvatarView *)self setRendererToken:v46];

      rendererToken2 = [(CNAvatarView *)self rendererToken];
      objc_storeWeak((*&buf[8] + 40), rendererToken2);

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
  groupViewConfigurationUpdateToken = [(CNAvatarView *)self groupViewConfigurationUpdateToken];
  v3 = groupViewConfigurationUpdateToken != 0;

  return v3;
}

- (void)setupAvatarCardControllerIfNeeded
{
  cardController = [(CNAvatarView *)self cardController];
  if (!cardController)
  {
    if ([(CNAvatarView *)self isThreeDTouchEnabled])
    {
      traitCollection = [(CNAvatarView *)self traitCollection];
      v5 = [CNAvatarCardController avatarCardEnabledForTraitCollection:traitCollection];

      if (!v5)
      {
        return;
      }

      v6 = objc_alloc_init(CNAvatarCardController);
      [(CNAvatarCardController *)v6 setAvatarView:self];
      [(CNAvatarCardController *)v6 setDelegate:self];
      [(CNAvatarView *)self setCardController:v6];
      cardController = v6;
    }

    else
    {
      cardController = 0;
    }
  }
}

- (void)_updateRegistration
{
  v33[1] = *MEMORY[0x1E69E9840];
  autoUpdateContact = [(CNAvatarView *)self autoUpdateContact];
  if (self->_registeredInNotifier != autoUpdateContact)
  {
    v4 = autoUpdateContact;
    if (autoUpdateContact)
    {
      v22 = autoUpdateContact;
      descriptorForRequiredKeys = [(CNAvatarView *)self descriptorForRequiredKeys];
      v33[0] = descriptorForRequiredKeys;
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
            contactChangesNotifier = [v13 contactChangesNotifier];
            [contactChangesNotifier registerObserver:self forContact:v12 keysToFetch:v6];
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
            contactChangesNotifier2 = [v20 contactChangesNotifier];
            [contactChangesNotifier2 unregisterObserver:self forContact:v19];
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
  isThreeDTouchEnabled = [(CNAvatarView *)self isThreeDTouchEnabled];

  return [v3 descriptorForRequiredKeysWithThreeDTouchEnabled:isThreeDTouchEnabled];
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
    traitCollection = [(CNAvatarView *)self traitCollection];
    if ([CNAvatarCardController avatarCardEnabledForTraitCollection:traitCollection]&& ([(CNAvatarView *)self window], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      delegate = [(CNAvatarView *)self delegate];

      if (delegate)
      {
        forcePressView = [(CNAvatarView *)self forcePressView];
        cardController = [(CNAvatarView *)self cardController];
        [cardController setSourceView:forcePressView];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  forcePressView = [(CNAvatarView *)self cardController];
  [forcePressView setSourceView:0];
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
    delegate = [(CNAvatarView *)self delegate];
    *buf = 134218242;
    selfCopy6 = self;
    v31 = 2112;
    v32 = delegate;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "[CNAvatarView %p] avatarViewDidFinishRendering called with delegate %@", buf, 0x16u);
  }

  delegate2 = [(CNAvatarView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v19 = CNUILogAvatarView();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      delegate3 = [(CNAvatarView *)self delegate];
      *buf = 134218242;
      selfCopy6 = self;
      v31 = 2114;
      v32 = delegate3;
      _os_log_debug_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEBUG, "[CNAvatarView %p] Delegate %{public}@ does not respond to didUpdateContentForAvatarView: - update will not occur", buf, 0x16u);
    }

    v20 = CNUILogAvatarView();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 134218242;
      selfCopy6 = self;
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
      selfCopy6 = self;
      _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_INFO, "[CNAvatarView %p] Using standard path for content image, notifying delegate directly", buf, 0xCu);
    }

    delegate4 = [(CNAvatarView *)self delegate];
    [delegate4 didUpdateContentForAvatarView:self];

    v20 = CNUILogAvatarView();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy6 = self;
      _os_log_impl(&dword_199A75000, v20, OS_LOG_TYPE_INFO, "[CNAvatarView %p] Successfully notified delegate", buf, 0xCu);
    }

LABEL_17:

    return;
  }

  if (v9)
  {
    *buf = 134217984;
    selfCopy6 = self;
    _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_INFO, "oz: [CNAvatarView %p] Using Messages app path for content image", buf, 0xCu);
  }

  imageRenderer = [(CNAvatarView *)self imageRenderer];
  contacts = [(CNAvatarView *)self contacts];
  currentLikenessScope = [(CNAvatarView *)self currentLikenessScope];
  schedulerProvider = [(CNAvatarView *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v15 = [imageRenderer renderedLikenessesForContacts:contacts scope:currentLikenessScope workScheduler:backgroundScheduler];

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
  contacts = [(CNAvatarView *)self contacts];
  firstObject = [contacts firstObject];

  return firstObject;
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

  selfCopy = self;
  v6 = selfCopy;
  if (!selfCopy)
  {
LABEL_7:
    v4 = v6;
    goto LABEL_8;
  }

  v7 = selfCopy;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    superview = [v7 superview];

    v7 = superview;
    if (!superview)
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
  cachingLikenessRenderer = [v3 cachingLikenessRenderer];
  defaultThreeDTouchSupport = [objc_opt_class() defaultThreeDTouchSupport];
  contactStore = [v3 contactStore];
  v7 = [(CNAvatarView *)self initWithImageRenderer:cachingLikenessRenderer threeDTouchEnabled:defaultThreeDTouchSupport contactStore:contactStore];

  return v7;
}

- (void)dealloc
{
  rendererToken = [(CNAvatarView *)self rendererToken];
  [rendererToken cancel];

  v4 = +[CNUIContactsEnvironment currentEnvironment];
  contactChangesNotifier = [v4 contactChangesNotifier];
  [contactChangesNotifier removeEntriesWithoutObservers];

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
  window = [(CNAvatarView *)self window];

  if (!window || ((-[CNAvatarView imageView](self, "imageView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 bounds], v6 = v5, v8 = v7, v9 = *MEMORY[0x1E695F060], v10 = *(MEMORY[0x1E695F060] + 8), v4, v6 == v9) ? (v11 = v8 == v10) : (v11 = 0), v11))
  {
    likenessRenderingScope = 0;
  }

  else
  {
    imageView = [(CNAvatarView *)self imageView];
    [imageView bounds];
    v14 = v13;
    v16 = v15;

    window2 = [(CNAvatarView *)self window];
    screen = [window2 screen];
    [screen scale];
    v20 = v19;

    window3 = [(CNAvatarView *)self window];
    effectiveUserInterfaceLayoutDirection = [window3 effectiveUserInterfaceLayoutDirection];

    backgroundStyle = [(CNAvatarView *)self backgroundStyle];
    if (!backgroundStyle)
    {
      if ([(CNAvatarView *)self style])
      {
        backgroundStyle = 0;
      }

      else
      {
        traitCollection = [(CNAvatarView *)self traitCollection];
        backgroundStyle = [traitCollection userInterfaceStyle] == 2;
      }
    }

    style = [(CNAvatarView *)self style];
    maskedAvatarIndices = [(CNAvatarView *)self maskedAvatarIndices];
    v28 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:effectiveUserInterfaceLayoutDirection == 1 strokeWidth:style strokeColor:backgroundStyle rightToLeft:0 style:maskedAvatarIndices backgroundStyle:v14 color:v16 maskedAvatarIndices:v20, 0.0];

    likenessRenderingScope = [v28 likenessRenderingScope];
  }

  return likenessRenderingScope;
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

- (void)performTransitionAnimationWithStartHandler:(id)handler completion:(id)completion
{
  handlerCopy = handler;
  completionCopy = completion;
  sharedProfileStateOracle = [(CNAvatarView *)self sharedProfileStateOracle];

  if (!sharedProfileStateOracle)
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
    sharedProfileStateOracle2 = [(CNAvatarView *)self sharedProfileStateOracle];
    avatarViewAnimationTypeForEffectiveState = [sharedProfileStateOracle2 avatarViewAnimationTypeForEffectiveState];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, avatarViewAnimationTypeForEffectiveState);
    }

    if (avatarViewAnimationTypeForEffectiveState == 2)
    {
      v24 = CNUILogAvatarView();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v24, OS_LOG_TYPE_DEFAULT, "No transition animation to perform", buf, 2u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 2);
      }

      goto LABEL_25;
    }

    if (avatarViewAnimationTypeForEffectiveState == 1)
    {
      [(CNAvatarView *)self setIsPerformingTransition:1];
      v19 = CNUILogAvatarView();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEFAULT, "Performing transition animation (peek-a-boo)", buf, 2u);
      }

      sharedProfileStateOracle3 = [(CNAvatarView *)self sharedProfileStateOracle];
      pendingNickname = [sharedProfileStateOracle3 pendingNickname];
      sharedProfileStateOracle4 = [(CNAvatarView *)self sharedProfileStateOracle];
      contact = [sharedProfileStateOracle4 contact];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __70__CNAvatarView_performTransitionAnimationWithStartHandler_completion___block_invoke_103;
      v25[3] = &unk_1E74E6DD0;
      v25[4] = self;
      v26 = completionCopy;
      [(CNSharedProfileAnimationGenerator *)v10 performPeekABooAnimationForAnimatingAvatarView:self pendingNickname:pendingNickname contact:contact completionHandler:v25];

      v18 = v26;
    }

    else
    {
      if (avatarViewAnimationTypeForEffectiveState)
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

      sharedProfileStateOracle5 = [(CNAvatarView *)self sharedProfileStateOracle];
      pendingNickname2 = [sharedProfileStateOracle5 pendingNickname];
      sharedProfileStateOracle6 = [(CNAvatarView *)self sharedProfileStateOracle];
      contact2 = [sharedProfileStateOracle6 contact];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__CNAvatarView_performTransitionAnimationWithStartHandler_completion___block_invoke;
      v27[3] = &unk_1E74E6DD0;
      v27[4] = self;
      v28 = completionCopy;
      [(CNSharedProfileAnimationGenerator *)v10 performCoinFlipAnimationForAnimatingAvatarView:self pendingNickname:pendingNickname2 contact:contact2 completionHandler:v27];

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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 2);
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:6];

  if (v5)
  {
    [(CNAvatarView *)self avatarView];
  }

  else
  {
    [(CNAvatarView *)self imageView];
  }
  v6 = ;
  layer = [v6 layer];

  return layer;
}

- (void)avatarCacheDidUpdateForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v7 = [featureFlags isFeatureEnabled:6];

  if ((v7 & 1) == 0)
  {
    contacts = [(CNAvatarView *)self contacts];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__CNAvatarView_avatarCacheDidUpdateForIdentifiers___block_invoke;
    v14[3] = &unk_1E74E7880;
    v15 = identifiersCopy;
    v9 = [contacts _cn_any:v14];

    if (v9)
    {
      currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
      schedulerProvider = [currentEnvironment2 schedulerProvider];
      mainThreadScheduler = [schedulerProvider mainThreadScheduler];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__CNAvatarView_avatarCacheDidUpdateForIdentifiers___block_invoke_2;
      v13[3] = &unk_1E74E6A88;
      v13[4] = self;
      [mainThreadScheduler performBlock:v13];
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
  forcePressView = [(CNAvatarView *)self forcePressView];
  [(CNAvatarView *)self contentImageFrame];
  [forcePressView convertRect:self fromView:?];
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
  forcePressView = [(CNAvatarView *)self forcePressView];
  [forcePressView bounds];
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

- (void)contactDidChange:(id)change
{
  v17[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ([(NSArray *)self->_contacts count]== 1)
  {
    v17[0] = changeCopy;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    contacts = self->_contacts;
    self->_contacts = v5;
  }

  else
  {
    v7 = [(NSArray *)self->_contacts mutableCopy];
    identifier = [changeCopy identifier];
    v9 = self->_contacts;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __33__CNAvatarView_contactDidChange___block_invoke;
    v15[3] = &unk_1E74E38A8;
    v16 = identifier;
    contacts = identifier;
    v10 = [(NSArray *)v9 indexOfObjectPassingTest:v15];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSArray *)v7 replaceObjectAtIndex:v10 withObject:changeCopy];
    }

    v11 = self->_contacts;
    self->_contacts = v7;
    v12 = v7;
  }

  cardController = [(CNAvatarView *)self cardController];

  if (cardController)
  {
    cardController2 = [(CNAvatarView *)self cardController];
    [cardController2 prepareWithContacts:0 store:0];
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

- (void)setForcePressView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_forcePressView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_forcePressView, obj);
    window = [(CNAvatarView *)self window];

    v5 = obj;
    if (window)
    {
      [(CNAvatarView *)self _updateCardActions];
      v5 = obj;
    }
  }
}

- (void)avatarCardControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  delegate = [(CNAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNAvatarView *)self delegate];
    [delegate2 didDismissActionsForAvatarView:self];
  }

  contacts = [(CNAvatarView *)self contacts];
  contacts2 = [dismissCopy contacts];

  if (contacts != contacts2)
  {
    [dismissCopy cleanupAfterDisplay];
  }
}

- (void)avatarCardControllerWillDismiss:(id)dismiss
{
  delegate = [(CNAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNAvatarView *)self delegate];
    [delegate2 willDismissActionsForAvatarView:self];
  }
}

- (BOOL)avatarCardController:(id)controller shouldShowContact:(id)contact
{
  contactCopy = contact;
  delegate = [(CNAvatarView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNAvatarView *)self delegate];
    v9 = [delegate2 avatarView:self shouldShowContact:contactCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)avatarCardController:(id)controller orderedPropertiesForProperties:(id)properties category:(id)category
{
  propertiesCopy = properties;
  categoryCopy = category;
  delegate = [(CNAvatarView *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(CNAvatarView *)self delegate];
    v12 = [delegate2 avatarView:self orderedPropertiesForProperties:propertiesCopy category:categoryCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)avatarCardControllerWillBeginPreviewInteraction:(id)interaction
{
  delegate = [(CNAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNAvatarView *)self delegate];
    [delegate2 willBeginPreviewInteractionForAvatarView:self];
  }
}

- (int64_t)avatarCardController:(id)controller presentationResultForLocation:(CGPoint)location
{
  v26[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  delegate = [(CNAvatarView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNAvatarView *)self delegate];
    v9 = +[CNAvatarCardController descriptorForRequiredKeys];
    v26[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    contacts = [delegate2 contactsForPreviewInteractionForAvatarView:self suggestedKeysToFetch:v10];
  }

  else
  {
    contacts = [(CNAvatarView *)self contacts];
  }

  if (![contacts count])
  {
    goto LABEL_12;
  }

  contactStore = [(CNAvatarView *)self contactStore];
  [controllerCopy prepareWithContacts:contacts store:contactStore];

  hasActions = [controllerCopy hasActions];
  delegate3 = [(CNAvatarView *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate4 = [(CNAvatarView *)self delegate];
    v17 = [delegate4 overrideImageDataForPreviewInteractionForAvatarView:self];

    [controllerCopy prepareWithOverrideImageData:v17];
    if ((hasActions & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!hasActions)
  {
LABEL_12:
    v24 = 2;
    goto LABEL_13;
  }

  delegate5 = [(CNAvatarView *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate6 = [(CNAvatarView *)self delegate];
    v21 = [delegate6 shouldShowActionsForAvatarView:self];

    if (!v21)
    {
      goto LABEL_12;
    }
  }

  [controllerCopy prepareForDisplay];
  name = [(CNAvatarView *)self name];
  [controllerCopy setName:name];

  message = [(CNAvatarView *)self message];
  [controllerCopy setMessage:message];

  v24 = 0;
LABEL_13:

  return v24;
}

- (id)presentingViewControllerForAvatarCardController:(id)controller
{
  delegate = [(CNAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNAvatarView *)self delegate];
    v7 = [delegate2 presentingViewControllerForAvatarView:self];

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
  cardController = [(CNAvatarView *)self cardController];
  bypassActionValidation = [cardController bypassActionValidation];

  return bypassActionValidation;
}

- (void)setBypassActionValidation:(BOOL)validation
{
  validationCopy = validation;
  cardController = [(CNAvatarView *)self cardController];
  [cardController setBypassActionValidation:validationCopy];
}

- (NSArray)actionCategories
{
  cardController = [(CNAvatarView *)self cardController];
  actionCategories = [cardController actionCategories];

  return actionCategories;
}

- (void)setActionCategories:(id)categories
{
  categoriesCopy = categories;
  cardController = [(CNAvatarView *)self cardController];
  [cardController setActionCategories:categoriesCopy];
}

- (void)setShowsContactOnTap:(BOOL)tap
{
  if (self->_showsContactOnTap != tap)
  {
    self->_showsContactOnTap = tap;
  }
}

- (void)setAutoUpdateContact:(BOOL)contact
{
  if (self->_autoUpdateContact != contact)
  {
    self->_autoUpdateContact = contact;
    [(CNAvatarView *)self _updateRegistration];
  }
}

- (void)contactDidChange
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:6];

  if ((v5 & 1) == 0)
  {
    [(CNAvatarView *)self clearImage];

    [(CNAvatarView *)self _renderContactsImage];
  }
}

- (void)dismissContactViewController:(id)controller
{
  contactViewNavigationController = [(CNAvatarView *)self contactViewNavigationController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__CNAvatarView_dismissContactViewController___block_invoke;
  v5[3] = &unk_1E74E6A88;
  v5[4] = self;
  [contactViewNavigationController dismissViewControllerAnimated:1 completion:v5];
}

- (void)showContact:(id)contact
{
  contact = [(CNAvatarView *)self contact];
  identifier = [contact identifier];
  if ([contact hasBeenPersisted])
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contact://show?id=%@", identifier];
    v6 = [v4 URLWithString:v5];

    v7 = +[CNUIContactsEnvironment currentEnvironment];
    applicationWorkspace = [v7 applicationWorkspace];
    [applicationWorkspace openSensitiveURLInBackground:v6 withOptions:0];
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:6];

  if (v5)
  {
    image = self->_contentImage;
  }

  else
  {
    imageView = [(CNAvatarView *)self imageView];
    image = [imageView image];
  }

  return image;
}

- (void)setDisableCornerRadiusForAvatar:(BOOL)avatar
{
  if (self->_disableCornerRadiusForAvatar != avatar)
  {
    self->_disableCornerRadiusForAvatar = avatar;
    [(CNAvatarView *)self setNeedsLayout];
  }
}

- (void)setThreeDTouchEnabled:(BOOL)enabled
{
  if (self->_threeDTouchEnabled != enabled)
  {
    self->_threeDTouchEnabled = enabled;
    if (enabled)
    {
      [(CNAvatarView *)self setupAvatarCardControllerIfNeeded];
    }

    [(CNAvatarView *)self _updateCardActions];
  }
}

- (void)setImage:(id)image state:(int64_t)state
{
  v22 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  imageView = [(CNAvatarView *)self imageView];
  image = [imageView image];
  v9 = [imageCopy isEqual:image];

  if (v9)
  {
    [(CNAvatarView *)self setDisplayedImageState:state];
    if (state != 2)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if ([(CNAvatarView *)self allowStaleRendering])
  {
    allowStaleRenderingWithMatchingContextToken = [(CNAvatarView *)self allowStaleRenderingWithMatchingContextToken];
    if (state == 1)
    {
      [(CNAvatarView *)self setAllowStaleRenderingWithMatchingContextToken:1];
    }

    v11 = !allowStaleRenderingWithMatchingContextToken;
    if (state == 2)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      v12 = CNUILogAvatarView();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        [(CNAvatarView *)self setDisplayedImageState:state];
        goto LABEL_19;
      }

      contacts = [objc_opt_class() descriptionForDisplayedImageState:state];
      v18 = 134218242;
      selfCopy = self;
      v20 = 2114;
      v21 = contacts;
      _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_INFO, "[CNAvatarView] %p ignoring setting image for state (%{public}@), showing stale image instead", &v18, 0x16u);
LABEL_12:

      goto LABEL_15;
    }
  }

  imageView2 = [(CNAvatarView *)self imageView];
  [imageView2 setImage:imageCopy];

  if (state != 2)
  {
    v12 = CNUILogAvatarView();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    contacts = [(CNAvatarView *)self contacts];
    v18 = 138412290;
    selfCopy = contacts;
    _os_log_debug_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEBUG, "[CNAvatarView] Setting placeholder image for %@", &v18, 0xCu);
    goto LABEL_12;
  }

  [(CNAvatarView *)self setDisplayedImageState:2];
LABEL_17:
  delegate = [(CNAvatarView *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate2 = [(CNAvatarView *)self delegate];
    [delegate2 didUpdateContentForAvatarView:self];
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

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = CNAvatarView;
  changeCopy = change;
  [(CNAvatarView *)&v9 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(CNAvatarView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  style = [(CNAvatarView *)self style];
  if (userInterfaceStyle != userInterfaceStyle2 && !style)
  {
    [(CNAvatarView *)self _renderContactsImage];
  }
}

- (CGRect)frameForAvatarAtIndex:(unint64_t)index inView:(id)view
{
  viewCopy = view;
  v7 = MEMORY[0x1E6996AB0];
  contacts = [(CNAvatarView *)self contacts];
  v9 = [v7 layoutConfigurationsForType:2 withItemCount:{objc_msgSend(contacts, "count")}];

  if ([v9 count] <= index)
  {
    v22 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v26 = *(MEMORY[0x1E695F058] + 16);
    v28 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v10 = [v9 objectAtIndex:index];
    v11 = [(CNAvatarView *)self effectiveUserInterfaceLayoutDirection]== 1;
    imageView = [(CNAvatarView *)self imageView];
    [imageView bounds];
    [v10 itemFrameInContainingBounds:v11 isRTL:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [(CNAvatarView *)self convertRect:viewCopy toView:v14, v16, v18, v20];
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

- (void)setBackgroundStyle:(unint64_t)style
{
  self->_backgroundStyle = style;
  avatarView = [(CNAvatarView *)self avatarView];
  [avatarView setBackgroundStyle:style];
}

- (void)notifyDelegateOfGroupConfigurationUpdateWithError:(id)error
{
  errorCopy = error;
  delegate = [(CNAvatarView *)self delegate];
  if (errorCopy)
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(CNAvatarView *)self delegate];
    groupViewConfigurationUpdateToken = [(CNAvatarView *)self groupViewConfigurationUpdateToken];
    [delegate2 avatarView:self didFailToUpdateViewForGroupConfiguration:groupViewConfigurationUpdateToken withError:errorCopy];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(CNAvatarView *)self delegate];
    groupViewConfigurationUpdateToken = [(CNAvatarView *)self groupViewConfigurationUpdateToken];
    [delegate2 avatarView:self didUpdateViewForGroupConfiguration:groupViewConfigurationUpdateToken];
  }

LABEL_7:
}

- (id)updateViewWithGroupIdentity:(id)identity maskingContacts:(id)contacts
{
  contactsCopy = contacts;
  identityCopy = identity;
  groupPhoto = [identityCopy groupPhoto];

  if (groupPhoto)
  {
    [(CNAvatarView *)self setShouldUpdateMaskedAvatars:0];
    indexSet = [MEMORY[0x1E696AC90] indexSet];
    [(CNAvatarView *)self setMaskedAvatarIndices:indexSet];
  }

  else
  {
    contacts = [identityCopy contacts];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__CNAvatarView_updateViewWithGroupIdentity_maskingContacts___block_invoke;
    v15[3] = &unk_1E74E38A8;
    v16 = contactsCopy;
    v11 = [contacts indexesOfObjectsPassingTest:v15];

    maskedAvatarIndices = [(CNAvatarView *)self maskedAvatarIndices];
    -[CNAvatarView setShouldUpdateMaskedAvatars:](self, "setShouldUpdateMaskedAvatars:", [maskedAvatarIndices isEqualToIndexSet:v11] ^ 1);

    [(CNAvatarView *)self setMaskedAvatarIndices:v11];
  }

  v13 = [(CNAvatarView *)self updateViewWithGroupIdentity:identityCopy];

  return v13;
}

- (id)updateViewWithGroupIdentity:(id)identity
{
  v18[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  groupPhoto = [identityCopy groupPhoto];
  if (groupPhoto)
  {
    contact = [(CNAvatarView *)self contact];
    v8 = [contact isKeyAvailable:*MEMORY[0x1E695C400]];

    if (v8)
    {
      contact2 = [(CNAvatarView *)self contact];
      thumbnailImageData = [contact2 thumbnailImageData];
      v11 = [groupPhoto isEqualToData:thumbnailImageData];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    contacts2 = [MEMORY[0x1E695CF18] contactWithDisplayName:0 emailOrPhoneNumber:0];
    [contacts2 setImageData:groupPhoto];
    [contacts2 setThumbnailImageData:groupPhoto];
    v18[0] = contacts2;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(CNAvatarView *)self setContacts:v13 forToken:uUID];

LABEL_7:
LABEL_8:
    v16 = uUID;
    goto LABEL_9;
  }

  contacts = [identityCopy contacts];
  v15 = [(CNAvatarView *)self shouldUpdateWithContacts:contacts];

  if (v15)
  {
    contacts2 = [identityCopy contacts];
    [(CNAvatarView *)self setContacts:contacts2 forToken:uUID];
    goto LABEL_7;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (BOOL)shouldUpdateWithContacts:(id)contacts
{
  contactsCopy = contacts;
  if (-[CNAvatarView shouldUpdateMaskedAvatars](self, "shouldUpdateMaskedAvatars") || ([MEMORY[0x1E69966E8] currentEnvironment], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "featureFlags"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isFeatureEnabled:", 6), v6, v5, (v7 & 1) != 0))
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    contacts = self->_contacts;
    if (contactsCopy | contacts)
    {
      v8 = [(NSArray *)contacts _cn_isIdenticalToArray:contactsCopy]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (void)_setContacts:(id)contacts
{
  v32 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  isInternalBuild = [currentEnvironment isInternalBuild];

  if (isInternalBuild)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [contactsCopy _cn_map:&__block_literal_global_2857];
    v10 = v9;
    v11 = @"nil";
    if (v9)
    {
      v11 = v9;
    }

    v12 = [v8 stringWithFormat:@"CNAvatarView (%p) - %@", self, v11];
    layer = [(CNAvatarView *)self layer];
    [layer setName:v12];
  }

  v14 = CNUILogAvatarView();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    selfCopy = self;
    v30 = 2114;
    v31 = contactsCopy;
    _os_log_debug_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEBUG, "[CNAvatarView] (%p) setContacts: %{public}@", buf, 0x16u);
  }

  if ([(CNAvatarView *)self shouldUpdateWithContacts:contactsCopy])
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
          contactChangesNotifier = [v21 contactChangesNotifier];
          [contactChangesNotifier unregisterObserver:self forContact:v20];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    objc_storeStrong(&self->_contacts, contacts);
    [(CNAvatarView *)self setShouldUpdateMaskedAvatars:0];
    [(CNAvatarView *)self clearImage];
    [(CNAvatarView *)self _renderContactsImage];
  }
}

- (void)setContacts:(id)contacts forToken:(id)token
{
  tokenCopy = token;
  contactsCopy = contacts;
  [(CNAvatarView *)self resetGroupUpdateTokenIfNeeded];
  [(CNAvatarView *)self setGroupViewConfigurationUpdateToken:tokenCopy];

  [(CNAvatarView *)self _setContacts:contactsCopy];
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:6];

  contacts = self->_contacts;
  if (v6)
  {
    if ((contactsCopy || !contacts) && [(NSArray *)contacts isEqualToArray:?])
    {
      goto LABEL_12;
    }
  }

  else if ((contactsCopy || !contacts) && [(NSArray *)contacts isEqualToArray:?])
  {
    goto LABEL_13;
  }

  [(CNAvatarView *)self resetGroupUpdateTokenIfNeeded];
LABEL_12:
  [(CNAvatarView *)self _setContacts:contactsCopy];
LABEL_13:
}

- (void)setBorderWidth:(double)width
{
  if (self->_borderWidth != width)
  {
    self->_borderWidth = width;
    avatarView = [(CNAvatarView *)self avatarView];
    [avatarView setBorderWidth:width];
  }
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  if (self->_borderColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_borderColor, color);
    avatarView = [(CNAvatarView *)self avatarView];
    [avatarView setBorderColor:v7];

    colorCopy = v7;
  }
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    contacts = [(CNAvatarView *)self contacts];

    if (contacts)
    {

      [(CNAvatarView *)self _renderContactsImage];
    }
  }
}

- (void)setContextToken:(id)token
{
  if (self->_contextToken != token)
  {
    objc_storeStrong(&self->_contextToken, token);
    if ([(CNAvatarView *)self allowStaleRendering])
    {
      [(CNAvatarView *)self setAllowStaleRenderingWithMatchingContextToken:0];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setShouldFetchSharedMeContactPhoto:(BOOL)photo
{
  if (self->_shouldFetchSharedMeContactPhoto != photo)
  {
    photoCopy = photo;
    self->_shouldFetchSharedMeContactPhoto = photo;
    imageRenderer = [(CNAvatarView *)self imageRenderer];
    v7 = imageRenderer;
    if (photoCopy)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [imageRenderer setLookupOptions:v6];
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

- (CNAvatarView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(CNAvatarView *)self init];
  v8 = v7;
  if (v7)
  {
    [(CNAvatarView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (CNAvatarView)initWithImageRenderer:(id)renderer threeDTouchEnabled:(BOOL)enabled contactStore:(id)store style:(unint64_t)style schedulerProvider:(id)provider backgroundStyle:(unint64_t)backgroundStyle personaId:(id)id
{
  rendererCopy = renderer;
  storeCopy = store;
  providerCopy = provider;
  idCopy = id;
  v18 = *MEMORY[0x1E695F058];
  v19 = *(MEMORY[0x1E695F058] + 8);
  v34.receiver = self;
  v34.super_class = CNAvatarView;
  unk_1EAF768C8 = [(CNAvatarView *)&v34 initWithFrame:v18, v19, *&CNAvatarViewDefaultSize, unk_1EAF768C8];
  v21 = unk_1EAF768C8;
  if (unk_1EAF768C8)
  {
    unk_1EAF768C8->_threeDTouchEnabled = enabled;
    objc_storeStrong(&unk_1EAF768C8->_contactStore, store);
    objc_storeStrong(&v21->_imageRenderer, renderer);
    v21->_style = style;
    v22 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v21->_imageView;
    v21->_imageView = v22;

    v24 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    alternativeImageView = v21->_alternativeImageView;
    v21->_alternativeImageView = v24;

    [(UIImageView *)v21->_alternativeImageView setContentMode:2, storeCopy, rendererCopy];
    [(UIImageView *)v21->_alternativeImageView setClipsToBounds:1];
    objc_storeStrong(&v21->_schedulerProvider, provider);
    v21->_backgroundStyle = backgroundStyle;
    objc_storeStrong(&v21->_personaId, id);
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    isInternalBuild = [currentEnvironment isInternalBuild];

    if (isInternalBuild)
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

- (CNAvatarView)initWithImageRenderer:(id)renderer threeDTouchEnabled:(BOOL)enabled contactStore:(id)store
{
  enabledCopy = enabled;
  storeCopy = store;
  rendererCopy = renderer;
  v10 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v10 defaultSchedulerProvider];

  v12 = [(CNAvatarView *)self initWithImageRenderer:rendererCopy threeDTouchEnabled:enabledCopy contactStore:storeCopy style:0 schedulerProvider:defaultSchedulerProvider backgroundStyle:0 personaId:0];
  return v12;
}

- (CNAvatarView)initWithSettings:(id)settings
{
  settingsCopy = settings;
  likenessRenderer = [settingsCopy likenessRenderer];
  if ([likenessRenderer conformsToProtocol:&unk_1F0E28E18])
  {
    v6 = likenessRenderer;
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

  threeDTouchEnabled = [settingsCopy threeDTouchEnabled];
  contactStore = [settingsCopy contactStore];
  style = [settingsCopy style];
  schedulerProvider = [settingsCopy schedulerProvider];
  backgroundStyle = [settingsCopy backgroundStyle];
  personaId = [settingsCopy personaId];

  v15 = [(CNAvatarView *)self initWithImageRenderer:likenessRenderer threeDTouchEnabled:threeDTouchEnabled contactStore:contactStore style:style schedulerProvider:schedulerProvider backgroundStyle:backgroundStyle personaId:personaId];
  return v15;
}

+ (id)makeDescriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)enabled shouldUseCachingRenderer:(BOOL)renderer
{
  rendererCopy = renderer;
  enabledCopy = enabled;
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
  v7 = *MEMORY[0x1E695C1C8];
  v14[0] = v6;
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  if (rendererCopy)
  {
    [MEMORY[0x1E6996B90] descriptorForRequiredKeysForCaching];
  }

  else
  {
    [MEMORY[0x1E6996B90] descriptorForRequiredKeys];
  }
  v9 = ;
  v10 = [v8 arrayByAddingObject:v9];

  if (enabledCopy)
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

+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)enabled shouldUseCachingRenderer:(BOOL)renderer description:(id)description
{
  rendererCopy = renderer;
  descriptionCopy = description;
  if (enabled)
  {
    _currentTraitCollection = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
    v10 = [CNAvatarCardController avatarCardEnabledForTraitCollection:_currentTraitCollection];

    v11 = !v10;
    v12 = !rendererCopy;
    if (rendererCopy && (v11 & 1) == 0)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __101__CNAvatarView_descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description___block_invoke;
      v31[3] = &unk_1E74E1CB8;
      v32[1] = self;
      v33 = v10;
      v34 = rendererCopy;
      v13 = v32;
      v32[0] = descriptionCopy;
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
    v12 = !rendererCopy;
    v11 = 1;
  }

  if (v12 || v10)
  {
    if ((v11 | rendererCopy))
    {
      if (v10 || rendererCopy)
      {
        v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't be reached" userInfo:0];
        objc_exception_throw(v18);
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __101__CNAvatarView_descriptorForRequiredKeysWithThreeDTouchEnabled_shouldUseCachingRenderer_description___block_invoke_4;
      v19[3] = &unk_1E74E1CB8;
      v20[1] = self;
      v21 = v10;
      v22 = rendererCopy;
      v13 = v20;
      v20[0] = descriptionCopy;
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
      v24[1] = self;
      v25 = v10;
      v26 = rendererCopy;
      v13 = v24;
      v24[0] = descriptionCopy;
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
    v28[1] = self;
    v29 = v10;
    v30 = rendererCopy;
    v13 = v28;
    v28[0] = descriptionCopy;
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

+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:]"];
  v6 = [self descriptorForRequiredKeysWithThreeDTouchEnabled:enabledCopy shouldUseCachingRenderer:1 description:v5];

  return v6;
}

+ (id)descriptionForDisplayedImageState:(int64_t)state
{
  if (state > 2)
  {
    return @"Unexpected Image State";
  }

  else
  {
    return off_1E74E1D78[state];
  }
}

- (void)setShowsActionsOnForcePress:(BOOL)press
{
  if (self->_showsActionsOnForcePress != press)
  {
    self->_showsActionsOnForcePress = press;
    [(CNAvatarView *)self _updateCardActions];
  }
}

- (void)setShowsActionsOnTap:(BOOL)tap
{
  if (self->_showsActionsOnTap != tap)
  {
    self->_showsActionsOnTap = tap;
    [(CNAvatarView *)self _updateCardActions];
  }
}

- (void)setContact:(id)contact
{
  v7[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = contactCopy;
  if (contactCopy)
  {
    v7[0] = contactCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(CNAvatarView *)self setContacts:v6];
  }

  else
  {
    [(CNAvatarView *)self setContacts:MEMORY[0x1E695E0F0]];
  }
}

- (CNAvatarView)initWithContact:(id)contact
{
  v8[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = [(CNAvatarView *)self init];
  if (v5)
  {
    if (contactCopy)
    {
      v8[0] = contactCopy;
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