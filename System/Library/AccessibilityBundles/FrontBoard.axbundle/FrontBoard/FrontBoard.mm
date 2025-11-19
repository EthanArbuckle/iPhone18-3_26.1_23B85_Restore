id localizedString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedStringForKey:v4 value:&stru_2A21A3BF8 table:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}