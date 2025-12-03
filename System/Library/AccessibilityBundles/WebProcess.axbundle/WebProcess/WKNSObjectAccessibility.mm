@interface WKNSObjectAccessibility
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)heading byGroup:(BOOL)group;
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)heading toElementMatchingQuery:(id)query;
- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port;
- (id)_accessibilityFirstElementForFocusForRemoteElement;
- (id)_iosAccessibilityAttributeValue:(int64_t)value;
- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter;
- (id)accessibilityHitTest:(CGPoint)test;
@end

@implementation WKNSObjectAccessibility

- (id)accessibilityHitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  v19 = *MEMORY[0x29EDCA608];
  if ([(WKNSObjectAccessibility *)self isAccessibilityElement]&& ([(WKNSObjectAccessibility *)self accessibilityFrame], v21.x = x, v21.y = y, CGRectContainsPoint(v22, v21)))
  {
    selfCopy = self;
  }

  else
  {
    [(WKNSObjectAccessibility *)self accessibilityElements];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) accessibilityHitTest:{x, y, v14}];
        selfCopy = v12;
        if (v12)
        {
          if (([(WKNSObjectAccessibility *)v12 isAccessibilityElement]& 1) != 0)
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)_accessibilityFirstElementForFocusForRemoteElement
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _accessibilityResponderElement = [(WKNSObjectAccessibility *)self _accessibilityResponderElement];
    v4 = _accessibilityResponderElement;
    if (_accessibilityResponderElement)
    {
      _accessibilityFirstDescendant = _accessibilityResponderElement;
    }

    else
    {
      _accessibilityFirstDescendant = [(WKNSObjectAccessibility *)self _accessibilityFirstDescendant];
    }

    v6 = _accessibilityFirstDescendant;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter
{
  parameterCopy = parameter;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (value == 95250 && (isKindOfClass & 1) != 0)
  {
    _accessibilityFirstElementForFocusForRemoteElement = [(WKNSObjectAccessibility *)self _accessibilityFirstElementForFocusForRemoteElement];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WKNSObjectAccessibility;
    _accessibilityFirstElementForFocusForRemoteElement = [(WKNSObjectAccessibility *)&v11 _iosAccessibilityAttributeValue:value forParameter:parameterCopy];
  }

  v9 = _accessibilityFirstElementForFocusForRemoteElement;

  return v9;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(WKNSObjectAccessibility *)&v10 _iosAccessibilityAttributeValue:value, self, WKNSObjectAccessibility, v11.receiver, v11.super_class];
    goto LABEL_8;
  }

  if (value > 3022)
  {
    if ((value - 3023) >= 2)
    {
      if (value != 3050)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

    v7 = [(WKNSObjectAccessibility *)self accessibilityElementAtIndex:0];
    _accessibilityResponderElementForFocus = [v7 _accessibilityResponderElementForFocus];
  }

  else
  {
    if (value == 3000)
    {
      _accessibilityUnignoredDescendant = [(WKNSObjectAccessibility *)self _accessibilityUnignoredDescendant];
      goto LABEL_9;
    }

    if (value != 3002)
    {
      if (value != 3009)
      {
LABEL_6:
        [(WKNSObjectAccessibility *)&v11 _iosAccessibilityAttributeValue:value, v10.receiver, v10.super_class, self, WKNSObjectAccessibility];
        _accessibilityUnignoredDescendant = LABEL_8:;
LABEL_9:
        v6 = _accessibilityUnignoredDescendant;
        goto LABEL_17;
      }

LABEL_13:
      _accessibilityUnignoredDescendant = [(WKNSObjectAccessibility *)self _accessibilityFirstElementForFocusForRemoteElement];
      goto LABEL_9;
    }

    v7 = [(WKNSObjectAccessibility *)self accessibilityElementAtIndex:0];
    _accessibilityResponderElementForFocus = [v7 _accessibilityResponderElement];
  }

  v6 = _accessibilityResponderElementForFocus;

LABEL_17:

  return v6;
}

- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port
{
  v5 = *&port;
  v6 = *&action;
  valueCopy = value;
  if (v6 == 5300)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
    {
      accessibilityElements = [(WKNSObjectAccessibility *)self accessibilityElements];
      firstObject = [accessibilityElements firstObject];
      firstObject2 = [valueCopy firstObject];
      v17 = [firstObject _accessibilityMoveFocusWithHeading:objc_msgSend(firstObject2 toElementMatchingQuery:{"unsignedIntegerValue"), 0}];
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (v6 != 5304)
  {
    v19.receiver = self;
    v19.super_class = WKNSObjectAccessibility;
    v17 = [(WKNSObjectAccessibility *)&v19 _iosAccessibilityPerformAction:v6 withValue:valueCopy fencePort:v5];
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
  {
    goto LABEL_14;
  }

  v9 = [valueCopy objectAtIndex:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_14;
  }

  v10 = [valueCopy objectAtIndex:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  accessibilityElements = [(WKNSObjectAccessibility *)self accessibilityElements];
  firstObject = [accessibilityElements firstObject];
  firstObject2 = [valueCopy firstObject];
  unsignedIntegerValue = [firstObject2 unsignedIntegerValue];
  lastObject = [valueCopy lastObject];
  v17 = [firstObject _accessibilityMoveFocusWithHeading:unsignedIntegerValue toElementMatchingQuery:lastObject];

LABEL_11:
LABEL_15:

  return v17;
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)heading toElementMatchingQuery:(id)query
{
  queryCopy = query;
  v7 = [(WKNSObjectAccessibility *)self accessibilityElementAtIndex:0];
  LOBYTE(heading) = [v7 _accessibilityMoveFocusWithHeading:heading toElementMatchingQuery:queryCopy];

  return heading;
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)heading byGroup:(BOOL)group
{
  group = [(WKNSObjectAccessibility *)self accessibilityElementAtIndex:0, group];
  LOBYTE(heading) = [group _accessibilityMoveFocusWithHeading:heading toElementMatchingQuery:0];

  return heading;
}

@end