@interface AKAnnotationThemePink
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AKAnnotationThemePink

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
      v11[2] = sub_23F402C64;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AE50 != -1)
      {
        dispatch_once(&qword_27E39AE50, v11);
      }

      v5 = &qword_27E39AE58;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F402BFC;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AE40 != -1)
      {
        dispatch_once(&qword_27E39AE40, v13);
      }

      v5 = &qword_27E39AE48;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F402CCC;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AE60 != -1)
        {
          dispatch_once(&qword_27E39AE60, block);
        }

        v5 = &qword_27E39AE68;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F402D34;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AE70 != -1)
        {
          dispatch_once(&qword_27E39AE70, v7);
        }

        v5 = &qword_27E39AE78;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F402B94;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AE30 != -1)
        {
          dispatch_once(&qword_27E39AE30, v15);
        }

        v5 = &qword_27E39AE38;
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
      v11[2] = sub_23F40315C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AEA0 != -1)
      {
        dispatch_once(&qword_27E39AEA0, v11);
      }

      v5 = &qword_27E39AEA8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F4030F4;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AE90 != -1)
      {
        dispatch_once(&qword_27E39AE90, v13);
      }

      v5 = &qword_27E39AE98;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4031C4;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AEB0 != -1)
        {
          dispatch_once(&qword_27E39AEB0, block);
        }

        v5 = &qword_27E39AEB8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F40322C;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AEC0 != -1)
        {
          dispatch_once(&qword_27E39AEC0, v7);
        }

        v5 = &qword_27E39AEC8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F40308C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AE80 != -1)
        {
          dispatch_once(&qword_27E39AE80, v15);
        }

        v5 = &qword_27E39AE88;
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
      v11[2] = sub_23F403654;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AEF0 != -1)
      {
        dispatch_once(&qword_27E39AEF0, v11);
      }

      v5 = &qword_27E39AEF8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F4035EC;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AEE0 != -1)
      {
        dispatch_once(&qword_27E39AEE0, v13);
      }

      v5 = &qword_27E39AEE8;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4036BC;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AF00 != -1)
        {
          dispatch_once(&qword_27E39AF00, block);
        }

        v5 = &qword_27E39AF08;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F403724;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AF10 != -1)
        {
          dispatch_once(&qword_27E39AF10, v7);
        }

        v5 = &qword_27E39AF18;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F403584;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AED0 != -1)
        {
          dispatch_once(&qword_27E39AED0, v15);
        }

        v5 = &qword_27E39AED8;
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
      v11[2] = sub_23F403B4C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AF40 != -1)
      {
        dispatch_once(&qword_27E39AF40, v11);
      }

      v5 = &qword_27E39AF48;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F403AE4;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AF30 != -1)
      {
        dispatch_once(&qword_27E39AF30, v13);
      }

      v5 = &qword_27E39AF38;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F403BB4;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AF50 != -1)
        {
          dispatch_once(&qword_27E39AF50, block);
        }

        v5 = &qword_27E39AF58;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F403C1C;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AF60 != -1)
        {
          dispatch_once(&qword_27E39AF60, v7);
        }

        v5 = &qword_27E39AF68;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F403A7C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AF20 != -1)
        {
          dispatch_once(&qword_27E39AF20, v15);
        }

        v5 = &qword_27E39AF28;
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
      v11[2] = sub_23F404044;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AF90 != -1)
      {
        dispatch_once(&qword_27E39AF90, v11);
      }

      v5 = &qword_27E39AF98;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F403FDC;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AF80 != -1)
      {
        dispatch_once(&qword_27E39AF80, v13);
      }

      v5 = &qword_27E39AF88;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4040AC;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AFA0 != -1)
        {
          dispatch_once(&qword_27E39AFA0, block);
        }

        v5 = &qword_27E39AFA8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F404114;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AFB0 != -1)
        {
          dispatch_once(&qword_27E39AFB0, v7);
        }

        v5 = &qword_27E39AFB8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F403F74;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AF70 != -1)
        {
          dispatch_once(&qword_27E39AF70, v15);
        }

        v5 = &qword_27E39AF78;
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
      v11[2] = sub_23F40453C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AFE0 != -1)
      {
        dispatch_once(&qword_27E39AFE0, v11);
      }

      v5 = &qword_27E39AFE8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F4044D4;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AFD0 != -1)
      {
        dispatch_once(&qword_27E39AFD0, v13);
      }

      v5 = &qword_27E39AFD8;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4045A4;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AFF0 != -1)
        {
          dispatch_once(&qword_27E39AFF0, block);
        }

        v5 = &qword_27E39AFF8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F40460C;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39B000 != -1)
        {
          dispatch_once(&qword_27E39B000, v7);
        }

        v5 = &qword_27E39B008;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F40446C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AFC0 != -1)
        {
          dispatch_once(&qword_27E39AFC0, v15);
        }

        v5 = &qword_27E39AFC8;
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
      v11[2] = sub_23F404A34;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39B030 != -1)
      {
        dispatch_once(&qword_27E39B030, v11);
      }

      v5 = &qword_27E39B038;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F4049CC;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39B020 != -1)
      {
        dispatch_once(&qword_27E39B020, v13);
      }

      v5 = &qword_27E39B028;
    }
  }

  else
  {
    switch(pageTheme)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F404A9C;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39B040 != -1)
        {
          dispatch_once(&qword_27E39B040, block);
        }

        v5 = &qword_27E39B048;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F404B04;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39B050 != -1)
        {
          dispatch_once(&qword_27E39B050, v7);
        }

        v5 = &qword_27E39B058;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F404964;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39B010 != -1)
        {
          dispatch_once(&qword_27E39B010, v15);
        }

        v5 = &qword_27E39B018;
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
  block[2] = sub_23F404BFC;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39B060 != -1)
  {
    dispatch_once(&qword_27E39B060, block);
  }

  return byte_27E39B068;
}

@end