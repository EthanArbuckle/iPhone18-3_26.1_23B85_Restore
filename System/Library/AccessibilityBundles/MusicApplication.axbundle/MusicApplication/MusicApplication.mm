void sub_29C066EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

id accessibilityMusicLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMusicLocalizedString_axBundle;
  if (accessibilityMusicLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityMusicLocalizedString_axBundle, accessibilityMusicLocalizedString_axBundle = v3, v4, (v2 = accessibilityMusicLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A2250960 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityOasisMusicLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityOasisMusicLocalizedString_axBundle;
  if (accessibilityOasisMusicLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityOasisMusicLocalizedString_axBundle, accessibilityOasisMusicLocalizedString_axBundle = v3, v4, (v2 = accessibilityOasisMusicLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A2250960 table:@"Accessibility-AQ"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void speakReorderItems(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 numberOfItemsInSection:{objc_msgSend(v7, "section")}];
  if (v8 >= 2)
  {
    v9 = v8;
    objc_opt_class();
    v10 = [v5 cellForItemAtIndexPath:v6];
    v11 = __UIAccessibilityCastAsClass();

    if (!v11)
    {
LABEL_9:

      goto LABEL_10;
    }

    if ([v7 row] == v9 - 1)
    {
      objc_opt_class();
      v12 = [MEMORY[0x29EDB9FE0] indexPathForRow:objc_msgSend(v7 inSection:{"row") - 1, objc_msgSend(v7, "section")}];
      v13 = [v5 cellForItemAtIndexPath:v12];
      v14 = __UIAccessibilityCastAsClass();

      v15 = @"collection.view.reorder.after";
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      objc_opt_class();
      v16 = [MEMORY[0x29EDB9FE0] indexPathForRow:objc_msgSend(v7 inSection:{"row") + 1, objc_msgSend(v7, "section")}];
      v17 = [v5 cellForItemAtIndexPath:v16];
      v14 = __UIAccessibilityCastAsClass();

      v15 = @"collection.view.reorder.before";
      if (!v14)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v18 = [v14 accessibilityLabel];
    v19 = MEMORY[0x29EDBA0F8];
    v20 = accessibilityMusicLocalizedString(v15);
    v21 = [v19 stringWithFormat:v20, v18];
    UIAccessibilitySpeak();

    goto LABEL_8;
  }

LABEL_10:
}

void speakReorderItemsTableView(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 numberOfRowsInSection:{objc_msgSend(v7, "section")}];
  if (v8 >= 2)
  {
    v9 = v8;
    objc_opt_class();
    v10 = [v5 cellForRowAtIndexPath:v6];
    v11 = __UIAccessibilityCastAsClass();

    if (!v11)
    {
LABEL_9:

      goto LABEL_10;
    }

    if ([v7 row] == v9 - 1)
    {
      objc_opt_class();
      v12 = [MEMORY[0x29EDB9FE0] indexPathForRow:objc_msgSend(v7 inSection:{"row") - 1, objc_msgSend(v7, "section")}];
      v13 = [v5 cellForRowAtIndexPath:v12];
      v14 = __UIAccessibilityCastAsClass();

      v15 = @"collection.view.reorder.after";
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      objc_opt_class();
      v16 = [MEMORY[0x29EDB9FE0] indexPathForRow:objc_msgSend(v7 inSection:{"row") + 1, objc_msgSend(v7, "section")}];
      v17 = [v5 cellForRowAtIndexPath:v16];
      v14 = __UIAccessibilityCastAsClass();

      v15 = @"collection.view.reorder.before";
      if (!v14)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v18 = [v14 accessibilityLabel];
    v19 = MEMORY[0x29EDBA0F8];
    v20 = accessibilityMusicLocalizedString(v15);
    v21 = [v19 stringWithFormat:v20, v18];
    UIAccessibilitySpeak();

    goto LABEL_8;
  }

LABEL_10:
}

id accessibilityStripUnfavorableCharacters(void *a1)
{
  v6 = 183;
  v1 = MEMORY[0x29EDBA0F8];
  v2 = a1;
  v3 = [v1 stringWithCharacters:&v6 length:1];
  v4 = [v2 stringByReplacingOccurrencesOfString:v3 withString:{@", "}];

  return v4;
}

void sub_29C0716EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C0722D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v34 - 120));
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

void sub_29C074E38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}