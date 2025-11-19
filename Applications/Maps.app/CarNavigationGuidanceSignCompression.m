@interface CarNavigationGuidanceSignCompression
+ ($54484288989FF125F1D7A2C3F8B348DC)compressionForStage:(SEL)a3 hasSecondary:(unint64_t)a4 hasJunctionView:(BOOL)a5 forDestination:(BOOL)a6;
@end

@implementation CarNavigationGuidanceSignCompression

+ ($54484288989FF125F1D7A2C3F8B348DC)compressionForStage:(SEL)a3 hasSecondary:(unint64_t)a4 hasJunctionView:(BOOL)a5 forDestination:(BOOL)a6
{
  if (!a6)
  {
    if (a4 <= 4)
    {
      if (a4 > 1)
      {
        if (a4 != 2)
        {
          v7 = 0;
          v8 = 0;
          if (a4 == 3)
          {
            v9 = 2;
          }

          else
          {
            v9 = 3;
          }

          if (a5)
          {
            a4 = v9;
          }

          else
          {
            a4 = v9 + 1;
          }

          goto LABEL_66;
        }

        goto LABEL_34;
      }

      if (!a4)
      {
        goto LABEL_37;
      }

      if (a4 == 1)
      {
LABEL_34:
        v10 = 0;
        v7 = 0;
        v8 = 0;
        goto LABEL_78;
      }

LABEL_73:
      v7 = 0;
      if (a5)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      v8 = 1;
LABEL_77:
      a4 = 6;
      goto LABEL_78;
    }

    if (a4 <= 6)
    {
      if (a4 == 5)
      {
        v7 = 0;
        v8 = 0;
        if (a5)
        {
          a4 = 2;
        }

        else
        {
          a4 = 5;
        }

        if (a5)
        {
          v10 = 2;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_78;
      }

      v7 = 0;
      v8 = 0;
      v11 = !a5;
      v12 = 3;
    }

    else
    {
      if (a4 != 7)
      {
        if (a4 != 8)
        {
          if (a4 == 9)
          {
LABEL_29:
            v7 = 0;
            v8 = 0;
            v10 = 2;
            if (!a5)
            {
              v10 = 0;
            }

            goto LABEL_77;
          }

          goto LABEL_73;
        }

        v7 = 0;
        v8 = 0;
        v11 = !a5;
        if (a5)
        {
          a4 = 5;
        }

        else
        {
          a4 = 6;
        }

LABEL_70:
        v10 = 2;
        if (v11)
        {
          v10 = 0;
        }

        goto LABEL_78;
      }

      v7 = 0;
      v8 = 0;
      v11 = !a5;
      v12 = 4;
    }

    if (v11)
    {
      a4 = 6;
    }

    else
    {
      a4 = v12;
    }

    goto LABEL_70;
  }

  if (a4 <= 3)
  {
    if (a4 <= 1)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          v7 = 0;
          v8 = 0;
          a4 = 3;
LABEL_66:
          v10 = a5;
          goto LABEL_78;
        }

        goto LABEL_48;
      }

LABEL_37:
      v8 = 0;
      v10 = a4;
      v7 = a4;
      goto LABEL_78;
    }

    if (a4 == 2)
    {
      v7 = 0;
      v8 = 0;
      a4 = 4;
      goto LABEL_66;
    }

    v7 = 0;
    v8 = 0;
    v10 = 2;
    if (!a5)
    {
      v10 = 0;
    }

LABEL_26:
    a4 = 4;
    goto LABEL_78;
  }

  if (a4 > 5)
  {
    if (a4 == 6)
    {
      v7 = 0;
      v8 = 0;
      v10 = 2;
      if (!a5)
      {
        v10 = 0;
      }

      a4 = 5;
      goto LABEL_78;
    }

    if (a4 != 7)
    {
LABEL_48:
      if (a5)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      v7 = 1;
      a4 = 6;
      v8 = 1;
      goto LABEL_78;
    }

    goto LABEL_29;
  }

  if (a4 != 4)
  {
    v8 = 0;
    if (a5)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    v7 = 1;
    goto LABEL_26;
  }

  v8 = 0;
  if (a5)
  {
    a4 = 4;
  }

  else
  {
    a4 = 3;
  }

  v7 = 1;
  if (a5)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

LABEL_78:
  retstr->var0 = a4;
  retstr->var1 = v10;
  retstr->var2 = v7;
  *&retstr->var3 = 0;
  retstr->var3 = v8;
  return result;
}

@end