@interface VOTTextSearchManager
+ (void)initialize;
- (VOTTextSearchManager)init;
- (void)_handleArrowKey:(id)a3;
- (void)_handleDelete:(id)a3;
- (void)_handleLetter:(id)a3;
- (void)_handleRightLeftMovement:(id)a3;
- (void)_handleUpDownMovement:(id)a3;
- (void)_syncSearchBufferHistory;
- (void)_updateBrailleWithBuffer;
- (void)beginNewTextSearchSession;
- (void)endTextSearchSession;
- (void)handleReplaceRange:(_NSRange)a3 withString:(id)a4 cursor:(int64_t)a5;
- (void)handleTextSearchEvent:(id)a3;
- (void)setCurrentSearchValue:(id)a3;
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

- (void)setCurrentSearchValue:(id)a3
{
  [(NSMutableString *)self->_buffer setString:a3];

  [(VOTTextSearchManager *)self _updateBrailleWithBuffer];
}

- (void)_handleRightLeftMovement:(id)a3
{
  v4 = a3;
  bufferIndex = self->_bufferIndex;
  v21 = v4;
  v6 = [v4 keyInfo];
  v7 = [v6 keyCode];

  if (v7 == 80)
  {
    v13 = [v21 keyInfo];
    v14 = [v13 isCommandKeyPressed];

    if (v14)
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

  else if (v7 == 79)
  {
    v8 = [v21 keyInfo];
    v9 = [v8 isCommandKeyPressed];

    if (v9)
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

- (void)_handleUpDownMovement:(id)a3
{
  v4 = [a3 keyInfo];
  v5 = [v4 keyCode];
  historyIndex = self->_historyIndex;
  if (v5 == 82)
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

- (void)_handleArrowKey:(id)a3
{
  v6 = a3;
  v4 = [v6 keyInfo];
  v5 = [v4 keyCode];

  if (v5 - 81 < 2)
  {
    [(VOTTextSearchManager *)self _handleUpDownMovement:v6];
  }

  else if (v5 - 79 <= 1)
  {
    [(VOTTextSearchManager *)self _handleRightLeftMovement:v6];
  }
}

- (void)_handleDelete:(id)a3
{
  v21 = a3;
  v4 = [v21 keyInfo];
  v5 = [v4 keyCode];

  if (v5 != 42)
  {
    v10 = [v21 keyInfo];
    v11 = [v10 keyCode];

    if (v11 == 76)
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

    v7 = v21;
    goto LABEL_10;
  }

  v6 = self->_bufferIndex;
  v7 = v21;
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
  v15 = [v7 keyInfo];
  v16 = [v15 isCommandKeyPressed];

  if (v16)
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
    v18 = [v14 lastAction];
    LODWORD(v19) = 0.75;
    v20 = [NSNumber numberWithFloat:v19];
    [v18 setObject:v20 forVariant:32];
  }

  [v14 send];
LABEL_15:
}

- (void)_handleLetter:(id)a3
{
  v4 = [a3 keyInfo];
  v26 = [v4 characters];

  if ([v26 length])
  {
    bufferIndex = self->_bufferIndex;
    v6 = [(NSMutableString *)self->_buffer length];
    buffer = self->_buffer;
    if (bufferIndex == v6)
    {
      [(NSMutableString *)buffer appendString:v26];
      v8 = [(NSMutableString *)self->_buffer length];
    }

    else
    {
      [(NSMutableString *)buffer insertString:v26 atIndex:self->_bufferIndex];
      v8 = (self->_bufferIndex + 1);
    }

    self->_bufferIndex = v8;
    v9 = +[AXSettings sharedInstance];
    v10 = [v9 voiceOverHardwareTypingFeedback];

    v11 = [objc_allocWithZone(VOTOutputRequest) init];
    v12 = v11;
    if ((v10 & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v13 = [v11 addString:v26];
      if ([VOTSharedWorkspace typingPitchChangeEnabled])
      {
        v14 = [v12 lastAction];
        LODWORD(v15) = 1.5;
        v16 = [NSNumber numberWithFloat:v15];
        [v14 setObject:v16 forVariant:32];
      }
    }

    if (v10 - 1 <= 1)
    {
      v17 = +[NSCharacterSet wordBreakCharacterSet];
      if ([v17 characterIsMember:{objc_msgSend(v26, "characterAtIndex:", 0)}] && -[NSMutableString length](self->_buffer, "length") >= 2)
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

- (void)handleTextSearchEvent:(id)a3
{
  v9 = a3;
  v4 = [v9 keyInfo];
  v5 = [v4 keyDown];

  v6 = v9;
  if (v5)
  {
    v7 = [v9 keyInfo];
    v8 = [v7 keyCode];

    if (v8 - 79 >= 4)
    {
      if (v8 == 42 || v8 == 76)
      {
        [(VOTTextSearchManager *)self _handleDelete:v9];
      }

      else
      {
        [(VOTTextSearchManager *)self _handleLetter:v9];
      }
    }

    else
    {
      [(VOTTextSearchManager *)self _handleArrowKey:v9];
    }

    [(VOTTextSearchManager *)self _updateBrailleWithBuffer];
    v6 = v9;
  }
}

- (void)handleReplaceRange:(_NSRange)a3 withString:(id)a4 cursor:(int64_t)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  if (&length[location] > [(NSMutableString *)self->_buffer length])
  {
    length = [(NSMutableString *)self->_buffer length]- location;
  }

  [(NSMutableString *)self->_buffer replaceCharactersInRange:location withString:length, v9];
  if (a5 < 0 || [(NSMutableString *)self->_buffer length]<= a5)
  {
    a5 = [(NSMutableString *)self->_buffer length];
  }

  self->_bufferIndex = a5;
}

- (void)_updateBrailleWithBuffer
{
  v3 = [(VOTTextSearchManager *)self brailleManager];

  if (v3)
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
    v8 = [(VOTTextSearchManager *)self brailleManager];
    v9 = [VOTSharedWorkspace selectedLanguage];
    [v8 setBrailleString:v4 type:1 timeout:v9 langCode:self->_bufferIndex brailleLineRange:1 isBrailleLineRangeKnown:{1, 1.0}];
  }
}

@end