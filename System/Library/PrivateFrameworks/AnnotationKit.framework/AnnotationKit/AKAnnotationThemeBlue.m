@interface AKAnnotationThemeBlue
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AKAnnotationThemeBlue

- (id)noteFillColor
{
  v3 = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FC0F4;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A790 != -1)
      {
        dispatch_once(&qword_27E39A790, v11);
      }

      v5 = &qword_27E39A798;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FC08C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A780 != -1)
      {
        dispatch_once(&qword_27E39A780, v13);
      }

      v5 = &qword_27E39A788;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FC15C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A7A0 != -1)
        {
          dispatch_once(&qword_27E39A7A0, block);
        }

        v5 = &qword_27E39A7A8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FC1C4;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A7B0 != -1)
        {
          dispatch_once(&qword_27E39A7B0, v7);
        }

        v5 = &qword_27E39A7B8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FC024;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A770 != -1)
        {
          dispatch_once(&qword_27E39A770, v15);
        }

        v5 = &qword_27E39A778;
        break;
      default:
        goto LABEL_23;
    }
  }

  v4 = *v5;
LABEL_23:

  return v4;
}

- (id)noteBorderColor
{
  v3 = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FC5EC;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A7E0 != -1)
      {
        dispatch_once(&qword_27E39A7E0, v11);
      }

      v5 = &qword_27E39A7E8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FC584;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A7D0 != -1)
      {
        dispatch_once(&qword_27E39A7D0, v13);
      }

      v5 = &qword_27E39A7D8;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FC654;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A7F0 != -1)
        {
          dispatch_once(&qword_27E39A7F0, block);
        }

        v5 = &qword_27E39A7F8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FC6BC;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A800 != -1)
        {
          dispatch_once(&qword_27E39A800, v7);
        }

        v5 = &qword_27E39A808;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FC51C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A7C0 != -1)
        {
          dispatch_once(&qword_27E39A7C0, v15);
        }

        v5 = &qword_27E39A7C8;
        break;
      default:
        goto LABEL_23;
    }
  }

  v4 = *v5;
LABEL_23:

  return v4;
}

- (id)noteTextColor
{
  v3 = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FCAE4;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A830 != -1)
      {
        dispatch_once(&qword_27E39A830, v11);
      }

      v5 = &qword_27E39A838;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FCA7C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A820 != -1)
      {
        dispatch_once(&qword_27E39A820, v13);
      }

      v5 = &qword_27E39A828;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FCB4C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A840 != -1)
        {
          dispatch_once(&qword_27E39A840, block);
        }

        v5 = &qword_27E39A848;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FCBB4;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A850 != -1)
        {
          dispatch_once(&qword_27E39A850, v7);
        }

        v5 = &qword_27E39A858;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FCA14;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A810 != -1)
        {
          dispatch_once(&qword_27E39A810, v15);
        }

        v5 = &qword_27E39A818;
        break;
      default:
        goto LABEL_23;
    }
  }

  v4 = *v5;
LABEL_23:

  return v4;
}

- (id)highlightColor
{
  v3 = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FCFDC;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A880 != -1)
      {
        dispatch_once(&qword_27E39A880, v11);
      }

      v5 = &qword_27E39A888;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FCF74;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A870 != -1)
      {
        dispatch_once(&qword_27E39A870, v13);
      }

      v5 = &qword_27E39A878;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FD044;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A890 != -1)
        {
          dispatch_once(&qword_27E39A890, block);
        }

        v5 = &qword_27E39A898;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FD0AC;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A8A0 != -1)
        {
          dispatch_once(&qword_27E39A8A0, v7);
        }

        v5 = &qword_27E39A8A8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FCF0C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A860 != -1)
        {
          dispatch_once(&qword_27E39A860, v15);
        }

        v5 = &qword_27E39A868;
        break;
      default:
        goto LABEL_23;
    }
  }

  v4 = *v5;
LABEL_23:

  return v4;
}

- (id)noteMarkerFillColor
{
  v3 = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FD4D4;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A8D0 != -1)
      {
        dispatch_once(&qword_27E39A8D0, v11);
      }

      v5 = &qword_27E39A8D8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FD46C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A8C0 != -1)
      {
        dispatch_once(&qword_27E39A8C0, v13);
      }

      v5 = &qword_27E39A8C8;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FD53C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A8E0 != -1)
        {
          dispatch_once(&qword_27E39A8E0, block);
        }

        v5 = &qword_27E39A8E8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FD5A4;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A8F0 != -1)
        {
          dispatch_once(&qword_27E39A8F0, v7);
        }

        v5 = &qword_27E39A8F8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FD404;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A8B0 != -1)
        {
          dispatch_once(&qword_27E39A8B0, v15);
        }

        v5 = &qword_27E39A8B8;
        break;
      default:
        goto LABEL_23;
    }
  }

  v4 = *v5;
LABEL_23:

  return v4;
}

- (id)noteMarkerBorderColor
{
  v3 = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FD9CC;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A920 != -1)
      {
        dispatch_once(&qword_27E39A920, v11);
      }

      v5 = &qword_27E39A928;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FD964;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A910 != -1)
      {
        dispatch_once(&qword_27E39A910, v13);
      }

      v5 = &qword_27E39A918;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FDA34;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A930 != -1)
        {
          dispatch_once(&qword_27E39A930, block);
        }

        v5 = &qword_27E39A938;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FDA9C;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A940 != -1)
        {
          dispatch_once(&qword_27E39A940, v7);
        }

        v5 = &qword_27E39A948;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FD8FC;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A900 != -1)
        {
          dispatch_once(&qword_27E39A900, v15);
        }

        v5 = &qword_27E39A908;
        break;
      default:
        goto LABEL_23;
    }
  }

  v4 = *v5;
LABEL_23:

  return v4;
}

- (id)notesSidebarBarColor
{
  v3 = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FDEC4;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A970 != -1)
      {
        dispatch_once(&qword_27E39A970, v11);
      }

      v5 = &qword_27E39A978;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FDE5C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A960 != -1)
      {
        dispatch_once(&qword_27E39A960, v13);
      }

      v5 = &qword_27E39A968;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FDF2C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A980 != -1)
        {
          dispatch_once(&qword_27E39A980, block);
        }

        v5 = &qword_27E39A988;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FDF94;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A990 != -1)
        {
          dispatch_once(&qword_27E39A990, v7);
        }

        v5 = &qword_27E39A998;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FDDF4;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A950 != -1)
        {
          dispatch_once(&qword_27E39A950, v15);
        }

        v5 = &qword_27E39A958;
        break;
      default:
        goto LABEL_23;
    }
  }

  v4 = *v5;
LABEL_23:

  return v4;
}

- (BOOL)isUnderline
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F3FE08C;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39A9A0 != -1)
  {
    dispatch_once(&qword_27E39A9A0, block);
  }

  return byte_27E39A9A8;
}

@end