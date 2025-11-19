@interface UIScreen
- (int64_t)_music_sizeClass;
@end

@implementation UIScreen

- (int64_t)_music_sizeClass
{
  if (_music_sizeClass_sOnceToken != -1)
  {
    [UIScreen(ScreenSizeClass) _music_sizeClass];
  }

  return _music_sizeClass_screenSizeClass;
}

void __45__UIScreen_ScreenSizeClass___music_sizeClass__block_invoke(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;

  MGGetFloat32Answer();
  v7 = v6;
  v8 = (v3 << 17) | (2 * v5);
  if (v6 > 0.0)
  {
    ++v8;
  }

  if (v8 <= 153359304)
  {
    if (v8 <= 100665343)
    {
      v11 = 1;
      if (v8 > 83888351)
      {
        if (v8 == 83888352)
        {
          goto LABEL_55;
        }

        if (v8 == 98306668)
        {
          v11 = 2;
          goto LABEL_55;
        }
      }

      else if (v8 == 41944000 || v8 == 83888000)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    if (v8 <= 141561599)
    {
      if (v8 == 100665344)
      {
        goto LABEL_49;
      }

      v12 = 108531201;
    }

    else
    {
      if (v8 == 141561600)
      {
        v11 = 4;
        goto LABEL_55;
      }

      if (v8 == 141562441)
      {
        v11 = 10;
        goto LABEL_55;
      }

      v12 = 147460873;
    }

    if (v8 != v12)
    {
      goto LABEL_54;
    }

LABEL_43:
    v11 = 3;
    goto LABEL_55;
  }

  if (v8 > 201330687)
  {
    if (v8 > 218632872)
    {
      switch(v8)
      {
        case 218632873:
          v11 = 7;
          goto LABEL_55;
        case 268440920:
          v11 = 8;
          goto LABEL_55;
        case 268440921:
          v11 = 9;
          goto LABEL_55;
      }

      goto LABEL_54;
    }

    if (v8 != 201330688 && v8 != 218632544)
    {
      goto LABEL_54;
    }

LABEL_49:
    v11 = 6;
    goto LABEL_55;
  }

  if (v8 > 162796800)
  {
    if (v8 == 162796801 || v8 == 168302005 || v8 == 169088473)
    {
      v11 = 5;
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8 == 153359305 || v8 == 154539001)
  {
    goto LABEL_43;
  }

LABEL_54:
  v11 = 0;
LABEL_55:
  _music_sizeClass_screenSizeClass = v11;
  v16 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218752;
    v18 = v5;
    v19 = 2048;
    v20 = v3;
    v21 = 1024;
    v22 = v7 > 0.0;
    v23 = 2048;
    v24 = _music_sizeClass_screenSizeClass;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Reporting screen size as %f x %f with rounded corners %d which resolves to size class %ld", &v17, 0x26u);
  }
}

@end