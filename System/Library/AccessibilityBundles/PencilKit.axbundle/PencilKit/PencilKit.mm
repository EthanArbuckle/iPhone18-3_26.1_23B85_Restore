id accessibilityPencilKitLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2A2275E70 table:@"AccessibilityPencilKit"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id accessibilityNameForInkIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x29EDBB9C8]])
  {
    v2 = @"pen.tool";
LABEL_15:
    v3 = accessibilityPencilKitLocalizedString(v2);
    goto LABEL_16;
  }

  if ([v1 isEqualToString:*MEMORY[0x29EDBB9D0]])
  {
    v2 = @"pencil.tool";
    goto LABEL_15;
  }

  if ([v1 isEqualToString:*MEMORY[0x29EDBB9B8]])
  {
    v2 = @"marker.tool";
    goto LABEL_15;
  }

  if ([v1 isEqualToString:*MEMORY[0x29EDBB9A8]])
  {
    v2 = @"eraser.tool";
    goto LABEL_15;
  }

  if ([v1 isEqualToString:*MEMORY[0x29EDBB9C0]])
  {
    v2 = @"object.eraser.tool";
    goto LABEL_15;
  }

  if ([v1 isEqualToString:*MEMORY[0x29EDBB9B0]])
  {
    v2 = @"lasso.tool";
    goto LABEL_15;
  }

  if ([v1 isEqualToString:*MEMORY[0x29EDBB9F0]])
  {
    v2 = @"ruler.tool";
    goto LABEL_15;
  }

  v3 = 0;
LABEL_16:

  return v3;
}

id accessibilityPencilKitNameForWeight(double a1)
{
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  v1 = llround((fmax(a1, -1.0) + 1.0) * 0.5 * 4.0);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = @"tool.weight.verylight";
      goto LABEL_14;
    }

    if (v1 == 1)
    {
      v2 = @"tool.weight.light";
      goto LABEL_14;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        v2 = @"tool.weight.medium";
        goto LABEL_14;
      case 3:
        v2 = @"tool.weight.heavy";
        goto LABEL_14;
      case 4:
        v2 = @"tool.weight.veryheavy";
LABEL_14:
        v3 = accessibilityPencilKitLocalizedString(v2);
        goto LABEL_15;
    }
  }

  _AXAssert();
  v3 = 0;
LABEL_15:

  return v3;
}

void sub_29C0F3D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}