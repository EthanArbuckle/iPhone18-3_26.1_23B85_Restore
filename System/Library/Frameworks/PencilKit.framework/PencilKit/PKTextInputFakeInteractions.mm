@interface PKTextInputFakeInteractions
+ (id)sharedInstance;
+ (void)attachFakeInteractionToViewIfNecessary:(id)necessary;
- (void)_attachToView:(id)view;
@end

@implementation PKTextInputFakeInteractions

+ (id)sharedInstance
{
  if (qword_1ED6A5508 != -1)
  {
    dispatch_once(&qword_1ED6A5508, &__block_literal_global_88);
  }

  v3 = _MergedGlobals_168;

  return v3;
}

void __45__PKTextInputFakeInteractions_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKTextInputFakeInteractions);
  v1 = _MergedGlobals_168;
  _MergedGlobals_168 = v0;
}

+ (void)attachFakeInteractionToViewIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  sharedInstance = [self sharedInstance];
  [sharedInstance _attachToView:necessaryCopy];
}

- (void)_attachToView:(id)view
{
  viewCopy = view;
  fakeScribbleInteractionDelegate = [viewCopy fakeScribbleInteractionDelegate];

  if (!fakeScribbleInteractionDelegate && (PKHasScribbleInteractionInView(viewCopy) & 1) == 0)
  {
    v4 = +[PKTextInputSettings sharedSettings];
    enableTargetedAppWorkarounds = [v4 enableTargetedAppWorkarounds];

    if (enableTargetedAppWorkarounds)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = viewCopy;
        if ([v6 isStylusDrawingEnabled])
        {
          v7 = [[PKFakeNotesDelegate alloc] initWithTextView:v6];

          if (v7)
          {
LABEL_21:
            v16 = 0;
LABEL_26:
            [viewCopy setFakeScribbleInteractionDelegate:v7];
            v18 = objc_alloc_init(PKScribbleInteraction);
            fakeScribbleInteractionDelegate2 = [viewCopy fakeScribbleInteractionDelegate];
            [(PKScribbleInteraction *)v18 setDelegate:fakeScribbleInteractionDelegate2];

            [(PKScribbleInteraction *)v18 setElementSource:v16];
            [viewCopy addInteraction:v18];

            goto LABEL_27;
          }
        }

        else
        {
        }
      }

      if (NSClassFromString(&cfstr_Rctextfield.isa))
      {
        if (objc_opt_isKindOfClass())
        {
          v8 = [[PKFakeVoiceMemosDelegate alloc] initWithView:viewCopy];
          if (v8)
          {
LABEL_20:
            v7 = v8;
            goto LABEL_21;
          }
        }
      }

      if (NSClassFromString(&cfstr_Ekuitableviewc.isa) && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v9 = viewCopy;
        textLabel = [v9 textLabel];
        text = [textLabel text];
        v12 = [text isEqualToString:@"Location"];

        if (v12)
        {
          v13 = [PKFakeCalendarLocationDelegate alloc];
          window = [v9 window];
          v15 = [(PKFakeCalendarLocationDelegate *)v13 initWithCell:v9 window:window];

          v7 = v15;
          if (v7)
          {
LABEL_25:
            v16 = v7;
            goto LABEL_26;
          }
        }

        else
        {
        }
      }
    }

    if ([PKFakeDisableDelegate _shouldAttachForView:viewCopy])
    {
      v8 = objc_alloc_init(PKFakeDisableDelegate);
      if (v8)
      {
        goto LABEL_20;
      }
    }

    if ([PKFakeTapToFocusDelegate _shouldAttachForView:viewCopy])
    {
      v17 = [[PKFakeTapToFocusDelegate alloc] initWithView:viewCopy];
      if (v17)
      {
        v7 = v17;
        goto LABEL_25;
      }
    }
  }

LABEL_27:
}

@end