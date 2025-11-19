id accessibilityCameraEditKitD2xLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityCameraEditKitD2xLocalizedString_axBundle;
  if (accessibilityCameraEditKitD2xLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityCameraEditKitD2xLocalizedString_axBundle, accessibilityCameraEditKitD2xLocalizedString_axBundle = v3, v4, (v2 = accessibilityCameraEditKitD2xLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A213AF88 table:@"CameraEditKitAccessibility-d2x"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityCameraEditKitV2LocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityCameraEditKitV2LocalizedString_axBundle;
  if (accessibilityCameraEditKitV2LocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityCameraEditKitV2LocalizedString_axBundle, accessibilityCameraEditKitV2LocalizedString_axBundle = v3, v4, (v2 = accessibilityCameraEditKitV2LocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A213AF88 table:@"CameraEditKitAccessibility-D94"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double AXScaledSliderValues(double a1, double a2, double a3, double a4)
{
  v4 = a4 == a2 || a4 == a3;
  if (v4 || ((v5 = vabdd_f64(a4, a2), v6 = vabdd_f64(a3, a4), a4 + a4 == a3) ? (v7 = v5 == v6) : (v7 = 0), v7))
  {
    if (a3 > a2)
    {
      return (a1 - a2) / (a3 - a2) + 0.0;
    }

    return 2.22507386e-308;
  }

  v8 = 0.0;
  if (a4 <= a2)
  {
    return v8;
  }

  if (a3 <= a2)
  {
    return 2.22507386e-308;
  }

  if (a1 >= a4)
  {
    if (a3 > a4)
    {
      v9 = (a1 - a4) / (a3 - a4);
      v10 = 0.0;
      goto LABEL_20;
    }
  }

  else if (a4 > a2)
  {
    v9 = (a1 - a2) / (a4 - a2);
    v10 = -1.0;
LABEL_20:
    v12 = v9 + v10;
    goto LABEL_22;
  }

  v12 = 2.22507386e-308;
LABEL_22:
  if (round(v12 * 100.0) / 100.0 == 0.0)
  {
    return 0.0;
  }

  else
  {
    return v12;
  }
}

double AXScaleSymmetricSliderValuesBetween(double a1, double a2, double a3, double a4, double a5)
{
  if (a3 <= a2)
  {
    return 2.22507386e-308;
  }

  else
  {
    return (a1 - a2) * (a5 - a4) / (a3 - a2) + a4;
  }
}

double AXScaleAsymmetricSliderValuesBetween(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a4 <= a2)
  {
    return 2.22507386e-308;
  }

  if (a1 >= a3)
  {
    if (a4 > a3)
    {
      result = (a1 - a3) * (a7 - a6) / (a4 - a3) + a6;
      goto LABEL_9;
    }
  }

  else if (a3 > a2)
  {
    result = (a1 - a2) * (a6 - a5) / (a3 - a2) + a5;
    goto LABEL_9;
  }

  result = 2.22507386e-308;
LABEL_9:
  if (round(result * 100.0) / 100.0 == 0.0)
  {
    return 0.0;
  }

  return result;
}

void sub_29BC53EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}