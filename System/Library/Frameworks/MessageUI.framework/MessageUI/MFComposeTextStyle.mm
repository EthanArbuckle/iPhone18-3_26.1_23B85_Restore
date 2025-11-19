@interface MFComposeTextStyle
+ (BOOL)isTextListStyleOrdered:(id)a3;
+ (SEL)editSelectorForTextStyleType:(int64_t)a3;
+ (id)accessibilityIdenitifierForTextStyleType:(int64_t)a3;
+ (id)composeTextStyleForTextStyleType:(int64_t)a3;
+ (id)imageNameForTextStyleType:(int64_t)a3;
- (MFComposeTextStyle)initWithTextStyleType:(int64_t)a3;
@end

@implementation MFComposeTextStyle

- (MFComposeTextStyle)initWithTextStyleType:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = MFComposeTextStyle;
  v4 = [(MFComposeTextStyle *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_styleType = a3;
    v6 = [objc_opt_class() imageNameForTextStyleType:a3];
    imageName = v5->_imageName;
    v5->_imageName = v6;

    v8 = [objc_opt_class() accessibilityIdenitifierForTextStyleType:a3];
    accessibilityIdenitifier = v5->_accessibilityIdenitifier;
    v5->_accessibilityIdenitifier = v8;

    v5->_editSelector = [objc_opt_class() editSelectorForTextStyleType:a3];
  }

  return v5;
}

+ (id)composeTextStyleForTextStyleType:(int64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithTextStyleType:a3];

  return v3;
}

+ (id)imageNameForTextStyleType:(int64_t)a3
{
  if ((a3 - 1) > 0xE)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_1E806D478[a3 - 1];
  }

  return v4;
}

+ (id)accessibilityIdenitifierForTextStyleType:(int64_t)a3
{
  if ((a3 - 1) > 0xE)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E806D4F0 + a3 - 1);
  }

  return v4;
}

+ (SEL)editSelectorForTextStyleType:(int64_t)a3
{
  result = 0;
  if (a3 <= 7)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        return sel_toggleBoldface_;
      }

      else if (a3 == 2)
      {
        return sel_toggleItalics_;
      }
    }

    else
    {
      switch(a3)
      {
        case 3:
          return sel_toggleUnderline_;
        case 4:
          return sel__toggleStrikeThrough_;
        case 7:
          return sel__insertOrderedList_;
      }
    }
  }

  else if (a3 > 12)
  {
    switch(a3)
    {
      case 13:
        return sel__alignLeft_;
      case 14:
        return sel__alignCenter_;
      case 15:
        return sel__alignRight_;
    }
  }

  else
  {
    switch(a3)
    {
      case 8:
        return sel__insertUnorderedList_;
      case 9:
        return sel__outdent_;
      case 10:
        return sel__indent_;
    }
  }

  return result;
}

+ (BOOL)isTextListStyleOrdered:(id)a3
{
  v7[7] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v7[0] = @"{box}";
  v7[1] = @"{check}";
  v7[2] = @"{circle}";
  v7[3] = @"{diamond}";
  v7[4] = @"{disc}";
  v7[5] = @"{hyphen}";
  v7[6] = @"{square}";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

@end