@interface AKAnnotationThemeUnderline
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AKAnnotationThemeUnderline

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
      v11[2] = sub_23F405034;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39B090 != -1)
      {
        dispatch_once(&qword_27E39B090, v11);
      }

      v5 = &qword_27E39B098;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F404FCC;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39B080 != -1)
      {
        dispatch_once(&qword_27E39B080, v13);
      }

      v5 = &qword_27E39B088;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F40509C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39B0A0 != -1)
        {
          dispatch_once(&qword_27E39B0A0, block);
        }

        v5 = &qword_27E39B0A8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F405104;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39B0B0 != -1)
        {
          dispatch_once(&qword_27E39B0B0, v7);
        }

        v5 = &qword_27E39B0B8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F404F64;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39B070 != -1)
        {
          dispatch_once(&qword_27E39B070, v15);
        }

        v5 = &qword_27E39B078;
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
      v11[2] = sub_23F40552C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39B0E0 != -1)
      {
        dispatch_once(&qword_27E39B0E0, v11);
      }

      v5 = &qword_27E39B0E8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F4054C4;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39B0D0 != -1)
      {
        dispatch_once(&qword_27E39B0D0, v13);
      }

      v5 = &qword_27E39B0D8;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F405594;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39B0F0 != -1)
        {
          dispatch_once(&qword_27E39B0F0, block);
        }

        v5 = &qword_27E39B0F8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F4055FC;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39B100 != -1)
        {
          dispatch_once(&qword_27E39B100, v7);
        }

        v5 = &qword_27E39B108;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F40545C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39B0C0 != -1)
        {
          dispatch_once(&qword_27E39B0C0, v15);
        }

        v5 = &qword_27E39B0C8;
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
      v11[2] = sub_23F405A24;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39B130 != -1)
      {
        dispatch_once(&qword_27E39B130, v11);
      }

      v5 = &qword_27E39B138;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F4059BC;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39B120 != -1)
      {
        dispatch_once(&qword_27E39B120, v13);
      }

      v5 = &qword_27E39B128;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F405A8C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39B140 != -1)
        {
          dispatch_once(&qword_27E39B140, block);
        }

        v5 = &qword_27E39B148;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F405AF4;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39B150 != -1)
        {
          dispatch_once(&qword_27E39B150, v7);
        }

        v5 = &qword_27E39B158;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F405954;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39B110 != -1)
        {
          dispatch_once(&qword_27E39B110, v15);
        }

        v5 = &qword_27E39B118;
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
      v11[2] = sub_23F405F1C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39B180 != -1)
      {
        dispatch_once(&qword_27E39B180, v11);
      }

      v5 = &qword_27E39B188;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F405EB4;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39B170 != -1)
      {
        dispatch_once(&qword_27E39B170, v13);
      }

      v5 = &qword_27E39B178;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F405F84;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39B190 != -1)
        {
          dispatch_once(&qword_27E39B190, block);
        }

        v5 = &qword_27E39B198;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F405FEC;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39B1A0 != -1)
        {
          dispatch_once(&qword_27E39B1A0, v7);
        }

        v5 = &qword_27E39B1A8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F405E4C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39B160 != -1)
        {
          dispatch_once(&qword_27E39B160, v15);
        }

        v5 = &qword_27E39B168;
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
      v11[2] = sub_23F406414;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39B1D0 != -1)
      {
        dispatch_once(&qword_27E39B1D0, v11);
      }

      v5 = &qword_27E39B1D8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F4063AC;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39B1C0 != -1)
      {
        dispatch_once(&qword_27E39B1C0, v13);
      }

      v5 = &qword_27E39B1C8;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F40647C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39B1E0 != -1)
        {
          dispatch_once(&qword_27E39B1E0, block);
        }

        v5 = &qword_27E39B1E8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F4064E4;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39B1F0 != -1)
        {
          dispatch_once(&qword_27E39B1F0, v7);
        }

        v5 = &qword_27E39B1F8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F406344;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39B1B0 != -1)
        {
          dispatch_once(&qword_27E39B1B0, v15);
        }

        v5 = &qword_27E39B1B8;
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
      v11[2] = sub_23F40690C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39B220 != -1)
      {
        dispatch_once(&qword_27E39B220, v11);
      }

      v5 = &qword_27E39B228;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F4068A4;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39B210 != -1)
      {
        dispatch_once(&qword_27E39B210, v13);
      }

      v5 = &qword_27E39B218;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F406974;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39B230 != -1)
        {
          dispatch_once(&qword_27E39B230, block);
        }

        v5 = &qword_27E39B238;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F4069DC;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39B240 != -1)
        {
          dispatch_once(&qword_27E39B240, v7);
        }

        v5 = &qword_27E39B248;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F40683C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39B200 != -1)
        {
          dispatch_once(&qword_27E39B200, v15);
        }

        v5 = &qword_27E39B208;
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
      v11[2] = sub_23F406E04;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39B270 != -1)
      {
        dispatch_once(&qword_27E39B270, v11);
      }

      v5 = &qword_27E39B278;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F406D9C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39B260 != -1)
      {
        dispatch_once(&qword_27E39B260, v13);
      }

      v5 = &qword_27E39B268;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F406E6C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39B280 != -1)
        {
          dispatch_once(&qword_27E39B280, block);
        }

        v5 = &qword_27E39B288;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F406ED4;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39B290 != -1)
        {
          dispatch_once(&qword_27E39B290, v7);
        }

        v5 = &qword_27E39B298;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F406D34;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39B250 != -1)
        {
          dispatch_once(&qword_27E39B250, v15);
        }

        v5 = &qword_27E39B258;
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
  block[2] = sub_23F406FCC;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39B2A0 != -1)
  {
    dispatch_once(&qword_27E39B2A0, block);
  }

  return byte_27E39B2A8;
}

@end