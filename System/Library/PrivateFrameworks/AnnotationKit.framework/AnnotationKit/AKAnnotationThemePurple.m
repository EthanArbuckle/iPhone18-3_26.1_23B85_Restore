@interface AKAnnotationThemePurple
- (BOOL)isUnderline;
- (id)highlightColor;
- (id)noteBorderColor;
- (id)noteFillColor;
- (id)noteMarkerBorderColor;
- (id)noteMarkerFillColor;
- (id)noteTextColor;
- (id)notesSidebarBarColor;
@end

@implementation AKAnnotationThemePurple

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
      v11[2] = sub_23F400894;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AC10 != -1)
      {
        dispatch_once(&qword_27E39AC10, v11);
      }

      v5 = &qword_27E39AC18;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F40082C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AC00 != -1)
      {
        dispatch_once(&qword_27E39AC00, v13);
      }

      v5 = &qword_27E39AC08;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4008FC;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AC20 != -1)
        {
          dispatch_once(&qword_27E39AC20, block);
        }

        v5 = &qword_27E39AC28;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F400964;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AC30 != -1)
        {
          dispatch_once(&qword_27E39AC30, v7);
        }

        v5 = &qword_27E39AC38;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F4007C4;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39ABF0 != -1)
        {
          dispatch_once(&qword_27E39ABF0, v15);
        }

        v5 = &qword_27E39ABF8;
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
      v11[2] = sub_23F400D8C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AC60 != -1)
      {
        dispatch_once(&qword_27E39AC60, v11);
      }

      v5 = &qword_27E39AC68;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F400D24;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AC50 != -1)
      {
        dispatch_once(&qword_27E39AC50, v13);
      }

      v5 = &qword_27E39AC58;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F400DF4;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AC70 != -1)
        {
          dispatch_once(&qword_27E39AC70, block);
        }

        v5 = &qword_27E39AC78;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F400E5C;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AC80 != -1)
        {
          dispatch_once(&qword_27E39AC80, v7);
        }

        v5 = &qword_27E39AC88;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F400CBC;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AC40 != -1)
        {
          dispatch_once(&qword_27E39AC40, v15);
        }

        v5 = &qword_27E39AC48;
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
      v11[2] = sub_23F401284;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39ACB0 != -1)
      {
        dispatch_once(&qword_27E39ACB0, v11);
      }

      v5 = &qword_27E39ACB8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F40121C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39ACA0 != -1)
      {
        dispatch_once(&qword_27E39ACA0, v13);
      }

      v5 = &qword_27E39ACA8;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4012EC;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39ACC0 != -1)
        {
          dispatch_once(&qword_27E39ACC0, block);
        }

        v5 = &qword_27E39ACC8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F401354;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39ACD0 != -1)
        {
          dispatch_once(&qword_27E39ACD0, v7);
        }

        v5 = &qword_27E39ACD8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F4011B4;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AC90 != -1)
        {
          dispatch_once(&qword_27E39AC90, v15);
        }

        v5 = &qword_27E39AC98;
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
      v11[2] = sub_23F40177C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AD00 != -1)
      {
        dispatch_once(&qword_27E39AD00, v11);
      }

      v5 = &qword_27E39AD08;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F401714;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39ACF0 != -1)
      {
        dispatch_once(&qword_27E39ACF0, v13);
      }

      v5 = &qword_27E39ACF8;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4017E4;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AD10 != -1)
        {
          dispatch_once(&qword_27E39AD10, block);
        }

        v5 = &qword_27E39AD18;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F40184C;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AD20 != -1)
        {
          dispatch_once(&qword_27E39AD20, v7);
        }

        v5 = &qword_27E39AD28;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F4016AC;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39ACE0 != -1)
        {
          dispatch_once(&qword_27E39ACE0, v15);
        }

        v5 = &qword_27E39ACE8;
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
      v11[2] = sub_23F401C74;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39AD50 != -1)
      {
        dispatch_once(&qword_27E39AD50, v11);
      }

      v5 = &qword_27E39AD58;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F401C0C;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AD40 != -1)
      {
        dispatch_once(&qword_27E39AD40, v13);
      }

      v5 = &qword_27E39AD48;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F401CDC;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AD60 != -1)
        {
          dispatch_once(&qword_27E39AD60, block);
        }

        v5 = &qword_27E39AD68;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F401D44;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AD70 != -1)
        {
          dispatch_once(&qword_27E39AD70, v7);
        }

        v5 = &qword_27E39AD78;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F401BA4;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AD30 != -1)
        {
          dispatch_once(&qword_27E39AD30, v15);
        }

        v5 = &qword_27E39AD38;
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
      v11[2] = sub_23F40216C;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39ADA0 != -1)
      {
        dispatch_once(&qword_27E39ADA0, v11);
      }

      v5 = &qword_27E39ADA8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F402104;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39AD90 != -1)
      {
        dispatch_once(&qword_27E39AD90, v13);
      }

      v5 = &qword_27E39AD98;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4021D4;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39ADB0 != -1)
        {
          dispatch_once(&qword_27E39ADB0, block);
        }

        v5 = &qword_27E39ADB8;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F40223C;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39ADC0 != -1)
        {
          dispatch_once(&qword_27E39ADC0, v7);
        }

        v5 = &qword_27E39ADC8;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F40209C;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39AD80 != -1)
        {
          dispatch_once(&qword_27E39AD80, v15);
        }

        v5 = &qword_27E39AD88;
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
      v11[2] = sub_23F402664;
      v11[3] = &unk_278C7B518;
      v11[4] = self;
      v12 = 1;
      if (qword_27E39ADF0 != -1)
      {
        dispatch_once(&qword_27E39ADF0, v11);
      }

      v5 = &qword_27E39ADF8;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F4025FC;
      v13[3] = &unk_278C7B518;
      v13[4] = self;
      v14 = 0;
      if (qword_27E39ADE0 != -1)
      {
        dispatch_once(&qword_27E39ADE0, v13);
      }

      v5 = &qword_27E39ADE8;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F4026CC;
        block[3] = &unk_278C7B518;
        block[4] = self;
        v10 = 2;
        if (qword_27E39AE00 != -1)
        {
          dispatch_once(&qword_27E39AE00, block);
        }

        v5 = &qword_27E39AE08;
        break;
      case 3:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = sub_23F402734;
        v7[3] = &unk_278C7B518;
        v7[4] = self;
        v8 = 3;
        if (qword_27E39AE10 != -1)
        {
          dispatch_once(&qword_27E39AE10, v7);
        }

        v5 = &qword_27E39AE18;
        break;
      case 4:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_23F402594;
        v15[3] = &unk_278C7B518;
        v15[4] = self;
        v16 = 4;
        if (qword_27E39ADD0 != -1)
        {
          dispatch_once(&qword_27E39ADD0, v15);
        }

        v5 = &qword_27E39ADD8;
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
  block[2] = sub_23F40282C;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39AE20 != -1)
  {
    dispatch_once(&qword_27E39AE20, block);
  }

  return byte_27E39AE28;
}

@end