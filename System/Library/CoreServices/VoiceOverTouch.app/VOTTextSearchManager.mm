@interface VOTTextSearchManager
+ (void)initialize;
- (VOTTextSearchManager)init;
- (void)_handleArrowKey:(id)key;
- (void)_handleDelete:(id)delete;
- (void)_handleLetter:(id)letter;
- (void)_handleRightLeftMovement:(id)movement;
- (void)_handleUpDownMovement:(id)movement;
- (void)_syncSearchBufferHistory;
- (void)_updateBrailleWithBuffer;
- (void)beginNewTextSearchSession;
- (void)endTextSearchSession;
- (void)handleReplaceRange:(_NSRange)range withString:(id)string cursor:(int64_t)cursor;
- (void)handleTextSearchEvent:(id)event;
- (void)setCurrentSearchValue:(id)value;
@end

@implementation VOTTextSearchManager

+ (void)initialize
{
  v2 = [objc_allocWithZone(VOTTextSearchManager) init];
  v3 = qword_1001FEFD0;
  qword_1001FEFD0 = v2;

  _objc_release_x1(v2, v3);
}

- (VOTTextSearchManager)init
{
  v13.receiver = self;
  v13.super_class = VOTTextSearchManager;
  v2 = [(VOTTextSearchManager *)&v13 init];
  if (v2)
  {
    v3 = +[VOTConfiguration rootConfiguration];
    v4 = [v3 preferenceForKey:@"SearchBufferHistory"];
    v5 = [v4 mutableCopyWithZone:0];
    history = v2->_history;
    v2->_history = v5;

    if (!v2->_history)
    {
      v7 = [objc_allocWithZone(NSMutableArray) init];
      v8 = v2->_history;
      v2->_history = v7;
    }

    v9 = [objc_allocWithZone(NSMutableString) init];
    buffer = v2->_buffer;
    v2->_buffer = v9;

    v2->_textSearchModeIsOn = 0;
    v11 = v2;
  }

  return v2;
}

- (void)_syncSearchBufferHistory
{
  if ([(NSMutableArray *)self->_history count]>= 0x1F)
  {
    [(NSMutableArray *)self->_history removeObjectsInRange:30, [(NSMutableArray *)self->_history count]- 30];
  }

  v3 = +[VOTConfiguration rootConfiguration];
  [v3 setPreference:self->_history forKey:@"SearchBufferHistory"];
}

- (void)beginNewTextSearchSession
{
  [(NSMutableString *)self->_buffer setString:&stru_1001CBF90];
  self->_bufferIndex = 0;
  self->_textSearchModeIsOn = 1;

  [(VOTTextSearchManager *)self _updateBrailleWithBuffer];
}

- (void)endTextSearchSession
{
  self->_textSearchModeIsOn = 0;
  history = self->_history;
  v4 = [(NSMutableString *)self->_buffer copy];
  [(NSMutableArray *)history insertObject:v4 atIndex:0];

  [(VOTTextSearchManager *)self performSelector:"_syncSearchBufferHistory" withObject:0 afterDelay:0.5];
}

- (void)setCurrentSearchValue:(id)value
{
  [(NSMutableString *)self->_buffer setString:value];

  [(VOTTextSearchManager *)self _updateBrailleWithBuffer];
}

- (void)_handleRightLeftMovement:(id)movement
{
  movementCopy = movement;
  bufferIndex = self->_bufferIndex;
  v21 = movementCopy;
  keyInfo = [movementCopy keyInfo];
  keyCode = [keyInfo keyCode];

  if (keyCode == 80)
  {
    keyInfo2 = [v21 keyInfo];
    isCommandKeyPressed = [keyInfo2 isCommandKeyPressed];

    if (isCommandKeyPressed)
    {
      if (self->_bufferIndex)
      {
        bufferIndex = 0;
      }

      else
      {
        bufferIndex = -1;
      }
    }

    else
    {
      --bufferIndex;
    }
  }

  else if (keyCode == 79)
  {
    keyInfo3 = [v21 keyInfo];
    isCommandKeyPressed2 = [keyInfo3 isCommandKeyPressed];

    if (isCommandKeyPressed2)
    {
      v10 = self->_bufferIndex;
      v11 = [(NSMutableString *)self->_buffer length];
      v12 = [(NSMutableString *)self->_buffer length];
      if (v10 == v11)
      {
        bufferIndex = v12 + 1;
      }

      else
      {
        bufferIndex = v12;
      }
    }

    else
    {
      ++bufferIndex;
    }
  }

  v15 = [(NSMutableString *)self->_buffer length];
  if (bufferIndex < 0 || bufferIndex > v15)
  {
    v18 = +[VOTOutputManager outputManager];
    v19 = +[VOSOutputEvent BoundaryEncountered];
    [v18 sendEvent:v19];

    goto LABEL_22;
  }

  v16 = self->_bufferIndex;
  v17 = bufferIndex - v16;
  if (bufferIndex >= v16)
  {
    if (bufferIndex <= v16)
    {
      v18 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v17 = v16 - bufferIndex;
    v16 = bufferIndex;
  }

  v18 = [(NSMutableString *)self->_buffer substringWithRange:v16, v17];
LABEL_21:
  v20 = sub_1000095FC(v18, 0, 0);
  self->_bufferIndex = bufferIndex;
LABEL_22:
}

- (void)_handleUpDownMovement:(id)movement
{
  keyInfo = [movement keyInfo];
  keyCode = [keyInfo keyCode];
  historyIndex = self->_historyIndex;
  if (keyCode == 82)
  {
    v7 = historyIndex + 1;
  }

  else
  {
    v7 = historyIndex - 1;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    [(NSMutableString *)self->_buffer setString:&stru_1001CBF90];
    self->_bufferIndex = 0;
  }

  else if (v7 < [(NSMutableArray *)self->_history count])
  {
    v10 = [(NSMutableArray *)self->_history objectAtIndex:v7];
    v8 = sub_1000095FC(v10, 0, 0);
    [(NSMutableString *)self->_buffer setString:v10];
    self->_bufferIndex = [v10 length];
    self->_historyIndex = v7;
    goto LABEL_9;
  }

  v10 = +[VOTOutputManager outputManager];
  v9 = +[VOSOutputEvent BoundaryEncountered];
  [v10 sendEvent:v9];

LABEL_9:
}

- (void)_handleArrowKey:(id)key
{
  keyCopy = key;
  keyInfo = [keyCopy keyInfo];
  keyCode = [keyInfo keyCode];

  if (keyCode - 81 < 2)
  {
    [(VOTTextSearchManager *)self _handleUpDownMovement:keyCopy];
  }

  else if (keyCode - 79 <= 1)
  {
    [(VOTTextSearchManager *)self _handleRightLeftMovement:keyCopy];
  }
}

- (void)_handleDelete:(id)delete
{
  deleteCopy = delete;
  keyInfo = [deleteCopy keyInfo];
  keyCode = [keyInfo keyCode];

  if (keyCode != 42)
  {
    keyInfo2 = [deleteCopy keyInfo];
    keyCode2 = [keyInfo2 keyCode];

    if (keyCode2 == 76)
    {
      bufferIndex = self->_bufferIndex;
      if (bufferIndex == [(NSMutableString *)self->_buffer length])
      {
        goto LABEL_6;
      }

      v8 = self->_bufferIndex;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v7 = deleteCopy;
    goto LABEL_10;
  }

  v6 = self->_bufferIndex;
  v7 = deleteCopy;
  if (!v6)
  {
LABEL_6:
    v13 = +[VOTOutputManager outputManager];
    v14 = +[VOSOutputEvent BoundaryEncountered];
    [v13 sendEvent:v14];
    goto LABEL_15;
  }

  v8 = v6 - 1;
  v9 = 1;
LABEL_10:
  keyInfo3 = [v7 keyInfo];
  isCommandKeyPressed = [keyInfo3 isCommandKeyPressed];

  if (isCommandKeyPressed)
  {
    v9 = [(NSMutableString *)self->_buffer length]- v8;
  }

  v13 = [(NSMutableString *)self->_buffer substringWithRange:v8, v9];
  [(NSMutableString *)self->_buffer replaceCharactersInRange:v8 withString:v9, &stru_1001CBF90];
  self->_bufferIndex = v8;
  v14 = [objc_allocWithZone(VOTOutputRequest) init];
  v17 = [v14 addString:v13];
  if ([VOTSharedWorkspace typingPitchChangeEnabled])
  {
    lastAction = [v14 lastAction];
    LODWORD(v19) = 0.75;
    v20 = [NSNumber numberWithFloat:v19];
    [lastAction setObject:v20 forVariant:32];
  }

  [v14 send];
LABEL_15:
}

- (void)_handleLetter:(id)letter
{
  keyInfo = [letter keyInfo];
  characters = [keyInfo characters];

  if ([characters length])
  {
    bufferIndex = self->_bufferIndex;
    v6 = [(NSMutableString *)self->_buffer length];
    buffer = self->_buffer;
    if (bufferIndex == v6)
    {
      [(NSMutableString *)buffer appendString:characters];
      v8 = [(NSMutableString *)self->_buffer length];
    }

    else
    {
      [(NSMutableString *)buffer insertString:characters atIndex:self->_bufferIndex];
      v8 = (self->_bufferIndex + 1);
    }

    self->_bufferIndex = v8;
    v9 = +[AXSettings sharedInstance];
    voiceOverHardwareTypingFeedback = [v9 voiceOverHardwareTypingFeedback];

    v11 = [objc_allocWithZone(VOTOutputRequest) init];
    v12 = v11;
    if ((voiceOverHardwareTypingFeedback & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v13 = [v11 addString:characters];
      if ([VOTSharedWorkspace typingPitchChangeEnabled])
      {
        lastAction = [v12 lastAction];
        LODWORD(v15) = 1.5;
        v16 = [NSNumber numberWithFloat:v15];
        [lastAction setObject:v16 forVariant:32];
      }
    }

    if (voiceOverHardwareTypingFeedback - 1 <= 1)
    {
      v17 = +[NSCharacterSet wordBreakCharacterSet];
      if ([v17 characterIsMember:{objc_msgSend(characters, "characterAtIndex:", 0)}] && -[NSMutableString length](self->_buffer, "length") >= 2)
      {
        v18 = [(NSMutableString *)self->_buffer rangeOfCharacterFromSet:v17 options:4 range:0, [(NSMutableString *)self->_buffer length]- 1];
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = 0;
          v20 = (self->_bufferIndex - 1);
        }

        else
        {
          v19 = v18;
          v20 = ([(NSMutableString *)self->_buffer length]- v18);
        }

        v21 = [(NSMutableString *)self->_buffer substringWithRange:v19, v20];
        v22 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v23 = [v21 stringByTrimmingCharactersInSet:v22];
        v24 = [v23 length];

        if (v24)
        {
          v25 = [v12 addString:v21];
        }
      }
    }

    [v12 send];
  }
}

- (void)handleTextSearchEvent:(id)event
{
  eventCopy = event;
  keyInfo = [eventCopy keyInfo];
  keyDown = [keyInfo keyDown];

  v6 = eventCopy;
  if (keyDown)
  {
    keyInfo2 = [eventCopy keyInfo];
    keyCode = [keyInfo2 keyCode];

    if (keyCode - 79 >= 4)
    {
      if (keyCode == 42 || keyCode == 76)
      {
        [(VOTTextSearchManager *)self _handleDelete:eventCopy];
      }

      else
      {
        [(VOTTextSearchManager *)self _handleLetter:eventCopy];
      }
    }

    else
    {
      [(VOTTextSearchManager *)self _handleArrowKey:eventCopy];
    }

    [(VOTTextSearchManager *)self _updateBrailleWithBuffer];
    v6 = eventCopy;
  }
}

- (void)handleReplaceRange:(_NSRange)range withString:(id)string cursor:(int64_t)cursor
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (&length[location] > [(NSMutableString *)self->_buffer length])
  {
    length = [(NSMutableString *)self->_buffer length]- location;
  }

  [(NSMutableString *)self->_buffer replaceCharactersInRange:location withString:length, stringCopy];
  if (cursor < 0 || [(NSMutableString *)self->_buffer length]<= cursor)
  {
    cursor = [(NSMutableString *)self->_buffer length];
  }

  self->_bufferIndex = cursor;
}

- (void)_updateBrailleWithBuffer
{
  brailleManager = [(VOTTextSearchManager *)self brailleManager];

  if (brailleManager)
  {
    v4 = [[NSMutableAttributedString alloc] initWithString:self->_buffer];
    v5 = [NSAttributedString alloc];
    v10 = kSCROEditableTextPaddingAttribute;
    v11 = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [v5 initWithString:@" " attributes:v6];
    [v4 appendAttributedString:v7];

    [v4 addAttribute:kSCROEditableTextAttribute value:&__kCFBooleanTrue range:{0, objc_msgSend(v4, "length")}];
    [v4 addAttribute:kSCROCursorAttribute value:&__kCFBooleanTrue range:{self->_bufferIndex, 1}];
    brailleManager2 = [(VOTTextSearchManager *)self brailleManager];
    selectedLanguage = [VOTSharedWorkspace selectedLanguage];
    [brailleManager2 setBrailleString:v4 type:1 timeout:selectedLanguage langCode:self->_bufferIndex brailleLineRange:1 isBrailleLineRangeKnown:{1, 1.0}];
  }
}

@end