@interface PKTextInputFakeInteractions
+ (id)sharedInstance;
+ (void)attachFakeInteractionToViewIfNecessary:(id)a3;
- (void)_attachToView:(id)a3;
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

+ (void)attachFakeInteractionToViewIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedInstance];
  [v5 _attachToView:v4];
}

- (void)_attachToView:(id)a3
{
  v20 = a3;
  v3 = [v20 fakeScribbleInteractionDelegate];

  if (!v3 && (PKHasScribbleInteractionInView(v20) & 1) == 0)
  {
    v4 = +[PKTextInputSettings sharedSettings];
    v5 = [v4 enableTargetedAppWorkarounds];

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v20;
        if ([v6 isStylusDrawingEnabled])
        {
          v7 = [[PKFakeNotesDelegate alloc] initWithTextView:v6];

          if (v7)
          {
LABEL_21:
            v16 = 0;
LABEL_26:
            [v20 setFakeScribbleInteractionDelegate:v7];
            v18 = objc_alloc_init(PKScribbleInteraction);
            v19 = [v20 fakeScribbleInteractionDelegate];
            [(PKScribbleInteraction *)v18 setDelegate:v19];

            [(PKScribbleInteraction *)v18 setElementSource:v16];
            [v20 addInteraction:v18];

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
          v8 = [[PKFakeVoiceMemosDelegate alloc] initWithView:v20];
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
        v9 = v20;
        v10 = [v9 textLabel];
        v11 = [v10 text];
        v12 = [v11 isEqualToString:@"Location"];

        if (v12)
        {
          v13 = [PKFakeCalendarLocationDelegate alloc];
          v14 = [v9 window];
          v15 = [(PKFakeCalendarLocationDelegate *)v13 initWithCell:v9 window:v14];

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

    if ([PKFakeDisableDelegate _shouldAttachForView:v20])
    {
      v8 = objc_alloc_init(PKFakeDisableDelegate);
      if (v8)
      {
        goto LABEL_20;
      }
    }

    if ([PKFakeTapToFocusDelegate _shouldAttachForView:v20])
    {
      v17 = [[PKFakeTapToFocusDelegate alloc] initWithView:v20];
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