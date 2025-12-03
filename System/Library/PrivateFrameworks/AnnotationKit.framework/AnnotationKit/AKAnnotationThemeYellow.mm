@interface AKAnnotationThemeYellow
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AKAnnotationThemeYellow

- (id)noteFillColor
{
  pageTheme = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (pageTheme <= 1)
  {
    if (pageTheme)
    {
      if (pageTheme != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FE4C4;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39A9D0 != -1)
      {
        dispatch_once(&qword_27E39A9D0, v11);
      }

      v5 = &qword_27E39A9D8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FE45C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39A9C0 != -1)
      {
        dispatch_once(&qword_27E39A9C0, v13);
      }

      v5 = &qword_27E39A9C8;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FE52C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39A9E0 != -1)
        {
          dispatch_once(&qword_27E39A9E0, block);
        }

        v5 = &qword_27E39A9E8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FE594;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39A9F0 != -1)
        {
          dispatch_once(&qword_27E39A9F0, v7);
        }

        v5 = &qword_27E39A9F8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FE3F4;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39A9B0 != -1)
        {
          dispatch_once(&qword_27E39A9B0, v15);
        }

        v5 = &qword_27E39A9B8;
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
  pageTheme = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (pageTheme <= 1)
  {
    if (pageTheme)
    {
      if (pageTheme != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FE9BC;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AA20 != -1)
      {
        dispatch_once(&qword_27E39AA20, v11);
      }

      v5 = &qword_27E39AA28;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FE954;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AA10 != -1)
      {
        dispatch_once(&qword_27E39AA10, v13);
      }

      v5 = &qword_27E39AA18;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FEA24;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AA30 != -1)
        {
          dispatch_once(&qword_27E39AA30, block);
        }

        v5 = &qword_27E39AA38;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FEA8C;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AA40 != -1)
        {
          dispatch_once(&qword_27E39AA40, v7);
        }

        v5 = &qword_27E39AA48;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FE8EC;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AA00 != -1)
        {
          dispatch_once(&qword_27E39AA00, v15);
        }

        v5 = &qword_27E39AA08;
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
  pageTheme = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (pageTheme <= 1)
  {
    if (pageTheme)
    {
      if (pageTheme != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FEEB4;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AA70 != -1)
      {
        dispatch_once(&qword_27E39AA70, v11);
      }

      v5 = &qword_27E39AA78;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FEE4C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AA60 != -1)
      {
        dispatch_once(&qword_27E39AA60, v13);
      }

      v5 = &qword_27E39AA68;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FEF1C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AA80 != -1)
        {
          dispatch_once(&qword_27E39AA80, block);
        }

        v5 = &qword_27E39AA88;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FEF84;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AA90 != -1)
        {
          dispatch_once(&qword_27E39AA90, v7);
        }

        v5 = &qword_27E39AA98;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FEDE4;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AA50 != -1)
        {
          dispatch_once(&qword_27E39AA50, v15);
        }

        v5 = &qword_27E39AA58;
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
  pageTheme = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (pageTheme <= 1)
  {
    if (pageTheme)
    {
      if (pageTheme != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FF3AC;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AAC0 != -1)
      {
        dispatch_once(&qword_27E39AAC0, v11);
      }

      v5 = &qword_27E39AAC8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FF344;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AAB0 != -1)
      {
        dispatch_once(&qword_27E39AAB0, v13);
      }

      v5 = &qword_27E39AAB8;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FF414;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AAD0 != -1)
        {
          dispatch_once(&qword_27E39AAD0, block);
        }

        v5 = &qword_27E39AAD8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FF47C;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AAE0 != -1)
        {
          dispatch_once(&qword_27E39AAE0, v7);
        }

        v5 = &qword_27E39AAE8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FF2DC;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AAA0 != -1)
        {
          dispatch_once(&qword_27E39AAA0, v15);
        }

        v5 = &qword_27E39AAA8;
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
  pageTheme = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (pageTheme <= 1)
  {
    if (pageTheme)
    {
      if (pageTheme != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FF8A4;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AB10 != -1)
      {
        dispatch_once(&qword_27E39AB10, v11);
      }

      v5 = &qword_27E39AB18;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FF83C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AB00 != -1)
      {
        dispatch_once(&qword_27E39AB00, v13);
      }

      v5 = &qword_27E39AB08;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FF90C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AB20 != -1)
        {
          dispatch_once(&qword_27E39AB20, block);
        }

        v5 = &qword_27E39AB28;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FF974;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AB30 != -1)
        {
          dispatch_once(&qword_27E39AB30, v7);
        }

        v5 = &qword_27E39AB38;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FF7D4;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AAF0 != -1)
        {
          dispatch_once(&qword_27E39AAF0, v15);
        }

        v5 = &qword_27E39AAF8;
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
  pageTheme = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (pageTheme <= 1)
  {
    if (pageTheme)
    {
      if (pageTheme != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F3FFD9C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AB60 != -1)
      {
        dispatch_once(&qword_27E39AB60, v11);
      }

      v5 = &qword_27E39AB68;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F3FFD34;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AB50 != -1)
      {
        dispatch_once(&qword_27E39AB50, v13);
      }

      v5 = &qword_27E39AB58;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F3FFE04;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AB70 != -1)
        {
          dispatch_once(&qword_27E39AB70, block);
        }

        v5 = &qword_27E39AB78;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F3FFE6C;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AB80 != -1)
        {
          dispatch_once(&qword_27E39AB80, v7);
        }

        v5 = &qword_27E39AB88;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F3FFCCC;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AB40 != -1)
        {
          dispatch_once(&qword_27E39AB40, v15);
        }

        v5 = &qword_27E39AB48;
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
  pageTheme = [(AKAnnotationTheme *)self pageTheme];
  v4 = 0;
  if (pageTheme <= 1)
  {
    if (pageTheme)
    {
      if (pageTheme != 1)
      {
        goto LABEL_23;
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_23F400294;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39ABB0 != -1)
      {
        dispatch_once(&qword_27E39ABB0, v11);
      }

      v5 = &qword_27E39ABB8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F40022C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39ABA0 != -1)
      {
        dispatch_once(&qword_27E39ABA0, v13);
      }

      v5 = &qword_27E39ABA8;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4002FC;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39ABC0 != -1)
        {
          dispatch_once(&qword_27E39ABC0, block);
        }

        v5 = &qword_27E39ABC8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F400364;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39ABD0 != -1)
        {
          dispatch_once(&qword_27E39ABD0, v7);
        }

        v5 = &qword_27E39ABD8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F4001C4;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AB90 != -1)
        {
          dispatch_once(&qword_27E39AB90, v15);
        }

        v5 = &qword_27E39AB98;
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
  block[2] = sub_23F40045C;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39ABE0 != -1)
  {
    dispatch_once(&qword_27E39ABE0, block);
  }

  return byte_27E39ABE8;
}

@end