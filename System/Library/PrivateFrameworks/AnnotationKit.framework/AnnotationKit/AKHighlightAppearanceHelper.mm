@interface AKHighlightAppearanceHelper
+ (id)borderColorForNoteOfHighlightAttributeTag:(int64_t)a3;
+ (id)colorForHighlightAttributeWithTag:(int64_t)a3;
+ (id)colorForNoteOfHighlightAttributeTag:(int64_t)a3;
+ (int)annotationStyleForHighlightAttributeWithTag:(int64_t)a3;
+ (int64_t)attributeTagForHighlightOfColor:(id)a3;
+ (int64_t)attributeTagForNoteOfColor:(id)a3;
@end

@implementation AKHighlightAppearanceHelper

+ (int)annotationStyleForHighlightAttributeWithTag:(int64_t)a3
{
  if ((a3 - 765200) > 6)
  {
    return 0;
  }

  else
  {
    return dword_23F4D93E0[a3 - 765200];
  }
}

+ (id)colorForHighlightAttributeWithTag:(int64_t)a3
{
  v3 = 0;
  if (a3 > 765202)
  {
    if ((a3 - 765205) < 2)
    {
      v4 = [AKAnnotationTheme underlineTheme:0];
    }

    else if (a3 == 765203)
    {
      v4 = [AKAnnotationTheme pinkTheme:0];
    }

    else
    {
      if (a3 != 765204)
      {
        goto LABEL_15;
      }

      v4 = [AKAnnotationTheme purpleTheme:0];
    }
  }

  else
  {
    switch(a3)
    {
      case 765200:
        v4 = [AKAnnotationTheme yellowTheme:0];
        break;
      case 765201:
        v4 = [AKAnnotationTheme greenTheme:0];
        break;
      case 765202:
        v4 = [AKAnnotationTheme blueTheme:0];
        break;
      default:
        goto LABEL_15;
    }
  }

  v5 = v4;
  v3 = [v4 highlightColor];

LABEL_15:

  return v3;
}

+ (int64_t)attributeTagForHighlightOfColor:(id)a3
{
  v14[12] = *MEMORY[0x277D85DE8];
  v4 = 763000;
  v5 = a3;
  v6 = 0;
  v14[1] = 0;
  v14[3] = 0;
  v14[5] = 0;
  v14[7] = 0;
  v14[9] = 0;
  v14[0] = 765200;
  v14[2] = 765201;
  v14[4] = 765202;
  v14[6] = 765203;
  v14[8] = 765204;
  v14[10] = 765206;
  v14[11] = 0;
  do
  {
    v7 = [a1 colorForHighlightAttributeWithTag:v14[v6]];
    [v5 akDistanceFromColor:v7];
    v14[v6 + 1] = v8;

    v9 = v6 >= 10;
    v6 += 2;
  }

  while (!v9);
  v10 = 0;
  v11 = 0;
  v12 = 1.79769313e308;
  do
  {
    if (*&v14[v11 + 1] < v12)
    {
      v12 = *&v14[v11 + 1];
      v10 = &v14[v11];
    }

    v9 = v11 >= 10;
    v11 += 2;
  }

  while (!v9);
  if (*(v10 + 1) < 28.0)
  {
    v4 = *v10;
  }

  return v4;
}

+ (id)colorForNoteOfHighlightAttributeTag:(int64_t)a3
{
  v3 = 0;
  if (a3 > 765202)
  {
    if ((a3 - 765205) < 2)
    {
      v4 = [AKAnnotationTheme underlineTheme:0];
    }

    else if (a3 == 765203)
    {
      v4 = [AKAnnotationTheme pinkTheme:0];
    }

    else
    {
      if (a3 != 765204)
      {
        goto LABEL_15;
      }

      v4 = [AKAnnotationTheme purpleTheme:0];
    }
  }

  else
  {
    switch(a3)
    {
      case 765200:
        v4 = [AKAnnotationTheme yellowTheme:0];
        break;
      case 765201:
        v4 = [AKAnnotationTheme greenTheme:0];
        break;
      case 765202:
        v4 = [AKAnnotationTheme blueTheme:0];
        break;
      default:
        goto LABEL_15;
    }
  }

  v5 = v4;
  v3 = [v4 noteFillColor];

LABEL_15:

  return v3;
}

+ (int64_t)attributeTagForNoteOfColor:(id)a3
{
  v14[12] = *MEMORY[0x277D85DE8];
  v4 = 763000;
  v5 = a3;
  v6 = 0;
  v14[1] = 0;
  v14[3] = 0;
  v14[5] = 0;
  v14[7] = 0;
  v14[9] = 0;
  v14[0] = 765200;
  v14[2] = 765201;
  v14[4] = 765202;
  v14[6] = 765203;
  v14[8] = 765204;
  v14[10] = 765206;
  v14[11] = 0;
  do
  {
    v7 = [a1 colorForNoteOfHighlightAttributeTag:v14[v6]];
    [v5 akDistanceFromColor:v7];
    v14[v6 + 1] = v8;

    v9 = v6 >= 10;
    v6 += 2;
  }

  while (!v9);
  v10 = 0;
  v11 = 0;
  v12 = 1.79769313e308;
  do
  {
    if (*&v14[v11 + 1] < v12)
    {
      v12 = *&v14[v11 + 1];
      v10 = &v14[v11];
    }

    v9 = v11 >= 10;
    v11 += 2;
  }

  while (!v9);
  if (*(v10 + 1) < 28.0)
  {
    v4 = *v10;
  }

  return v4;
}

+ (id)borderColorForNoteOfHighlightAttributeTag:(int64_t)a3
{
  v3 = 0;
  if (a3 > 765202)
  {
    if ((a3 - 765205) < 2)
    {
      v4 = [AKAnnotationTheme underlineTheme:0];
    }

    else if (a3 == 765203)
    {
      v4 = [AKAnnotationTheme pinkTheme:0];
    }

    else
    {
      if (a3 != 765204)
      {
        goto LABEL_15;
      }

      v4 = [AKAnnotationTheme purpleTheme:0];
    }
  }

  else
  {
    switch(a3)
    {
      case 765200:
        v4 = [AKAnnotationTheme yellowTheme:0];
        break;
      case 765201:
        v4 = [AKAnnotationTheme greenTheme:0];
        break;
      case 765202:
        v4 = [AKAnnotationTheme blueTheme:0];
        break;
      default:
        goto LABEL_15;
    }
  }

  v5 = v4;
  v3 = [v4 noteBorderColor];

LABEL_15:

  return v3;
}

@end