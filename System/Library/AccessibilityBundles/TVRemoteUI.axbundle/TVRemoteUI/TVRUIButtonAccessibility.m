@interface TVRUIButtonAccessibility
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation TVRUIButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TVRUIButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TVRUIButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v11 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 buttonType];
  if (v4 <= 9991)
  {
    switch(v4)
    {
      case 0:
      case 17:
      case 18:
      case 20:
      case 21:
      case 22:
        v10.receiver = self;
        v10.super_class = TVRUIButtonAccessibility;
        [(TVRUIButtonAccessibility *)&v10 accessibilityLabel];
        goto LABEL_4;
      case 1:
        v6 = @"tv.remote.touchpad.select.button";
        goto LABEL_43;
      case 2:
      case 23:
        v6 = @"tv.button.back.label";
        goto LABEL_43;
      case 3:
        v6 = @"tv.button.home.label";
        goto LABEL_43;
      case 4:
        if ((AXDeviceIsSiriAvailable() & 1) == 0)
        {
          goto LABEL_30;
        }

        v6 = @"tv.button.siri.label";
        break;
      case 5:
        v6 = @"tv.button.play.label";
        goto LABEL_43;
      case 6:
        goto LABEL_17;
      case 7:
        goto LABEL_9;
      case 8:
        v6 = @"tv.button.skip.next.label";
        goto LABEL_43;
      case 9:
        v6 = @"tv.button.skip.previous.label";
        goto LABEL_43;
      case 10:
        v6 = @"tv.button.volume.up.label";
        goto LABEL_43;
      case 11:
        v6 = @"tv.button.volume.down.label";
        goto LABEL_43;
      case 12:
        v6 = @"tv.remote.touchpad.up.button";
        goto LABEL_43;
      case 13:
        v6 = @"tv.remote.touchpad.down.button";
        goto LABEL_43;
      case 14:
        v6 = @"tv.remote.touchpad.left.button";
        goto LABEL_43;
      case 15:
        v6 = @"tv.remote.touchpad.right.button";
        goto LABEL_43;
      case 16:
        v6 = @"tv.button.toggle.captions";
        goto LABEL_43;
      case 24:
        v6 = @"tv.button.exit.label";
        goto LABEL_43;
      case 25:
        v6 = @"tv.button.info.label";
        goto LABEL_43;
      case 26:
        v6 = @"tv.remote.media.page.up.button";
        goto LABEL_43;
      case 27:
        v6 = @"tv.remote.media.page.down.button";
        goto LABEL_43;
      case 28:
        v6 = @"tv.remote.media.guide.button";
        goto LABEL_43;
      case 29:
        v6 = @"tv.remote.media.mute.button";
        goto LABEL_43;
      case 30:
        v6 = @"tv.remote.media.power.button";
        goto LABEL_43;
      case 31:
        v6 = @"tv.remote.media.skip.start.button";
        goto LABEL_43;
      default:
        goto LABEL_47;
    }

    goto LABEL_43;
  }

  if (v4 <= 9994)
  {
    if (v4 == 9992)
    {
      v6 = @"tv.remote.media.information.button";
    }

    else if (v4 == 9993)
    {
      v6 = @"tv.button.only.play.label";
    }

    else
    {
      v6 = @"tv.button.only.pause.label";
    }

    goto LABEL_43;
  }

  if (v4 > 9997)
  {
    if (v4 == 9998)
    {
LABEL_30:
      v6 = @"tv.button.search.label";
      goto LABEL_43;
    }

    if (v4 == 9999)
    {
      v6 = @"tv.button.keyboard.label";
      goto LABEL_43;
    }
  }

  else
  {
    if (v4 == 9995)
    {
LABEL_17:
      v6 = @"tv.button.fast.forward.label";
      goto LABEL_43;
    }

    if (v4 == 9996)
    {
LABEL_9:
      v6 = @"tv.button.rewind.label";
LABEL_43:
      v5 = accessibilityLocalizedString(v6);
      goto LABEL_44;
    }
  }

LABEL_47:
  v9.receiver = self;
  v9.super_class = TVRUIButtonAccessibility;
  [(TVRUIButtonAccessibility *)&v9 accessibilityLabel];
  v5 = LABEL_4:;
LABEL_44:
  v7 = v5;

  return v7;
}

- (id)accessibilityHint
{
  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if ([v3 buttonType] == 4)
  {
    if (AXDeviceIsSiriAvailable())
    {
      v4 = @"tv.button.siri.hint";
    }

    else
    {
      v4 = @"tv.button.search.hint";
    }

    v5 = accessibilityLocalizedString(v4);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TVRUIButtonAccessibility;
    v5 = [(TVRUIButtonAccessibility *)&v8 accessibilityHint];
  }

  v6 = v5;

  return v6;
}

@end