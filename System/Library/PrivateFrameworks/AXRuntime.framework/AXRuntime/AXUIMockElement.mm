@interface AXUIMockElement
+ (id)uiElementAtCoordinate:(CGPoint)coordinate;
- (AXUIMockElement)init;
- (BOOL)BOOLWithAXAttribute:(int64_t)attribute;
- (BOOL)isEqual:(id)equal;
- (BOOL)performAXAction:(int)action;
- (BOOL)performAXAction:(int)action withValue:(id)value;
- (BOOL)performAXAction:(int)action withValue:(id)value fencePort:(unsigned int)port;
- (CGPoint)pointForLineNumber:(unint64_t)number;
- (CGPoint)pointWithAXAttribute:(int64_t)attribute;
- (CGRect)rectWithAXAttribute:(int64_t)attribute;
- (CGSize)sizeWithAXAttribute:(int64_t)attribute;
- (_NSRange)rangeWithAXAttribute:(int64_t)attribute;
- (float)floatWithAXAttribute:(int64_t)attribute;
- (id)_valueForAttribute:(int64_t)attribute;
- (id)cachedAttributes;
- (id)copyCachedAttributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)endLoggingActions;
- (id)nextElementsWithCount:(unint64_t)count;
- (id)nextElementsWithParameters:(id)parameters;
- (id)numberWithAXAttribute:(int64_t)attribute;
- (id)objectWithAXAttribute:(int64_t)attribute parameter:(void *)parameter;
- (id)performBlockWhileLoggingPerformedActions:(id)actions;
- (id)previousElementsWithCount:(unint64_t)count;
- (id)previousElementsWithParameters:(id)parameters;
- (id)stringWithAXAttribute:(int64_t)attribute;
- (id)uiElementWithAXAttribute:(int64_t)attribute;
- (int64_t)longWithAXAttribute:(int64_t)attribute;
- (unint64_t)arrayCountWithAXAttribute:(int64_t)attribute;
- (unint64_t)hash;
- (void)setAXAttribute:(int64_t)attribute withArray:(id)array;
- (void)setAXAttribute:(int64_t)attribute withBOOL:(BOOL)l;
- (void)setAXAttribute:(int64_t)attribute withFloat:(float)float;
- (void)setAXAttribute:(int64_t)attribute withLong:(int64_t)long;
- (void)setAXAttribute:(int64_t)attribute withNumber:(id)number;
- (void)setAXAttribute:(int64_t)attribute withObject:(id)object;
- (void)setAXAttribute:(int64_t)attribute withObject:(id)object synchronous:(BOOL)synchronous;
- (void)setAXAttribute:(int64_t)attribute withPoint:(CGPoint)point;
- (void)setAXAttribute:(int64_t)attribute withRange:(_NSRange)range;
- (void)setAXAttribute:(int64_t)attribute withSize:(CGSize)size;
- (void)setAXAttribute:(int64_t)attribute withString:(id)string;
- (void)setAXAttribute:(int64_t)attribute withUIElement:(id)element;
- (void)setAXAttribute:(int64_t)attribute withUIElementArray:(id)array;
- (void)setValue:(id)value forAXAttribute:(int64_t)attribute;
- (void)setValue:(id)value forAXParameterizedAttribute:(int64_t)attribute;
- (void)setWritable:(BOOL)writable forAXAttribute:(int64_t)attribute;
- (void)startLoggingActions;
- (void)updateCache:(int64_t)cache;
@end

@implementation AXUIMockElement

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AXUIMockElement);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_attributes mutableCopy];
  attributes = v4->_attributes;
  v4->_attributes = v6;

  v8 = [(NSMutableDictionary *)selfCopy->_writableAttributes mutableCopy];
  writableAttributes = v4->_writableAttributes;
  v4->_writableAttributes = v8;

  v10 = [(NSMutableDictionary *)selfCopy->_performActionLog mutableCopy];
  performActionLog = v4->_performActionLog;
  v4->_performActionLog = v10;

  v12 = _Block_copy(selfCopy->_handleActionBlock);
  handleActionBlock = v4->_handleActionBlock;
  v4->_handleActionBlock = v12;

  objc_sync_exit(selfCopy);
  return v4;
}

+ (id)uiElementAtCoordinate:(CGPoint)coordinate
{
  v3 = [self init];

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

- (id)performBlockWhileLoggingPerformedActions:(id)actions
{
  actionsCopy = actions;
  [(AXUIMockElement *)self startLoggingActions];
  actionsCopy[2](actionsCopy);

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

- (id)_valueForAttribute:(int64_t)attribute
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  attributes = selfCopy->_attributes;
  v6 = [MEMORY[0x1E696AD98] numberWithLong:attribute];
  v7 = [(NSMutableDictionary *)attributes objectForKey:v6];

  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || (v6 = objc_opt_class(), ([v6 isSubclassOfClass:objc_opt_class()] & 1) != 0) || (v7 = objc_opt_class(), objc_msgSend(v7, "isSubclassOfClass:", objc_opt_class())))
  {
    v8 = [(AXUIMockElement *)self hash];
    v9 = v8 == [equalCopy hash];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setWritable:(BOOL)writable forAXAttribute:(int64_t)attribute
{
  writableCopy = writable;
  obj = self;
  objc_sync_enter(obj);
  writableAttributes = obj->_writableAttributes;
  v7 = [MEMORY[0x1E696AD98] numberWithLong:attribute];
  if (writableCopy)
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

- (id)uiElementWithAXAttribute:(int64_t)attribute
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:attribute];
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

- (void)setValue:(id)value forAXAttribute:(int64_t)attribute
{
  valueCopy = value;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  attributes = selfCopy->_attributes;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:attribute];
  if (valueCopy)
  {
    [(NSMutableDictionary *)attributes setObject:valueCopy forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)attributes removeObjectForKey:v8];
  }

  objc_sync_exit(selfCopy);
}

- (void)setValue:(id)value forAXParameterizedAttribute:(int64_t)attribute
{
  valueCopy = value;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  attributes = selfCopy->_attributes;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:attribute];
  if (valueCopy)
  {
    [(NSMutableDictionary *)attributes setObject:valueCopy forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)attributes removeObjectForKey:v8];
  }

  objc_sync_exit(selfCopy);
}

- (id)stringWithAXAttribute:(int64_t)attribute
{
  v4 = [(AXUIMockElement *)self _valueForAttribute:attribute];
  if ([(AXUIMockElement *)self usesCarriageReturnAsLinesSeparator])
  {
    v5 = [v4 stringByReplacingOccurrencesOfString:@"\r" withString:&stru_1F3E63FB0];

    v4 = v5;
  }

  return v4;
}

- (BOOL)BOOLWithAXAttribute:(int64_t)attribute
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:attribute];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (float)floatWithAXAttribute:(int64_t)attribute
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:attribute];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (int64_t)longWithAXAttribute:(int64_t)attribute
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:attribute];
  longValue = [v3 longValue];

  return longValue;
}

- (id)numberWithAXAttribute:(int64_t)attribute
{
  if ((attribute - 4001) > 1)
  {
    v7 = [(AXUIMockElement *)self _valueForAttribute:attribute];
  }

  else
  {
    v5 = [(AXUIMockElement *)self rangeWithAXAttribute:2005];
    v9 = xmmword_1BF7DE640;
    AXValueGetValue(-[AXUIMockElement objectWithAXAttribute:parameter:](self, "objectWithAXAttribute:parameter:", 94009, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5]), kAXValueTypeCFRange, &v9);
    v6 = *(&v9 + 1);
    if (attribute == 4001)
    {
      v6 = 0;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v9 + v6];
  }

  return v7;
}

- (CGPoint)pointWithAXAttribute:(int64_t)attribute
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:attribute];
  [v3 pointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGSize)sizeWithAXAttribute:(int64_t)attribute
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:attribute];
  [v3 sizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_NSRange)rangeWithAXAttribute:(int64_t)attribute
{
  v4 = [(AXUIMockElement *)self _valueForAttribute:?];
  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (attribute == 2005 && (isKindOfClass & 1) != 0)
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

- (CGRect)rectWithAXAttribute:(int64_t)attribute
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:attribute];
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

- (unint64_t)arrayCountWithAXAttribute:(int64_t)attribute
{
  v3 = [(AXUIMockElement *)self _valueForAttribute:attribute];
  v4 = [v3 count];

  return v4;
}

- (id)objectWithAXAttribute:(int64_t)attribute parameter:(void *)parameter
{
  v6 = 0;
  if (attribute <= 94008)
  {
    if (attribute <= 92504)
    {
      if (attribute <= 2705)
      {
        if (attribute <= 2703 && attribute != 2702 && attribute != 2703)
        {
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      if (attribute <= 92502)
      {
        if (attribute != 2706)
        {
          if (attribute != 3000)
          {
            goto LABEL_67;
          }

          goto LABEL_63;
        }

LABEL_65:
        v15 = [(AXUIMockElement *)self _valueForAttribute:attribute];
        goto LABEL_66;
      }

      if (attribute == 92503)
      {
        if ([(AXUIMockElement *)self usesCarriageReturnAsLinesSeparator])
        {
          valuePtr = *MEMORY[0x1E695EFF8];
          AXValueGetValue(parameter, kAXValueTypeCGPoint, &valuePtr);
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
        v11 = [parameter objectForKey:@"lineNumber"];
        unsignedIntegerValue = [v11 unsignedIntegerValue];

        v7 = [(AXUIMockElement *)self _valueForAttribute:2006];
        v13 = [v7 componentsSeparatedByString:@"\r"];
        valuePtr = xmmword_1BF7DE640;
        if (unsignedIntegerValue < [v13 count])
        {
          if (unsignedIntegerValue)
          {
            v14 = [v13 subarrayWithRange:{0, unsignedIntegerValue}];
          }

          else
          {
            v14 = 0;
          }

          v35 = [v14 componentsJoinedByString:&stru_1F3E63FB0];
          v36 = [v35 length];
          v37 = [v13 objectAtIndex:unsignedIntegerValue];
          *&valuePtr = v36;
          *(&valuePtr + 1) = [v37 length];
        }

        v34 = AXValueCreate(kAXValueTypeCFRange, &valuePtr);
        goto LABEL_85;
      }

      v6 = 0;
      goto LABEL_67;
    }

    if (attribute > 92508)
    {
      if (attribute > 92701)
      {
        if (attribute != 92702)
        {
          if (attribute != 92704)
          {
            goto LABEL_67;
          }

          v15 = [MEMORY[0x1E696B098] valueWithRange:{67, 14}];
          goto LABEL_66;
        }

        attribute = 92702;
        goto LABEL_63;
      }

      if ((attribute - 92509) >= 2)
      {
        if (attribute != 92517)
        {
          goto LABEL_67;
        }

        attribute = 92517;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    switch(attribute)
    {
      case 92505:
        valuePtr = 0uLL;
        AXValueGetValue(parameter, kAXValueTypeCFRange, &valuePtr);
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
        AXValueGetValue(parameter, kAXValueTypeCFRange, &valuePtr);
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

  if (attribute > 95231)
  {
    if (attribute > 95241)
    {
      if (attribute > 95243)
      {
        if (attribute != 95244)
        {
          if (attribute != 95253)
          {
            goto LABEL_67;
          }

          goto LABEL_63;
        }

        attribute = 95244;
      }

      else if (attribute == 95242)
      {
        attribute = 95242;
      }

      else
      {
        attribute = 95243;
      }

      goto LABEL_65;
    }

    if (attribute > 95239)
    {
      if (attribute == 95240)
      {
        attribute = 95240;
      }

      else
      {
        attribute = 95241;
      }

      goto LABEL_65;
    }

    if (attribute != 95232)
    {
      if (attribute != 95239)
      {
        goto LABEL_67;
      }

      attribute = 95239;
      goto LABEL_65;
    }

LABEL_63:
    v15 = [(AXUIMockElement *)self objectWithAXAttribute:attribute];
    goto LABEL_66;
  }

  if (attribute <= 95226)
  {
    if (attribute != 94009)
    {
      if (attribute == 94500)
      {
        attribute = 94500;
      }

      else
      {
        if (attribute != 95225)
        {
          goto LABEL_67;
        }

        attribute = 95225;
      }

      goto LABEL_65;
    }

    unsignedIntegerValue2 = [parameter unsignedIntegerValue];
    v7 = [(AXUIMockElement *)self stringWithAXAttribute:2006];
    v24 = [v7 length];
    valuePtr = xmmword_1BF7DE640;
    v25 = v24 - unsignedIntegerValue2;
    if (v24 > unsignedIntegerValue2)
    {
      v26 = v24;
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v28 = [v7 rangeOfCharacterFromSet:newlineCharacterSet options:4 range:{0, unsignedIntegerValue2}];

      newlineCharacterSet2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v30 = [v7 rangeOfCharacterFromSet:newlineCharacterSet2 options:0 range:{unsignedIntegerValue2, v25}];

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

  if ((attribute - 95227) < 2 || (attribute - 95230) < 2)
  {
    goto LABEL_63;
  }

LABEL_67:

  return v6;
}

- (id)cachedAttributes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_attributes copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)copyCachedAttributes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ax_deepMutableCopy = [(NSMutableDictionary *)selfCopy->_attributes ax_deepMutableCopy];
  objc_sync_exit(selfCopy);

  return ax_deepMutableCopy;
}

- (BOOL)performAXAction:(int)action
{
  v3 = *&action;
  null = [MEMORY[0x1E695DFB0] null];
  performActionLog = self->_performActionLog;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSMutableDictionary *)performActionLog setObject:null forKeyedSubscript:v7];

  handleActionBlock = [(AXUIMockElement *)self handleActionBlock];

  if (!handleActionBlock)
  {
    return 0;
  }

  handleActionBlock2 = [(AXUIMockElement *)self handleActionBlock];
  v10 = handleActionBlock2[2](handleActionBlock2, v3, 0);

  return v10;
}

- (BOOL)performAXAction:(int)action withValue:(id)value
{
  v4 = *&action;
  valueCopy = value;
  if (v4 == 2505)
  {
    v7 = [(AXUIMockElement *)self _valueForAttribute:2006];
    v8 = valueCopy;
    v9 = [v8 objectForKeyedSubscript:@"range"];
    v10 = NSRangeFromString(v9);
    v11 = [v8 objectForKeyedSubscript:@"replacement"];

    v12 = [v7 stringByReplacingCharactersInRange:v10.location withString:{v10.length, v11}];
    [(AXUIMockElement *)self setValue:v12 forAXAttribute:2006];
  }

  performActionLog = self->_performActionLog;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  [(NSMutableDictionary *)performActionLog setObject:valueCopy forKeyedSubscript:v14];

  handleActionBlock = [(AXUIMockElement *)self handleActionBlock];

  if (handleActionBlock)
  {
    handleActionBlock2 = [(AXUIMockElement *)self handleActionBlock];
    v17 = (handleActionBlock2)[2](handleActionBlock2, v4, valueCopy);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)performAXAction:(int)action withValue:(id)value fencePort:(unsigned int)port
{
  v5 = *&action;
  valueCopy = value;
  handleActionBlock = [(AXUIMockElement *)self handleActionBlock];

  if (handleActionBlock)
  {
    handleActionBlock2 = [(AXUIMockElement *)self handleActionBlock];
    v10 = (handleActionBlock2)[2](handleActionBlock2, v5, valueCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)previousElementsWithCount:(unint64_t)count
{
  [(AXUIMockElement *)self updateCache:92502];

  return [(AXUIMockElement *)self _valueForAttribute:92502];
}

- (id)nextElementsWithCount:(unint64_t)count
{
  [(AXUIMockElement *)self updateCache:92501];

  return [(AXUIMockElement *)self _valueForAttribute:92501];
}

- (id)nextElementsWithParameters:(id)parameters
{
  [(AXUIMockElement *)self updateCache:92501];

  return [(AXUIMockElement *)self _valueForAttribute:92501];
}

- (id)previousElementsWithParameters:(id)parameters
{
  [(AXUIMockElement *)self updateCache:92502];

  return [(AXUIMockElement *)self _valueForAttribute:92502];
}

- (void)updateCache:(int64_t)cache
{
  cacheUpdatedCallback = [(AXUIMockElement *)self cacheUpdatedCallback];

  if (cacheUpdatedCallback)
  {
    cacheUpdatedCallback2 = [(AXUIMockElement *)self cacheUpdatedCallback];
    cacheUpdatedCallback2[2](cacheUpdatedCallback2, self, cache);
  }
}

- (void)setAXAttribute:(int64_t)attribute withBOOL:(BOOL)l
{
  lCopy = l;
  writableAttributes = self->_writableAttributes;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:?];
  v9 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v8];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:lCopy];
    [(AXUIMockElement *)self setValue:v11 forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withString:(id)string
{
  stringCopy = string;
  writableAttributes = self->_writableAttributes;
  v7 = [MEMORY[0x1E696AD98] numberWithLong:attribute];
  v8 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v7];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    [(AXUIMockElement *)self setValue:stringCopy forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withLong:(int64_t)long
{
  writableAttributes = self->_writableAttributes;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:?];
  v9 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v8];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLong:long];
    [(AXUIMockElement *)self setValue:v11 forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withFloat:(float)float
{
  writableAttributes = self->_writableAttributes;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:?];
  v9 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v8];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    *&v11 = float;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    [(AXUIMockElement *)self setValue:v12 forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withNumber:(id)number
{
  numberCopy = number;
  writableAttributes = self->_writableAttributes;
  v7 = [MEMORY[0x1E696AD98] numberWithLong:attribute];
  v8 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v7];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    [(AXUIMockElement *)self setValue:numberCopy forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  writableAttributes = self->_writableAttributes;
  v9 = [MEMORY[0x1E696AD98] numberWithLong:?];
  v10 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v9];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v12 = [MEMORY[0x1E696B098] valueWithPoint:{x, y}];
    [(AXUIMockElement *)self setValue:v12 forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  writableAttributes = self->_writableAttributes;
  v9 = [MEMORY[0x1E696AD98] numberWithLong:?];
  v10 = [(NSMutableDictionary *)writableAttributes objectForKeyedSubscript:v9];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v12 = [MEMORY[0x1E696B098] valueWithSize:{width, height}];
    [(AXUIMockElement *)self setValue:v12 forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withRange:(_NSRange)range
{
  v6 = [MEMORY[0x1E696B098] valueWithRange:{range.location, range.length}];
  [(AXUIMockElement *)self setValue:v6 forAXAttribute:attribute];
}

- (void)setAXAttribute:(int64_t)attribute withUIElement:(id)element
{
  elementCopy = element;
  if ([(AXUIMockElement *)self canSetAXAttribute:attribute])
  {
    [(AXUIMockElement *)self setValue:elementCopy forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withUIElementArray:(id)array
{
  arrayCopy = array;
  if ([(AXUIMockElement *)self canSetAXAttribute:attribute])
  {
    [(AXUIMockElement *)self setValue:arrayCopy forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withArray:(id)array
{
  arrayCopy = array;
  if ([(AXUIMockElement *)self canSetAXAttribute:attribute])
  {
    [(AXUIMockElement *)self setValue:arrayCopy forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withObject:(id)object
{
  objectCopy = object;
  if ([(AXUIMockElement *)self canSetAXAttribute:attribute])
  {
    [(AXUIMockElement *)self setValue:objectCopy forAXAttribute:attribute];
  }
}

- (void)setAXAttribute:(int64_t)attribute withObject:(id)object synchronous:(BOOL)synchronous
{
  objectCopy = object;
  if ([(AXUIMockElement *)self canSetAXAttribute:attribute])
  {
    [(AXUIMockElement *)self setValue:objectCopy forAXAttribute:attribute];
  }
}

- (CGPoint)pointForLineNumber:(unint64_t)number
{
  v3 = number * 20.0;
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