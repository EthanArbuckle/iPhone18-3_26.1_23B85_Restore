@interface AKAnnotationThemeGreen
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AKAnnotationThemeGreen

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
      v11[2] = sub_23F3F9D24;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A550 != -1)
      {
        dispatch_once(&qword_27E39A550, v11);
      }

      v5 = &qword_27E39A558;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3F9CBC;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A540 != -1)
      {
        dispatch_once(&qword_27E39A540, v13);
      }

      v5 = &qword_27E39A548;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3F9D8C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A560 != -1)
        {
          dispatch_once(&qword_27E39A560, block);
        }

        v5 = &qword_27E39A568;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3F9DF4;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A570 != -1)
        {
          dispatch_once(&qword_27E39A570, v7);
        }

        v5 = &qword_27E39A578;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3F9C54;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A530 != -1)
        {
          dispatch_once(&qword_27E39A530, v15);
        }

        v5 = &qword_27E39A538;
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
      v11[2] = sub_23F3FA21C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A5A0 != -1)
      {
        dispatch_once(&qword_27E39A5A0, v11);
      }

      v5 = &qword_27E39A5A8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FA1B4;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A590 != -1)
      {
        dispatch_once(&qword_27E39A590, v13);
      }

      v5 = &qword_27E39A598;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FA284;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A5B0 != -1)
        {
          dispatch_once(&qword_27E39A5B0, block);
        }

        v5 = &qword_27E39A5B8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FA2EC;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A5C0 != -1)
        {
          dispatch_once(&qword_27E39A5C0, v7);
        }

        v5 = &qword_27E39A5C8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FA14C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A580 != -1)
        {
          dispatch_once(&qword_27E39A580, v15);
        }

        v5 = &qword_27E39A588;
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
      v11[2] = sub_23F3FA714;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A5F0 != -1)
      {
        dispatch_once(&qword_27E39A5F0, v11);
      }

      v5 = &qword_27E39A5F8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FA6AC;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A5E0 != -1)
      {
        dispatch_once(&qword_27E39A5E0, v13);
      }

      v5 = &qword_27E39A5E8;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FA77C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A600 != -1)
        {
          dispatch_once(&qword_27E39A600, block);
        }

        v5 = &qword_27E39A608;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FA7E4;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A610 != -1)
        {
          dispatch_once(&qword_27E39A610, v7);
        }

        v5 = &qword_27E39A618;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FA644;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A5D0 != -1)
        {
          dispatch_once(&qword_27E39A5D0, v15);
        }

        v5 = &qword_27E39A5D8;
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
      v11[2] = sub_23F3FAC0C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A640 != -1)
      {
        dispatch_once(&qword_27E39A640, v11);
      }

      v5 = &qword_27E39A648;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FABA4;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A630 != -1)
      {
        dispatch_once(&qword_27E39A630, v13);
      }

      v5 = &qword_27E39A638;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FAC74;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A650 != -1)
        {
          dispatch_once(&qword_27E39A650, block);
        }

        v5 = &qword_27E39A658;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FACDC;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A660 != -1)
        {
          dispatch_once(&qword_27E39A660, v7);
        }

        v5 = &qword_27E39A668;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FAB3C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A620 != -1)
        {
          dispatch_once(&qword_27E39A620, v15);
        }

        v5 = &qword_27E39A628;
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
      v11[2] = sub_23F3FB104;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A690 != -1)
      {
        dispatch_once(&qword_27E39A690, v11);
      }

      v5 = &qword_27E39A698;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FB09C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A680 != -1)
      {
        dispatch_once(&qword_27E39A680, v13);
      }

      v5 = &qword_27E39A688;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FB16C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A6A0 != -1)
        {
          dispatch_once(&qword_27E39A6A0, block);
        }

        v5 = &qword_27E39A6A8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FB1D4;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A6B0 != -1)
        {
          dispatch_once(&qword_27E39A6B0, v7);
        }

        v5 = &qword_27E39A6B8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FB034;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A670 != -1)
        {
          dispatch_once(&qword_27E39A670, v15);
        }

        v5 = &qword_27E39A678;
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
      v11[2] = sub_23F3FB5FC;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A6E0 != -1)
      {
        dispatch_once(&qword_27E39A6E0, v11);
      }

      v5 = &qword_27E39A6E8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FB594;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A6D0 != -1)
      {
        dispatch_once(&qword_27E39A6D0, v13);
      }

      v5 = &qword_27E39A6D8;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FB664;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A6F0 != -1)
        {
          dispatch_once(&qword_27E39A6F0, block);
        }

        v5 = &qword_27E39A6F8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FB6CC;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A700 != -1)
        {
          dispatch_once(&qword_27E39A700, v7);
        }

        v5 = &qword_27E39A708;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FB52C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A6C0 != -1)
        {
          dispatch_once(&qword_27E39A6C0, v15);
        }

        v5 = &qword_27E39A6C8;
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
      v11[2] = sub_23F3FBAF4;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A730 != -1)
      {
        dispatch_once(&qword_27E39A730, v11);
      }

      v5 = &qword_27E39A738;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FBA8C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A720 != -1)
      {
        dispatch_once(&qword_27E39A720, v13);
      }

      v5 = &qword_27E39A728;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FBB5C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A740 != -1)
        {
          dispatch_once(&qword_27E39A740, block);
        }

        v5 = &qword_27E39A748;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FBBC4;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A750 != -1)
        {
          dispatch_once(&qword_27E39A750, v7);
        }

        v5 = &qword_27E39A758;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FBA24;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A710 != -1)
        {
          dispatch_once(&qword_27E39A710, v15);
        }

        v5 = &qword_27E39A718;
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
  block[2] = sub_23F3FBCBC;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39A760 != -1)
  {
    dispatch_once(&qword_27E39A760, block);
  }

  return byte_27E39A768;
}

@end