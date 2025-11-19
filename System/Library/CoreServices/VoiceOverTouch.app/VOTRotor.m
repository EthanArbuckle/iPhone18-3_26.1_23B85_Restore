@interface VOTRotor
+ (BOOL)rotorIsUsedForSettingAdjustment:(int64_t)a3;
+ (id)rotorTypeForPreferenceString:(id)a3;
+ (id)stringForRotorType:(int64_t)a3;
+ (id)systemRotorTypeForRotorType:(int64_t)a3;
+ (id)systemRotorTypeForSearchType:(int64_t)a3;
+ (int64_t)rotorTypeForSearchType:(int64_t)a3;
+ (int64_t)rotorTypeForSystemRotorType:(id)a3;
- (BOOL)inMisspelledWordRotor;
- (BOOL)verifyNoDuplicatesInRotor;
- (VOTElement)currentRotorElement;
- (VOTRotor)init;
- (VOTRotorDelegate)delegate;
- (id)_currentCustomRotorString;
- (id)currentRotorHint;
- (id)currentRotorString;
- (id)currentVisualRotorString;
- (id)generateRotorTypeRequest;
- (id)rotorItems;
- (int64_t)indexOfRotorItem:(int64_t)a3;
- (int64_t)rotorIndex;
- (void)_moveRotor:(BOOL)a3 didWrap:(BOOL *)a4 userInitiated:(BOOL)a5 eventOrigin:(int64_t)a6;
- (void)dealloc;
- (void)incrementDetectionRotor:(int64_t)a3;
- (void)setCurrentRotorType:(int64_t)a3 saveToPreferences:(BOOL)a4 userInitiated:(BOOL)a5;
- (void)setRotorItems:(id)a3;
@end

@implementation VOTRotor

- (VOTRotor)init
{
  v7.receiver = self;
  v7.super_class = VOTRotor;
  v2 = [(VOTRotor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    typeKey = v2->_typeKey;
    v2->_typeKey = @"CurrentRotorTypeSimple";

    v3->_currentRotors = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    v5 = v3;
  }

  return v3;
}

- (void)dealloc
{
  customPublicRotors = self->_customPublicRotors;
  self->_customPublicRotors = 0;

  self->_currentRotors = 0;
  customRotorActionCategories = self->_customRotorActionCategories;
  self->_customRotorActionCategories = 0;

  customContent = self->_customContent;
  self->_customContent = 0;

  v6.receiver = self;
  v6.super_class = VOTRotor;
  [(VOTRotor *)&v6 dealloc];
}

- (int64_t)rotorIndex
{
  currentRotors = self->_currentRotors;
  v5.length = [(VOTRotor *)self rotorCount];
  currentRotorType = self->_currentRotorType;
  v5.location = 0;

  return CFArrayGetFirstIndexOfValue(currentRotors, v5, currentRotorType);
}

- (id)generateRotorTypeRequest
{
  v3 = [(VOTRotor *)self currentRotorString];
  if (v3)
  {
    v4 = [objc_allocWithZone(VOTOutputRequest) init];
    v5 = [v4 addString:v3];
    if (([VOTSharedWorkspace isBaseSystemSpokenEqualToLocalization] & 1) == 0)
    {
      v6 = [v4 lastAction];
      v7 = [VOTSharedWorkspace systemSpokenLanguage];
      [v6 setObject:v7 forVariant:16];
    }

    if ([VOTSharedWorkspace hintsEnabled])
    {
      v8 = [(VOTRotor *)self currentRotorHint];
      if (v8)
      {
        LODWORD(v9) = 1061997773;
        [v4 addPause:v9];
        v10 = [v4 addString:v8];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCurrentRotorType:(int64_t)a3 saveToPreferences:(BOOL)a4 userInitiated:(BOOL)a5
{
  currentRotorType = self->_currentRotorType;
  if (currentRotorType != a3)
  {
    v7 = a5;
    v8 = a4;
    self->_previousRotorType = currentRotorType;
    v26[0] = @"kVOTRotorChangedNotificationOldRotor";
    v10 = [NSNumber numberWithInteger:?];
    v27[0] = v10;
    v26[1] = @"kVOTRotorChangedNotificationNewRotor";
    v11 = [NSNumber numberWithInteger:a3];
    v27[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];

    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000F8074;
    v23 = &unk_1001C7778;
    v24 = self;
    v13 = v12;
    v25 = v13;
    AXPerformBlockOnMainThreadAfterDelay();
    self->_currentRotorType = a3;
    if ((a3 - 3) <= 2)
    {
      self->_currentSelectionRotorType = a3;
    }

    if (v8)
    {
      v14 = [(NSString *)self->_typeKey copy];
      v15 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F80E4;
      block[3] = &unk_1001C7778;
      block[4] = self;
      v19 = v14;
      v16 = v14;
      dispatch_async(v15, block);

      a3 = self->_currentRotorType;
    }

    [VOTSharedWorkspace setRotorType:a3];
    v17 = [(VOTRotor *)self delegate];
    [v17 rotor:self didChangeFrom:self->_previousRotorType to:self->_currentRotorType userInitiated:v7];
  }
}

- (void)_moveRotor:(BOOL)a3 didWrap:(BOOL *)a4 userInitiated:(BOOL)a5 eventOrigin:(int64_t)a6
{
  v7 = a5;
  v9 = a3;
  Count = CFArrayGetCount(self->_currentRotors);
  if (!Count)
  {

    _AXAssert();
    return;
  }

  v12 = Count;
  currentRotorType = self->_currentRotorType;
  if (currentRotorType != 53)
  {
    goto LABEL_9;
  }

  publicCustomRotorIndex = self->_publicCustomRotorIndex;
  if (v9)
  {
    v15 = publicCustomRotorIndex + 1;
  }

  else
  {
    v15 = publicCustomRotorIndex - 1;
  }

  self->_publicCustomRotorIndex = v15;
  if ((v15 & 0x8000000000000000) == 0)
  {
    if (v15 < [(NSMutableArray *)self->_customPublicRotors count])
    {
      goto LABEL_25;
    }

    currentRotorType = self->_currentRotorType;
LABEL_9:
    if (currentRotorType == 54)
    {
      customActionIndex = self->_customActionIndex;
      v17 = v9 ? 1 : -1;
      self->_customActionIndex = customActionIndex + v17;
      if (customActionIndex + v17 >= 0 && customActionIndex + v17 < [(NSArray *)self->_customRotorActionCategories count])
      {
        v45 = v7;
        v18 = [(NSArray *)self->_customRotorActionCategories objectAtIndexedSubscript:self->_customActionIndex];
        v19 = [v18 categoryName];
        v20 = [v19 isEqualToString:UIAccessibilityCustomActionCategoryEdit];

        v21 = self->_customActionIndex;
        if (v20)
        {
          v21 += v17;
          self->_customActionIndex = v21;
        }

        v7 = v45;
        if ((v21 & 0x8000000000000000) == 0 && v21 < [(NSArray *)self->_customRotorActionCategories count])
        {
          goto LABEL_25;
        }
      }
    }
  }

  v22 = self->_currentRotorType;
  if (v22 == 92)
  {
    customContentIndex = self->_customContentIndex;
    if (v9)
    {
      v24 = customContentIndex + 1;
    }

    else
    {
      v24 = customContentIndex - 1;
    }

    self->_customContentIndex = v24;
    if ((v24 & 0x8000000000000000) != 0)
    {
      v22 = 92;
    }

    else
    {
      if (v24 < [(NSArray *)self->_customContent count])
      {
LABEL_25:
        if (_AXSAutomationEnabled())
        {
          v46 = +[NSDistributedNotificationCenter defaultCenter];
          [v46 postNotificationName:@"VoiceOverEventOccurred" object:@"RotorTypeDidChange"];
        }

        return;
      }

      v22 = self->_currentRotorType;
    }
  }

  v47 = v7;
  *a4 = 0;
  v49.location = 0;
  v49.length = v12;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_currentRotors, v49, v22);
  v26 = FirstIndexOfValue;
  ValueAtIndex = 0;
  v44 = v9;
  v28 = !v9;
  if (v9)
  {
    v29 = 1;
  }

  else
  {
    v29 = -1;
  }

  if (v28)
  {
    v30 = v12 - 1;
  }

  else
  {
    v30 = 0;
  }

  v31 = FirstIndexOfValue;
  do
  {
    if ([(VOTRotor *)self rotorTypeIsValid:ValueAtIndex eventOrigin:a6])
    {
      break;
    }

    if (v31 == -1)
    {
      v31 = 0;
    }

    else
    {
      v31 += v29;
    }

    if (v31 < 0 || v31 >= v12)
    {
      *a4 = 1;
      v31 = v30;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(self->_currentRotors, v31);
  }

  while (v31 != v26);
  [(VOTRotor *)self setCurrentRotorType:ValueAtIndex saveToPreferences:0 userInitiated:v47];
  v32 = self->_currentRotorType;
  if (v32 == 53)
  {
    if (v44)
    {
      v33 = 0;
      v32 = 53;
    }

    else
    {
      v33 = [(NSMutableArray *)self->_customPublicRotors count]- 1;
      v32 = self->_currentRotorType;
    }

    self->_publicCustomRotorIndex = v33;
  }

  if (v32 == 54)
  {
    v34 = v44 ? 0 : [(NSArray *)self->_customRotorActionCategories count]- 1;
    self->_customActionIndex = v34;
    if (v34 < [(NSArray *)self->_customRotorActionCategories count])
    {
      v35 = [(NSArray *)self->_customRotorActionCategories objectAtIndexedSubscript:self->_customActionIndex];
      v36 = [v35 categoryName];
      v37 = [v36 isEqualToString:@"UIAccessibilityCustomActionCategoryEdit"];

      if (v37)
      {
        if (v44)
        {
          v38 = 1;
        }

        else
        {
          v38 = [(NSArray *)self->_customRotorActionCategories count]- 2;
        }

        self->_customActionIndex = v38;
      }
    }
  }

  if (self->_currentRotorType == 92)
  {
    if (v44)
    {
      v39 = 0;
    }

    else
    {
      v39 = [(NSArray *)self->_customContent count]- 1;
    }

    self->_customContentIndex = v39;
  }

  v40 = +[VOTConfiguration rootConfiguration];
  v41 = [NSNumber numberWithInteger:self->_currentRotorType];
  [v40 setPreference:v41 forKey:self->_typeKey];

  v42 = self->_currentRotorType;
  v43 = VOTSharedWorkspace;

  [v43 setRotorType:v42];
}

- (void)incrementDetectionRotor:(int64_t)a3
{
  Count = CFArrayGetCount(self->_currentRotors);
  if (!Count)
  {
    return;
  }

  v6 = Count;
  v20.location = 0;
  v20.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_currentRotors, v20, self->_currentRotorType);
  ValueAtIndex = 0;
  v9 = FirstIndexOfValue;
  do
  {
    if ([(VOTRotor *)self rotorTypeIsValid:ValueAtIndex eventOrigin:a3]&& (ValueAtIndex & 0xFFFFFFFFFFFFFFFELL) != 0x3C)
    {
      break;
    }

    if (v9 + 1 >= v6 || v9 + 1 <= -1)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(self->_currentRotors, v9);
  }

  while (v9 != FirstIndexOfValue);
  if (ValueAtIndex == 93)
  {
    v11 = 0;
  }

  else
  {
    v11 = ValueAtIndex;
  }

  if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 0x3C)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  [(VOTRotor *)self setCurrentRotorType:v12 saveToPreferences:0 userInitiated:0];
  currentRotorType = self->_currentRotorType;
  switch(currentRotorType)
  {
    case '5':
      v14 = 64;
      goto LABEL_25;
    case '\\':
      v14 = 56;
      goto LABEL_25;
    case '6':
      v14 = 112;
LABEL_25:
      *(&self->super.isa + v14) = 0;
      break;
  }

  v15 = +[VOTConfiguration rootConfiguration];
  v16 = [NSNumber numberWithInteger:self->_currentRotorType];
  [v15 setPreference:v16 forKey:self->_typeKey];

  v17 = self->_currentRotorType;
  v18 = VOTSharedWorkspace;

  [v18 setRotorType:v17];
}

+ (id)systemRotorTypeForSearchType:(int64_t)a3
{
  if ((a3 - 1) > 0x21)
  {
    return 0;
  }

  else
  {
    return off_1001CAFF0[a3 - 1];
  }
}

+ (id)systemRotorTypeForRotorType:(int64_t)a3
{
  if (a3 <= 33)
  {
    v4 = @"AXCustomSystemRotorTypeImage";
    v5 = @"AXCustomSystemRotorTypeLandmark";
    if (a3 != 33)
    {
      v5 = 0;
    }

    if (a3 != 17)
    {
      v4 = v5;
    }

    v6 = @"AXCustomSystemRotorTypeList";
    v7 = @"AXCustomSystemRotorTypeVisitedLink";
    if (a3 != 15)
    {
      v7 = 0;
    }

    if (a3 != 14)
    {
      v6 = v7;
    }

    if (a3 <= 16)
    {
      v4 = v6;
    }

    v8 = @"AXCustomSystemRotorTypeHeading";
    v9 = @"AXCustomSystemRotorTypeLink";
    v10 = @"AXCustomSystemRotorTypeTable";
    if (a3 != 12)
    {
      v10 = 0;
    }

    if (a3 != 9)
    {
      v9 = v10;
    }

    if (a3 != 8)
    {
      v8 = v9;
    }

    if (a3 <= 13)
    {
      return v8;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    result = 0;
    switch(a3)
    {
      case '-':
        result = @"AXCustomSystemRotorTypeHeadingLevel1";
        break;
      case '.':
        result = @"AXCustomSystemRotorTypeHeadingLevel2";
        break;
      case '/':
        result = @"AXCustomSystemRotorTypeHeadingLevel3";
        break;
      case '0':
        result = @"AXCustomSystemRotorTypeHeadingLevel4";
        break;
      case '1':
        result = @"AXCustomSystemRotorTypeHeadingLevel5";
        break;
      case '2':
        result = @"AXCustomSystemRotorTypeHeadingLevel6";
        break;
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case ':':
      case ';':
      case '<':
      case '=':
      case '>':
      case '?':
      case '@':
      case 'A':
      case 'B':
      case 'C':
      case 'D':
      case 'E':
        return result;
      case 'F':
        result = @"AXCustomSystemRotorTypeBoldText";
        break;
      case 'G':
        result = @"AXCustomSystemRotorTypeItalicText";
        break;
      case 'H':
        result = @"AXCustomSystemRotorTypeUnderlineText";
        break;
      case 'I':
        result = @"AXCustomSystemRotorTypeMisspelledWord";
        break;
      case 'J':
        result = @"AXCustomSystemRotorTypePlainText";
        break;
      case 'K':
        result = @"AXCustomSystemRotorTypeColorChange";
        break;
      case 'L':
        result = @"AXCustomSystemRotorTypeFontChange";
        break;
      case 'M':
        result = @"AXCustomSystemRotorTypeStyleChange";
        break;
      default:
        v11 = @"AXCustomSystemRotorTypeTextField";
        if (a3 != 36)
        {
          v11 = 0;
        }

        if (a3 == 34)
        {
          result = @"AXCustomSystemRotorTypeArticle";
        }

        else
        {
          result = v11;
        }

        break;
    }
  }

  return result;
}

+ (int64_t)rotorTypeForSearchType:(int64_t)a3
{
  v3 = [VOTRotor systemRotorTypeForSearchType:a3];
  v4 = [VOTRotor rotorTypeForSystemRotorType:v3];

  return v4;
}

+ (int64_t)rotorTypeForSystemRotorType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeLink"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeArticle"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeVisitedLink"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeading"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel1"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel2"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel3"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel4"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel5"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel6"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeBoldText"])
  {
    v4 = 70;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeItalicText"])
  {
    v4 = 71;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeUnderlineText"])
  {
    v4 = 72;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeMisspelledWord"])
  {
    v4 = 73;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeImage"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeTextField"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeTable"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeList"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"AXCustomSystemRotorTypeLandmark"])
  {
    v4 = 33;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)currentVisualRotorString
{
  v3 = [(VOTRotor *)self _currentCustomRotorString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [VOTRotor stringForRotorType:self->_currentRotorType];
  }

  v6 = v5;

  return v6;
}

- (BOOL)verifyNoDuplicatesInRotor
{
  Count = CFArrayGetCount(self->_currentRotors);
  if (Count < 1)
  {
    return 1;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_currentRotors, v6++);
      v8 = v6;
      if (v6 < v4)
      {
        break;
      }

LABEL_6:
      v5 = v6 >= v4;
      if (v6 == v4)
      {
        return v5;
      }
    }

    while (ValueAtIndex != CFArrayGetValueAtIndex(self->_currentRotors, v8))
    {
      if (v4 == ++v8)
      {
        goto LABEL_6;
      }
    }
  }

  return v5;
}

- (int64_t)indexOfRotorItem:(int64_t)a3
{
  currentRotors = self->_currentRotors;
  v5.length = CFArrayGetCount(currentRotors);
  v5.location = 0;

  return CFArrayGetFirstIndexOfValue(currentRotors, v5, a3);
}

+ (id)rotorTypeForPreferenceString:(id)a3
{
  v3 = qword_1001FEF98;
  v4 = a3;
  if (v3 != -1)
  {
    sub_100130BE4();
  }

  v5 = [qword_1001FEF90 objectForKey:v4];

  return v5;
}

+ (id)stringForRotorType:(int64_t)a3
{
  v4 = off_1001FDDD0;
  v5 = 0;
  switch(a3)
  {
    case 1:
      v5 = @"search.rotor.adjust";
      break;
    case 2:
      v5 = @"search.rotor.autofill";
      break;
    case 3:
      v5 = @"search.rotor.character";
      break;
    case 4:
      v5 = @"search.rotor.word";
      break;
    case 5:
      v5 = @"search.rotor.line";
      break;
    case 6:
      v5 = @"search.rotor.textselection";
      break;
    case 7:
      v5 = @"search.rotor.vertical.navigation";
      break;
    case 8:
      v5 = @"search.rotor.header";
      break;
    case 9:
      v5 = @"search.rotor.link";
      break;
    case 10:
      v5 = @"search.rotor.formelement";
      break;
    case 11:
      v5 = @"search.rotor.radiogroup";
      break;
    case 12:
      v5 = @"search.rotor.table";
      break;
    case 13:
      v5 = @"search.rotor.frame";
      break;
    case 14:
      v5 = @"search.rotor.list";
      break;
    case 15:
      v5 = @"search.rotor.visitedlink";
      break;
    case 16:
      v5 = @"search.rotor.nonvisitedlink";
      break;
    case 17:
      v5 = @"search.rotor.image";
      break;
    case 18:
      v5 = @"search.rotor.statictext";
      break;
    case 19:
      v5 = @"search.rotor.text.operation";
      break;
    case 20:
      v5 = @"search.rotor.zoom";
      break;
    case 21:
      v5 = @"search.rotor.typing.mode";
      break;
    case 22:
      v5 = @"search.rotor.slide.to.type";
      break;
    case 23:
      v5 = @"search.rotor.voices";
      break;
    case 24:
      v6 = +[AXSettings sharedInstance];
      v7 = [v6 voiceOverTouchBrailleDisplaySyncInputOutputTables];

      if (v7)
      {
        v5 = @"search.rotor.braille.languages";
      }

      else
      {
        v5 = @"search.rotor.braille.output.languages";
      }

      break;
    case 25:
      v5 = @"search.rotor.braille.input.languages";
      break;
    case 26:
      v5 = @"search.rotor.auto.advance.speed";
      break;
    case 27:
      v5 = @"search.rotor.2dbraille.zoom";
      break;
    case 28:
      v5 = @"search.rotor.2dbraille.horizontal.pan";
      break;
    case 29:
      v5 = @"search.rotor.2dbraille.vertical.pan";
      break;
    case 30:
      v5 = @"search.rotor.2dbraille.invert";
      break;
    case 31:
      v5 = @"search.rotor.2dbraille.intensity";
      break;
    case 32:
      v5 = @"search.rotor.2dbraille.text.mode";
      break;
    case 33:
      v5 = @"search.rotor.landmark";
      break;
    case 34:
      v5 = @"search.rotor.article";
      break;
    case 35:
      v5 = @"search.rotor.button";
      break;
    case 36:
      v5 = @"search.rotor.textfield";
      break;
    case 37:
      v5 = @"search.rotor.table.row";
      break;
    case 38:
      v5 = @"search.rotor.container";
      break;
    case 39:
      v5 = @"search.rotor.searchresults";
      break;
    case 40:
      v5 = @"search.rotor.searchfield";
      break;
    case 41:
      v5 = @"search.rotor.checkbox";
      break;
    case 42:
      v5 = @"search.rotor.exploration.mode";
      break;
    case 43:
      v5 = @"search.rotor.same";
      break;
    case 44:
      v5 = @"search.rotor.allitems";
      break;
    case 45:
      v5 = @"search.rotor.heading.1";
      break;
    case 46:
      v5 = @"search.rotor.heading.2";
      break;
    case 47:
      v5 = @"search.rotor.heading.3";
      break;
    case 48:
      v5 = @"search.rotor.heading.4";
      break;
    case 49:
      v5 = @"search.rotor.heading.5";
      break;
    case 50:
      v5 = @"search.rotor.heading.6";
      break;
    case 51:
      v5 = @"search.rotor.same.heading";
      break;
    case 52:
      v5 = @"search.rotor.different.element";
      break;
    case 54:
      v5 = @"custom.actions.title";
      break;
    case 55:
      v5 = @"search.rotor.math.granularity.1";
      break;
    case 56:
      v5 = @"search.rotor.math.granularity.2";
      break;
    case 57:
      v5 = @"search.rotor.math.granularity.3";
      break;
    case 58:
      v5 = @"search.rotor.math.granularity.4";
      break;
    case 59:
      v5 = @"search.rotor.hints";
      break;
    case 60:
      v5 = @"search.rotor.handwriting";
      break;
    case 61:
      v5 = @"search.rotor.braille.gesture";
      break;
    case 62:
      v5 = @"search.rotor.tracking.detail";
      break;
    case 63:
      v5 = @"search.rotor.media.descriptions";
      break;
    case 64:
      v5 = @"search.rotor.maps.exploration";
      break;
    case 65:
      v5 = @"search.rotor.audiograph";
      break;
    case 66:
      v5 = @"search.rotor.neural.vision";
      break;
    case 67:
      v5 = @"search.rotor.image.descriptions";
      break;
    case 68:
      v5 = @"rotor.interaction.style";
      break;
    case 70:
      v5 = @"search.rotor.bold.text";
      break;
    case 71:
      v5 = @"search.rotor.italic.text";
      break;
    case 72:
      v5 = @"search.rotor.underline.text";
      break;
    case 73:
      v5 = @"search.rotor.misspelled.word";
      break;
    case 74:
      v5 = @"search.rotor.plain.text";
      break;
    case 75:
      v5 = @"search.rotor.color.change";
      break;
    case 76:
      v5 = @"search.rotor.font.change";
      break;
    case 77:
      v5 = @"search.rotor.style.change";
      break;
    case 78:
      v5 = @"search.rotor.blockquote";
      break;
    case 79:
      v5 = @"search.rotor.same.blockquote";
      break;
    case 80:
      v5 = @"search.rotor.volume";
      break;
    case 81:
      v5 = @"search.rotor.rate";
      break;
    case 82:
      v5 = @"search.rotor.typing.echo";
      break;
    case 83:
      v5 = @"search.rotor.phonetics";
      break;
    case 84:
      v5 = @"search.rotor.use.pitch";
      break;
    case 85:
      v5 = @"search.rotor.punctuation";
      break;
    case 86:
      v5 = @"search.rotor.sounds";
      break;
    case 87:
      v5 = @"search.rotor.audio.ducking";
      break;
    case 88:
      v5 = @"search.rotor.audio.ducking.amount";
      break;
    case 89:
      v5 = @"search.rotor.audio.destination";
      break;
    case 90:
      v5 = @"search.rotor.navigation.direction";
      break;
    case 91:
      v5 = @"search.rotor.activities";
      break;
    case 92:
      v5 = @"custom.content.title";
      break;
    case 93:
      v5 = @"search.rotor.detection.mode";
      break;
    case 94:
      v8 = off_1001FDDE0;

      v5 = @"search.rotor.hide.distractions";
      v4 = v8;
      break;
    case 95:
      v5 = @"search.rotor.toggle.live.regions";
      break;
    case 96:
      v5 = @"search.rotor.copied.speech";
      break;
    default:
      break;
  }

  v9 = sub_1000511CC(v4, v5, 0);

  return v9;
}

- (id)_currentCustomRotorString
{
  currentRotorType = self->_currentRotorType;
  switch(currentRotorType)
  {
    case '\\':
      v15 = [(NSArray *)self->_customContent count];
      customContentIndex = v15 - 1;
      if (v15 >= 1)
      {
        if (self->_customContentIndex < customContentIndex)
        {
          customContentIndex = self->_customContentIndex;
        }

        self->_customContentIndex = customContentIndex;
        v17 = [AXAttributedString alloc];
        v9 = [(NSArray *)self->_customContent objectAtIndexedSubscript:self->_customContentIndex];
        v18 = [v9 attributedLabel];
        v14 = [v17 initWithStringOrAttributedString:v18];

        goto LABEL_21;
      }

      break;
    case '6':
      v12 = [(NSArray *)self->_customRotorActionCategories count];
      if (v12 >= 1)
      {
        if (self->_customActionIndex >= v12 - 1)
        {
          customActionIndex = v12 - 1;
        }

        else
        {
          customActionIndex = self->_customActionIndex;
        }

        self->_customActionIndex = customActionIndex;
        v9 = [(NSArray *)self->_customRotorActionCategories objectAtIndexedSubscript:?];
        v11 = [v9 categoryName];
        goto LABEL_16;
      }

      break;
    case '5':
      v4 = [(NSMutableArray *)self->_customPublicRotors count];
      v5 = v4 - 1;
      if (v4 >= 1)
      {
        customPublicRotors = self->_customPublicRotors;
        v7 = self->_publicCustomRotorIndex >= v5 ? v5 : self->_publicCustomRotorIndex;
        self->_publicCustomRotorIndex = v7;
        if (v7 < [(NSMutableArray *)customPublicRotors count])
        {
          v8 = [(NSMutableArray *)self->_customPublicRotors objectAtIndex:self->_publicCustomRotorIndex];
          v9 = [v8 objectForKey:@"name"];

          v10 = [VOTRotor rotorTypeForSystemRotorType:v9];
          if (v10)
          {
            v11 = [VOTRotor stringForRotorType:v10];
          }

          else
          {
            v11 = v9;
            v9 = v11;
          }

LABEL_16:
          v14 = v11;
LABEL_21:

          goto LABEL_23;
        }
      }

      break;
  }

  v14 = 0;
LABEL_23:

  return v14;
}

- (BOOL)inMisspelledWordRotor
{
  if (self->_currentRotorType == 73)
  {
    v3 = VOTLogRotor();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100130BF8(v3);
    }

    if (self->_currentRotorType == 73)
    {
      return 0;
    }
  }

  if ([(VOTRotor *)self currentRotorType]!= 53 || [(VOTRotor *)self publicCustomRotorIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = [(VOTRotor *)self customPublicRotors];
  v7 = [v6 count];
  v8 = [(VOTRotor *)self publicCustomRotorIndex];

  if (v7 <= v8)
  {
    v11 = VOTLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100130C3C(self, v11);
    }

    v4 = 0;
  }

  else
  {
    v9 = [(VOTRotor *)self customPublicRotors];
    v10 = [v9 objectAtIndexedSubscript:{-[VOTRotor publicCustomRotorIndex](self, "publicCustomRotorIndex")}];
    v11 = [v10 objectForKeyedSubscript:@"name"];

    v4 = [VOTRotor rotorTypeForSystemRotorType:v11]== 73;
  }

  return v4;
}

- (id)currentRotorHint
{
  if (self->_currentRotorType == 6)
  {
    v2 = @"rotor.text.selection.hint";
LABEL_5:
    v3 = sub_1000511CC(off_1001FDDD0, v2, 0);
    goto LABEL_7;
  }

  if ([(VOTRotor *)self inMisspelledWordRotor])
  {
    v2 = @"rotor.text.misspelled.word.hint";
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (id)currentRotorString
{
  v3 = [(VOTRotor *)self _currentCustomRotorString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [VOTRotor stringForRotorType:self->_currentRotorType];
  }

  v6 = v5;

  return v6;
}

- (id)rotorItems
{
  v3 = objc_alloc_init(NSMutableIndexSet);
  Count = CFArrayGetCount(self->_currentRotors);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      [v3 addIndex:{CFArrayGetValueAtIndex(self->_currentRotors, i)}];
    }
  }

  return v3;
}

- (void)setRotorItems:(id)a3
{
  v6 = a3;
  CFArrayRemoveAllValues(self->_currentRotors);
  v4 = [v6 firstIndex];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v4; i != 0x7FFFFFFFFFFFFFFFLL; i = [v6 indexGreaterThanIndex:i])
    {
      CFArrayAppendValue(self->_currentRotors, i);
    }
  }
}

+ (BOOL)rotorIsUsedForSettingAdjustment:(int64_t)a3
{
  result = 1;
  switch(a3)
  {
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 42:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 66:
    case 67:
    case 68:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 95:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

- (VOTElement)currentRotorElement
{
  WeakRetained = objc_loadWeakRetained(&self->_currentRotorElement);

  return WeakRetained;
}

- (VOTRotorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end