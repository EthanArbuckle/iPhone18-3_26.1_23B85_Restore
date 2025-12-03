@interface CarNavigationGuidanceSignCompression
+ ($54484288989FF125F1D7A2C3F8B348DC)compressionForStage:(SEL)stage hasSecondary:(unint64_t)secondary hasJunctionView:(BOOL)view forDestination:(BOOL)destination;
@end

@implementation CarNavigationGuidanceSignCompression

+ ($54484288989FF125F1D7A2C3F8B348DC)compressionForStage:(SEL)stage hasSecondary:(unint64_t)secondary hasJunctionView:(BOOL)view forDestination:(BOOL)destination
{
  if (!destination)
  {
    if (secondary <= 4)
    {
      if (secondary > 1)
      {
        if (secondary != 2)
        {
          secondaryCopy2 = 0;
          v8 = 0;
          if (secondary == 3)
          {
            v9 = 2;
          }

          else
          {
            v9 = 3;
          }

          if (view)
          {
            secondary = v9;
          }

          else
          {
            secondary = v9 + 1;
          }

          goto LABEL_66;
        }

        goto LABEL_34;
      }

      if (!secondary)
      {
        goto LABEL_37;
      }

      if (secondary == 1)
      {
LABEL_34:
        secondaryCopy = 0;
        secondaryCopy2 = 0;
        v8 = 0;
        goto LABEL_78;
      }

LABEL_73:
      secondaryCopy2 = 0;
      if (view)
      {
        secondaryCopy = 2;
      }

      else
      {
        secondaryCopy = 0;
      }

      v8 = 1;
LABEL_77:
      secondary = 6;
      goto LABEL_78;
    }

    if (secondary <= 6)
    {
      if (secondary == 5)
      {
        secondaryCopy2 = 0;
        v8 = 0;
        if (view)
        {
          secondary = 2;
        }

        else
        {
          secondary = 5;
        }

        if (view)
        {
          secondaryCopy = 2;
        }

        else
        {
          secondaryCopy = 0;
        }

        goto LABEL_78;
      }

      secondaryCopy2 = 0;
      v8 = 0;
      v11 = !view;
      v12 = 3;
    }

    else
    {
      if (secondary != 7)
      {
        if (secondary != 8)
        {
          if (secondary == 9)
          {
LABEL_29:
            secondaryCopy2 = 0;
            v8 = 0;
            secondaryCopy = 2;
            if (!view)
            {
              secondaryCopy = 0;
            }

            goto LABEL_77;
          }

          goto LABEL_73;
        }

        secondaryCopy2 = 0;
        v8 = 0;
        v11 = !view;
        if (view)
        {
          secondary = 5;
        }

        else
        {
          secondary = 6;
        }

LABEL_70:
        secondaryCopy = 2;
        if (v11)
        {
          secondaryCopy = 0;
        }

        goto LABEL_78;
      }

      secondaryCopy2 = 0;
      v8 = 0;
      v11 = !view;
      v12 = 4;
    }

    if (v11)
    {
      secondary = 6;
    }

    else
    {
      secondary = v12;
    }

    goto LABEL_70;
  }

  if (secondary <= 3)
  {
    if (secondary <= 1)
    {
      if (secondary)
      {
        if (secondary == 1)
        {
          secondaryCopy2 = 0;
          v8 = 0;
          secondary = 3;
LABEL_66:
          secondaryCopy = view;
          goto LABEL_78;
        }

        goto LABEL_48;
      }

LABEL_37:
      v8 = 0;
      secondaryCopy = secondary;
      secondaryCopy2 = secondary;
      goto LABEL_78;
    }

    if (secondary == 2)
    {
      secondaryCopy2 = 0;
      v8 = 0;
      secondary = 4;
      goto LABEL_66;
    }

    secondaryCopy2 = 0;
    v8 = 0;
    secondaryCopy = 2;
    if (!view)
    {
      secondaryCopy = 0;
    }

LABEL_26:
    secondary = 4;
    goto LABEL_78;
  }

  if (secondary > 5)
  {
    if (secondary == 6)
    {
      secondaryCopy2 = 0;
      v8 = 0;
      secondaryCopy = 2;
      if (!view)
      {
        secondaryCopy = 0;
      }

      secondary = 5;
      goto LABEL_78;
    }

    if (secondary != 7)
    {
LABEL_48:
      if (view)
      {
        secondaryCopy = 2;
      }

      else
      {
        secondaryCopy = 0;
      }

      secondaryCopy2 = 1;
      secondary = 6;
      v8 = 1;
      goto LABEL_78;
    }

    goto LABEL_29;
  }

  if (secondary != 4)
  {
    v8 = 0;
    if (view)
    {
      secondaryCopy = 2;
    }

    else
    {
      secondaryCopy = 0;
    }

    secondaryCopy2 = 1;
    goto LABEL_26;
  }

  v8 = 0;
  if (view)
  {
    secondary = 4;
  }

  else
  {
    secondary = 3;
  }

  secondaryCopy2 = 1;
  if (view)
  {
    secondaryCopy = 1;
  }

  else
  {
    secondaryCopy = 2;
  }

LABEL_78:
  retstr->var0 = secondary;
  retstr->var1 = secondaryCopy;
  retstr->var2 = secondaryCopy2;
  *&retstr->var3 = 0;
  retstr->var3 = v8;
  return result;
}

@end