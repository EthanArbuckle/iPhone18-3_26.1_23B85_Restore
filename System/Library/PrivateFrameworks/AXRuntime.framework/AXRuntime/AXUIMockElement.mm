@interface AXUIMockElement
+ (id)uiElementAtCoordinate:(CGPoint)a3;
- (AXUIMockElement)init;
- (BOOL)BOOLWithAXAttribute:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)performAXAction:(int)a3;
- (BOOL)performAXAction:(int)a3 withValue:(id)a4;
- (BOOL)performAXAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5;
- (CGPoint)pointForLineNumber:(unint64_t)a3;
- (CGPoint)pointWithAXAttribute:(int64_t)a3;
- (CGRect)rectWithAXAttribute:(int64_t)a3;
- (CGSize)sizeWithAXAttribute:(int64_t)a3;
- (_NSRange)rangeWithAXAttribute:(int64_t)a3;
- (float)floatWithAXAttribute:(int64_t)a3;
- (id)_valueForAttribute:(int64_t)a3;
- (id)cachedAttributes;
- (id)copyCachedAttributes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)endLoggingActions;
- (id)nextElementsWithCount:(unint64_t)a3;
- (id)nextElementsWithParameters:(id)a3;
- (id)numberWithAXAttribute:(int64_t)a3;
- (id)objectWithAXAttribute:(int64_t)a3 parameter:(void *)a4;
- (id)performBlockWhileLoggingPerformedActions:(id)a3;
- (id)previousElementsWithCount:(unint64_t)a3;
- (id)previousElementsWithParameters:(id)a3;
- (id)stringWithAXAttribute:(int64_t)a3;
- (id)uiElementWithAXAttribute:(int64_t)a3;
- (int64_t)longWithAXAttribute:(int64_t)a3;
- (unint64_t)arrayCountWithAXAttribute:(int64_t)a3;
- (unint64_t)hash;
- (void)setAXAttribute:(int64_t)a3 withArray:(id)a4;
- (void)setAXAttribute:(int64_t)a3 withBOOL:(BOOL)a4;
- (void)setAXAttribute:(int64_t)a3 withFloat:(float)a4;
- (void)setAXAttribute:(int64_t)a3 withLong:(int64_t)a4;
- (void)setAXAttribute:(int64_t)a3 withNumber:(id)a4;
- (void)setAXAttribute:(int64_t)a3 withObject:(id)a4;
- (void)setAXAttribute:(int64_t)a3 withObject:(id)a4 synchronous:(BOOL)a5;
- (void)setAXAttribute:(int64_t)a3 withPoint:(CGPoint)a4;
- (void)setAXAttribute:(int64_t)a3 withRange:(_NSRange)a4;
- (void)setAXAttribute:(int64_t)a3 withSize:(CGSize)a4;
- (void)setAXAttribute:(int64_t)a3 withString:(id)a4;
- (void)setAXAttribute:(int64_t)a3 withUIElement:(id)a4;
- (void)setAXAttribute:(int64_t)a3 withUIElementArray:(id)a4;
- (void)setValue:(id)a3 forAXAttribute:(int64_t)a4;
- (void)setValue:(id)a3 forAXParameterizedAttribute:(int64_t)a4;
- (void)setWritable:(BOOL)a3 forAXAttribute:(int64_t)a4;
- (void)startLoggingActions;
- (void)updateCache:(int64_t)a3;
@end

@implementation AXUIMockElement

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AXUIMockElement);
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_attributes mutableCopy];
  attributes = v4->_attributes;
  v4->_attributes = v6;

  v8 = [(NSMutableDictionary *)v5->_writableAttributes mutableCopy];
  writableAttributes = v4->_writableAttributes;
  v4->_writableAttributes = v8;

  v10 = [(NSMutableDictionary *)v5->_performActionLog mutableCopy];
  performActionLog = v4->_performActionLog;
  v4->_performActionLog = v10;

  v12 = _Block_copy(v5->_handleActionBlock);
  handleActionBlock = v4->_handleActionBlock;
  v4->_handleActionBlock = v12;

  objc_sync_exit(v5);
  return v4;
}

+ (id)uiElementAtCoordinate:(CGPoint)a3
{
  v3 = [a1 init];

  return v3;
}

- (AXUIMockElement)init
{
  v8.receiver = self;
  v8.super_class = AXUIMockElement;
  v2 = [(AXUIMockElement *)&v8 init];
  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    attributes = v2->_attributes;
    v2->_attributes = v3;

    v5 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    writableAttributes = v2->_writableAttributes;
    v2->_writableAttributes = v5;

    [(AXUIMockElement *)v2 setValue:MEMORY[0x1E695E118] forAXAttribute:2016];
  }

  return v2;
}

- (void)startLoggingActions
{
  if (self->_performActionLog)
  {
    [AXUIMockElement startLoggingActions];
  }

  self->_performActionLog = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];

  MEMORY[0x1EEE66BB8]();
}

- (id)endLoggingActions
{
  performActionLog = self->_performActionLog;
  v4 = performActionLog;
  v5 = self->_performActionLog;
  self->_performActionLog = 0;

  return performActionLog;
}

- (id)performBlockWhileLoggingPerformedActions:(id)a3
{
  v4 = a3;
  [(AXUIMockElement *)self startLoggingActions];
  v4[2](v4);

  return [(AXUIMockElement *)self endLoggingActions];
}

- (id)description
{
  v3 = [(AXUIMockElement *)self stringWithAXAttribute:2001];
  v4 = [(AXUIMockElement *)self stringWithAXAttribute:2006];
  [(AXUIMockElement *)self rectWithAXAttribute:2003];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(AXUIMockElement *)self numberWithAXAttribute:2004];
  [v13 unsignedLongLongValue];
  v14 = _AXTraitsAsString();

  [(AXUIMockElement *)self pointWithAXAttribute:2007];
  v17 = [MEMORY[0x1E696AD60] stringWithFormat:@"<AXUIMockElement %p>{Text: %@, Value: %@, Frame: {%.0f, %.0f, %.0f, %.0f} CP: %.0f %.0f} : Traits: %@", self, v3, v4, v6, v8, v10, v12, v15, v16, v14];

  return v17;
}

- (id)_valueForAttribute:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  attributes = v4->_attributes;
  v6 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  v7 = [(NSMutableDictionary *)attributes objectForKey:v6];

  objc_sync_exit(v4);

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || (v6 = objc_opt_class(), ([v6 isSubclassOfClass:objc_opt_class()] & 1) != 0) || (v7 = objc_opt_class(), objc_msgSend(v7, "isSubclassOfClass:", objc_opt_class())))
  {
    v8 = [(AXUIMockElement *)self hash];
    v9 = v8 == [v4 hash];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setWritable:(BOOL)a3 forAXAttribute:(int64_t)a4
{
  v5 = a3;
  obj = self;
  objc_sync_enter(obj);
  writableAttributes = obj->_writableAttributes;
  v7 = [MEMORY[0x1E696AD98] numberWithLong:a4];
  if (v5)
  {
    v8 = MEMORY[0x1E695E118];
  }

  else
  {
    v8 = MEMORY[0x1E695E110];
  }

  [(NSMutableDictionary *)writableAttributes setObject:v8 forKey:v7];

  objc_sync_exit(obj);
}

- (id)uiElementWithAXAttribute:(int64_t)a3
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:a3];
  NSClassFromString(@"AXUIElement");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setValue:(id)a3 forAXAttribute:(int64_t)a4
{
  v9 = a3;
  v6 = self;
  objc_sync_enter(v6);
  attributes = v6->_attributes;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:a4];
  if (v9)
  {
    [(NSMutableDictionary *)attributes setObject:v9 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)attributes removeObjectForKey:v8];
  }

  objc_sync_exit(v6);
}

- (void)setValue:(id)a3 forAXParameterizedAttribute:(int64_t)a4
{
  v9 = a3;
  v6 = self;
  objc_sync_enter(v6);
  attributes = v6->_attributes;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:a4];
  if (v9)
  {
    [(NSMutableDictionary *)attributes setObject:v9 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)attributes removeObjectForKey:v8];
  }

  objc_sync_exit(v6);
}

- (id)stringWithAXAttribute:(int64_t)a3
{
  v4 = [(AXUIMockElement *)self _valueForAttribute:a3];
  if ([(AXUIMockElement *)self usesCarriageReturnAsLinesSeparator])
  {
    v5 = [v4 stringByReplacingOccurrencesOfString:@"\r" withString:&stru_1F3E63FB0];

    v4 = v5;
  }

  return v4;
}

- (BOOL)BOOLWithAXAttribute:(int64_t)a3
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (float)floatWithAXAttribute:(int64_t)a3
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (int64_t)longWithAXAttribute:(int64_t)a3
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:a3];
  v4 = [v3 longValue];

  return v4;
}

- (id)numberWithAXAttribute:(int64_t)a3
{
  if ((a3 - 4001) > 1)
  {
    v7 = [(AXUIMockElement *)self _valueForAttribute:a3];
  }

  else
  {
    v5 = [(AXUIMockElement *)self rangeWithAXAttribute:2005];
    v9 = xmmword_1BF7DE640;
    AXValueGetValue(-[AXUIMockElement objectWithAXAttribute:parameter:](self, "objectWithAXAttribute:parameter:", 94009, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5]), kAXValueTypeCFRange, &v9);
    v6 = *(&v9 + 1);
    if (a3 == 4001)
    {
      v6 = 0;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v9 + v6];
  }

  return v7;
}

- (CGPoint)pointWithAXAttribute:(int64_t)a3
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:a3];
  [v3 pointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGSize)sizeWithAXAttribute:(int64_t)a3
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:a3];
  [v3 sizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_NSRange)rangeWithAXAttribute:(int64_t)a3
{
  v4 = [(AXUIMockElement *)self _valueForAttribute:?];
  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (a3 == 2005 && (isKindOfClass & 1) != 0)
    {
      v9 = 0uLL;
      AXValueGetValue([v4 firstObject], kAXValueTypeCFRange, &v9);
    }

    else
    {
      *&v9 = [v4 rangeValue];
      *(&v9 + 1) = v6;
    }
  }

  else
  {
    v9 = xmmword_1BF7DE640;
  }

  v8 = *(&v9 + 1);
  v7 = v9;
  result.length = v8;
  result.location = v7;
  return result;
}

- (CGRect)rectWithAXAttribute:(int64_t)a3
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:a3];
  [v3 rectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (unint64_t)arrayCountWithAXAttribute:(int64_t)a3
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:a3];
  v4 = [v3 count];

  return v4;
}

- (id)objectWithAXAttribute:(int64_t)a3 parameter:(void *)a4
{
  v6 = 0;
  if (a3 <= 94008)
  {
    if (a3 <= 92504)
    {
      if (a3 <= 2705)
      {
        if (a3 <= 2703 && a3 != 2702 && a3 != 2703)
        {
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      if (a3 <= 92502)
      {
        if (a3 != 2706)
        {
          if (a3 != 3000)
          {
            goto LABEL_67;
          }

          goto LABEL_63;
        }

LABEL_65:
        v15 = [(AXUIMockElement *)self _valueForAttribute:a3];
        goto LABEL_66;
      }

      if (a3 == 92503)
      {
        if ([(AXUIMockElement *)self usesCarriageReturnAsLinesSeparator])
        {
          valuePtr = *MEMORY[0x1E695EFF8];
          AXValueGetValue(a4, kAXValueTypeCGPoint, &valuePtr);
          v16 = [(AXUIMockElement *)self _lineNumberForPoint:valuePtr];
          v7 = [(AXUIMockElement *)self _valueForAttribute:2006];
          v13 = [v7 componentsSeparatedByString:@"\r"];
          if (v16 >= [v13 count])
          {
            v6 = 0;
          }

          else
          {
            v17 = MEMORY[0x1E695DF20];
            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
            v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
            v6 = [v17 dictionaryWithObjectsAndKeys:{v18, @"lineNumber", v19, @"lineColumn", 0}];
          }

          goto LABEL_86;
        }
      }

      else if ([(AXUIMockElement *)self usesCarriageReturnAsLinesSeparator])
      {
        v11 = [a4 objectForKey:@"lineNumber"];
        v12 = [v11 unsignedIntegerValue];

        v7 = [(AXUIMockElement *)self _valueForAttribute:2006];
        v13 = [v7 componentsSeparatedByString:@"\r"];
        valuePtr = xmmword_1BF7DE640;
        if (v12 < [v13 count])
        {
          if (v12)
          {
            v14 = [v13 subarrayWithRange:{0, v12}];
          }

          else
          {
            v14 = 0;
          }

          v35 = [v14 componentsJoinedByString:&stru_1F3E63FB0];
          v36 = [v35 length];
          v37 = [v13 objectAtIndex:v12];
          *&valuePtr = v36;
          *(&valuePtr + 1) = [v37 length];
        }

        v34 = AXValueCreate(kAXValueTypeCFRange, &valuePtr);
        goto LABEL_85;
      }

      v6 = 0;
      goto LABEL_67;
    }

    if (a3 > 92508)
    {
      if (a3 > 92701)
      {
        if (a3 != 92702)
        {
          if (a3 != 92704)
          {
            goto LABEL_67;
          }

          v15 = [MEMORY[0x1E696B098] valueWithRange:{67, 14}];
          goto LABEL_66;
        }

        a3 = 92702;
        goto LABEL_63;
      }

      if ((a3 - 92509) >= 2)
      {
        if (a3 != 92517)
        {
          goto LABEL_67;
        }

        a3 = 92517;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    switch(a3)
    {
      case 92505:
        valuePtr = 0uLL;
        AXValueGetValue(a4, kAXValueTypeCFRange, &valuePtr);
        v7 = [(AXUIMockElement *)self stringWithAXAttribute:2006];
        v20 = valuePtr;
        v41.length = [v7 length];
        v41.location = 0;
        v21 = NSIntersectionRange(v20, v41);
        v10 = [v7 substringWithRange:{v21.location, v21.length}];
        break;
      case 92506:
        v15 = [MEMORY[0x1E696B098] valueWithRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_66:
        v6 = v15;
        goto LABEL_67;
      case 92508:
        valuePtr = 0uLL;
        AXValueGetValue(a4, kAXValueTypeCFRange, &valuePtr);
        v7 = [(AXUIMockElement *)self stringWithAXAttribute:2006];
        v8 = valuePtr;
        v40.length = [v7 length];
        v40.location = 0;
        v9 = NSIntersectionRange(v8, v40);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v33 = objc_allocWithZone(AXAttributedString);
          v13 = [v7 substringWithRange:{v9.location, v9.length}];
          v34 = [v33 initWithString:v13];
LABEL_85:
          v6 = v34;
LABEL_86:

          goto LABEL_87;
        }

        v10 = [v7 attributedSubstringFromRange:{v9.location, v9.length}];
        break;
      default:
        goto LABEL_67;
    }

LABEL_79:
    v6 = v10;
LABEL_87:

    goto LABEL_67;
  }

  if (a3 > 95231)
  {
    if (a3 > 95241)
    {
      if (a3 > 95243)
      {
        if (a3 != 95244)
        {
          if (a3 != 95253)
          {
            goto LABEL_67;
          }

          goto LABEL_63;
        }

        a3 = 95244;
      }

      else if (a3 == 95242)
      {
        a3 = 95242;
      }

      else
      {
        a3 = 95243;
      }

      goto LABEL_65;
    }

    if (a3 > 95239)
    {
      if (a3 == 95240)
      {
        a3 = 95240;
      }

      else
      {
        a3 = 95241;
      }

      goto LABEL_65;
    }

    if (a3 != 95232)
    {
      if (a3 != 95239)
      {
        goto LABEL_67;
      }

      a3 = 95239;
      goto LABEL_65;
    }

LABEL_63:
    v15 = [(AXUIMockElement *)self objectWithAXAttribute:a3];
    goto LABEL_66;
  }

  if (a3 <= 95226)
  {
    if (a3 != 94009)
    {
      if (a3 == 94500)
      {
        a3 = 94500;
      }

      else
      {
        if (a3 != 95225)
        {
          goto LABEL_67;
        }

        a3 = 95225;
      }

      goto LABEL_65;
    }

    v23 = [a4 unsignedIntegerValue];
    v7 = [(AXUIMockElement *)self stringWithAXAttribute:2006];
    v24 = [v7 length];
    valuePtr = xmmword_1BF7DE640;
    v25 = v24 - v23;
    if (v24 > v23)
    {
      v26 = v24;
      v27 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v28 = [v7 rangeOfCharacterFromSet:v27 options:4 range:{0, v23}];

      v29 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v30 = [v7 rangeOfCharacterFromSet:v29 options:0 range:{v23, v25}];

      if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28;
      }

      if (v30 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = v26;
      }

      else
      {
        v32 = v30;
      }

      *&valuePtr = v31;
      *(&valuePtr + 1) = v32 - v31;
    }

    v10 = AXValueCreate(kAXValueTypeCFRange, &valuePtr);
    goto LABEL_79;
  }

  if ((a3 - 95227) < 2 || (a3 - 95230) < 2)
  {
    goto LABEL_63;
  }

LABEL_67:

  return v6;
}

- (id)cachedAttributes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_attributes copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)copyCachedAttributes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_attributes ax_deepMutableCopy];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)performAXAction:(int)a3
{
  v3 = *&a3;
  v5 = [MEMORY[0x1E695DFB0] null];
  performActionLog = self->_performActionLog;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSMutableDictionary *)performActionLog setObject:v5 forKeyedSubscript:v7];

  v8 = [(AXUIMockElement *)self handleActionBlock];

  if (!v8)
  {
    return 0;
  }

  v9 = [(AXUIMockElement *)self handleActionBlock];
  v10 = v9[2](v9, v3, 0);

  return v10;
}

- (BOOL)performAXAction:(int)a3 withValue:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (v4 == 2505)
  {
    v7 = [(AXUIMockElement *)self _valueForAttribute:2006];
    v8 = v6;
    v9 = [v8 objectForKeyedSubscript:@"range"];
    v10 = NSRangeFromString(v9);
    v11 = [v8 objectForKeyedSubscript:@"replacement"];

    v12 = [v7 stringByReplacingCharactersInRange:v10.location withString:{v10.length, v11}];
    [(AXUIMockElement *)self setValue:v12 forAXAttribute:2006];
  }

  performActionLog = self->_performActionLog;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  [(NSMutableDictionary *)performActionLog setObject:v6 forKeyedSubscript:v14];

  v15 = [(AXUIMockElement *)self handleActionBlock];

  if (v15)
  {
    v16 = [(AXUIMockElement *)self handleActionBlock];
    v17 = (v16)[2](v16, v4, v6);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)performAXAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5
{
  v5 = *&a3;
  v7 = a4;
  v8 = [(AXUIMockElement *)self handleActionBlock];

  if (v8)
  {
    v9 = [(AXUIMockElement *)self handleActionBlock];
    v10 = (v9)[2](v9, v5, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)previousElementsWithCount:(unint64_t)a3
{
  [(AXUIMockElement *)self updateCache:92502];

  return [(AXUIMockElement *)self _valueForAttribute:92502];
}

- (id)nextElementsWithCount:(unint64_t)a3
{
  [(AXUIMockElement *)self updateCache:92501];

  return [(AXUIMockElement *)self _valueForAttribute:92501];
}

- (id)nextElementsWithParameters:(id)a3
{
  [(AXUIMockElement *)self updateCache:92501];

  return [(AXUIMockElement *)self _valueForAttribute:92501];
}

- (id)previousElementsWithParameters:(id)a3
{
  [(AXUIMockElement *)self updateCache:92502];

  return [(AXUIMockElement *)self _valueForAttribute:92502];
}

- (void)updateCache:(int64_t)a3
{
  v5 = [(AXUIMockElement *)self cacheUpdatedCallback];

  if (v5)
  {
    v6 = [(AXUIMockElement *)self cacheUpdatedCallback];
    v6[2](v6, self, a3);
  }
}

- (void)setAXAttribute:(int64_t)a3 withBOOL:(BOOL)a4
{
  v4 = a4;
  writableAttributes = self->_writableAttributes;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:?];
  v9 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v8];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    [(AXUIMockElement *)self setValue:v11 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withString:(id)a4
{
  v10 = a4;
  writableAttributes = self->_writableAttributes;
  v7 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  v8 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v7];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    [(AXUIMockElement *)self setValue:v10 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withLong:(int64_t)a4
{
  writableAttributes = self->_writableAttributes;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:?];
  v9 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v8];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLong:a4];
    [(AXUIMockElement *)self setValue:v11 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withFloat:(float)a4
{
  writableAttributes = self->_writableAttributes;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:?];
  v9 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v8];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    *&v11 = a4;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    [(AXUIMockElement *)self setValue:v12 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withNumber:(id)a4
{
  v10 = a4;
  writableAttributes = self->_writableAttributes;
  v7 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  v8 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v7];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    [(AXUIMockElement *)self setValue:v10 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  writableAttributes = self->_writableAttributes;
  v9 = [MEMORY[0x1E696AD98] numberWithLong:?];
  v10 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v9];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [MEMORY[0x1E696B098] valueWithPoint:{x, y}];
    [(AXUIMockElement *)self setValue:v12 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  writableAttributes = self->_writableAttributes;
  v9 = [MEMORY[0x1E696AD98] numberWithLong:?];
  v10 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v9];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [MEMORY[0x1E696B098] valueWithSize:{width, height}];
    [(AXUIMockElement *)self setValue:v12 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withRange:(_NSRange)a4
{
  v6 = [MEMORY[0x1E696B098] valueWithRange:{a4.location, a4.length}];
  [(AXUIMockElement *)self setValue:v6 forAXAttribute:a3];
}

- (void)setAXAttribute:(int64_t)a3 withUIElement:(id)a4
{
  v6 = a4;
  if ([(AXUIMockElement *)self canSetAXAttribute:a3])
  {
    [(AXUIMockElement *)self setValue:v6 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withUIElementArray:(id)a4
{
  v6 = a4;
  if ([(AXUIMockElement *)self canSetAXAttribute:a3])
  {
    [(AXUIMockElement *)self setValue:v6 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withArray:(id)a4
{
  v6 = a4;
  if ([(AXUIMockElement *)self canSetAXAttribute:a3])
  {
    [(AXUIMockElement *)self setValue:v6 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withObject:(id)a4
{
  v6 = a4;
  if ([(AXUIMockElement *)self canSetAXAttribute:a3])
  {
    [(AXUIMockElement *)self setValue:v6 forAXAttribute:a3];
  }
}

- (void)setAXAttribute:(int64_t)a3 withObject:(id)a4 synchronous:(BOOL)a5
{
  v7 = a4;
  if ([(AXUIMockElement *)self canSetAXAttribute:a3])
  {
    [(AXUIMockElement *)self setValue:v7 forAXAttribute:a3];
  }
}

- (CGPoint)pointForLineNumber:(unint64_t)a3
{
  v3 = a3 * 20.0;
  v4 = 100.0;
  result.y = v3;
  result.x = v4;
  return result;
}

- (unint64_t)hash
{
  v3 = [(AXUIMockElement *)self stringWithAXAttribute:2001];
  v4 = [v3 hash];
  v5 = [(AXUIMockElement *)self stringWithAXAttribute:2006];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end