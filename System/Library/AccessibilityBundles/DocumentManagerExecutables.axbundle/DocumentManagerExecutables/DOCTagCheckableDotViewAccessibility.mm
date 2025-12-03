@interface DOCTagCheckableDotViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation DOCTagCheckableDotViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(DOCTagCheckableDotViewAccessibility *)self safeIntegerForKey:@"tagColor"];
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1:
        systemGrayColor = [MEMORY[0x29EDC7A00] systemGrayColor];
        break;
      case 2:
        systemGrayColor = [MEMORY[0x29EDC7A00] systemGreenColor];
        break;
      case 3:
        systemGrayColor = [MEMORY[0x29EDC7A00] systemPurpleColor];
        break;
      default:
        goto LABEL_19;
    }
  }

  else if (v2 > 5)
  {
    if (v2 == 7)
    {
      systemGrayColor = [MEMORY[0x29EDC7A00] systemOrangeColor];
    }

    else
    {
      if (v2 != 6)
      {
        goto LABEL_19;
      }

      systemGrayColor = [MEMORY[0x29EDC7A00] systemRedColor];
    }
  }

  else
  {
    if (v2 == 4)
    {
      [MEMORY[0x29EDC7A00] systemBlueColor];
    }

    else
    {
      [MEMORY[0x29EDC7A00] systemYellowColor];
    }
    systemGrayColor = ;
  }

  v4 = systemGrayColor;
  if (systemGrayColor)
  {
    v5 = AXColorStringForColor();

    goto LABEL_20;
  }

LABEL_19:
  v5 = accessibilityLocalizedString(@"tag.no.color");
LABEL_20:

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(DOCTagCheckableDotViewAccessibility *)self safeBoolForKey:@"checked"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

@end