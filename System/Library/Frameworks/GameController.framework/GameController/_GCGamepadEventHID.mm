@interface _GCGamepadEventHID
- (BOOL)hasValidValueForElement:(int64_t)element;
- (_GCGamepadEventHID)initWithHIDEvent:(__IOHIDEvent *)event;
- (float)floatValueForElement:(int64_t)element;
- (void)dealloc;
@end

@implementation _GCGamepadEventHID

- (_GCGamepadEventHID)initWithHIDEvent:(__IOHIDEvent *)event
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = _GCGamepadEventHID;
  v4 = [(_GCGamepadEventHID *)&v19 init];
  if (v4)
  {
    v4->_event = CFRetain(event);
    if (IOHIDEventGetType() == 35)
    {
      IOHIDEventGetChildren();
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = v18 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            IntegerValue = IOHIDEventGetIntegerValue();
            v12 = IOHIDEventGetIntegerValue();
            if (IntegerValue == 65280 && v12 == 67)
            {
              v4->_extendedEvent = v10;
              goto LABEL_14;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  self->_extendedEvent = 0;
  CFRelease(self->_event);
  self->_event = 0;
  v3.receiver = self;
  v3.super_class = _GCGamepadEventHID;
  [(_GCGamepadEventHID *)&v3 dealloc];
}

- (BOOL)hasValidValueForElement:(int64_t)element
{
  if (self->_extendedEvent)
  {
    LOBYTE(v3) = 1;
  }

  else if (element >= 0x2F)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCGamepadEventImpl.m" lineNumber:342 description:@"Unknown element"];

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x7E00003FFFFFuLL >> element;
  }

  return v3 & 1;
}

- (float)floatValueForElement:(int64_t)element
{
  if (self->_extendedEvent)
  {
    DataValue = IOHIDEventGetDataValue();
    if (element > 46)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_GCGamepadEventImpl.m" lineNumber:376 description:@"Unknown element"];

      return 0.0;
    }

    else
    {
      return *(DataValue + 4 * element + 8);
    }
  }

  else
  {
    v7 = 0.0;
    switch(element)
    {
      case 0:
        event = self->_event;
        goto LABEL_31;
      case 1:
        v30 = self->_event;
        goto LABEL_31;
      case 2:
        v35 = self->_event;
        goto LABEL_31;
      case 3:
        v21 = self->_event;
        goto LABEL_31;
      case 4:
        v23 = self->_event;
        goto LABEL_31;
      case 5:
        v36 = self->_event;
        goto LABEL_31;
      case 6:
        v39 = self->_event;
        goto LABEL_31;
      case 7:
        v28 = self->_event;
        goto LABEL_31;
      case 8:
        v29 = self->_event;
        goto LABEL_31;
      case 9:
        v26 = self->_event;
        goto LABEL_31;
      case 10:
      case 11:
        v8 = self->_event;
        IOHIDEventGetFloatValue();
        v10 = v9;
        if (element != 10)
        {
          goto LABEL_11;
        }

        return fmaxf(v10, 0.0);
      case 12:
      case 13:
        v14 = self->_event;
        IOHIDEventGetFloatValue();
        v10 = v15;
        if (element != 13)
        {
          goto LABEL_11;
        }

        return fmaxf(v10, 0.0);
      case 14:
      case 15:
        v16 = self->_event;
        IOHIDEventGetFloatValue();
        v10 = v17;
        if (element != 14)
        {
          goto LABEL_11;
        }

        return fmaxf(v10, 0.0);
      case 16:
      case 17:
        v12 = self->_event;
        IOHIDEventGetFloatValue();
        v10 = v13;
        if (element == 17)
        {
          return fmaxf(v10, 0.0);
        }

LABEL_11:
        if (v10 >= 0.0)
        {
          return 0.0;
        }

        return -v10;
      case 18:
        v31 = self->_event;
        goto LABEL_31;
      case 19:
        v27 = self->_event;
        goto LABEL_31;
      case 20:
        v24 = self->_event;
        goto LABEL_31;
      case 21:
        v19 = self->_event;
        goto LABEL_31;
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
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
        return v7;
      case 41:
        v20 = self->_event;
        goto LABEL_31;
      case 42:
        v25 = self->_event;
        goto LABEL_31;
      case 43:
        v38 = self->_event;
        goto LABEL_31;
      case 44:
        v18 = self->_event;
        goto LABEL_31;
      case 45:
        v22 = self->_event;
        goto LABEL_31;
      case 46:
        v32 = self->_event;
LABEL_31:
        IOHIDEventGetFloatValue();
        v7 = v33;
        break;
      default:
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"_GCGamepadEventImpl.m" lineNumber:491 description:@"Unknown element"];

        break;
    }
  }

  return v7;
}

@end