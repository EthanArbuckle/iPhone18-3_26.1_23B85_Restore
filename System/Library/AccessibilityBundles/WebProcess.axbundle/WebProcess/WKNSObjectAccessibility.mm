@interface WKNSObjectAccessibility
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 byGroup:(BOOL)a4;
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 toElementMatchingQuery:(id)a4;
- (BOOL)_iosAccessibilityPerformAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5;
- (id)_accessibilityFirstElementForFocusForRemoteElement;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3 forParameter:(id)a4;
- (id)accessibilityHitTest:(CGPoint)a3;
@end

@implementation WKNSObjectAccessibility

- (id)accessibilityHitTest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v19 = *MEMORY[0x29EDCA608];
  if ([(WKNSObjectAccessibility *)self isAccessibilityElement]&& ([(WKNSObjectAccessibility *)self accessibilityFrame], v21.x = x, v21.y = y, CGRectContainsPoint(v22, v21)))
  {
    v6 = self;
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
        v6 = v12;
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
      v6 = 0;
    }
  }

  return v6;
}

- (id)_accessibilityFirstElementForFocusForRemoteElement
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(WKNSObjectAccessibility *)self _accessibilityResponderElement];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [(WKNSObjectAccessibility *)self _accessibilityFirstDescendant];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3 forParameter:(id)a4
{
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (a3 == 95250 && (isKindOfClass & 1) != 0)
  {
    v8 = [(WKNSObjectAccessibility *)self _accessibilityFirstElementForFocusForRemoteElement];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WKNSObjectAccessibility;
    v8 = [(WKNSObjectAccessibility *)&v11 _iosAccessibilityAttributeValue:a3 forParameter:v6];
  }

  v9 = v8;

  return v9;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(WKNSObjectAccessibility *)&v10 _iosAccessibilityAttributeValue:a3, self, WKNSObjectAccessibility, v11.receiver, v11.super_class];
    goto LABEL_8;
  }

  if (a3 > 3022)
  {
    if ((a3 - 3023) >= 2)
    {
      if (a3 != 3050)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

    v7 = [(WKNSObjectAccessibility *)self accessibilityElementAtIndex:0];
    v8 = [v7 _accessibilityResponderElementForFocus];
  }

  else
  {
    if (a3 == 3000)
    {
      v5 = [(WKNSObjectAccessibility *)self _accessibilityUnignoredDescendant];
      goto LABEL_9;
    }

    if (a3 != 3002)
    {
      if (a3 != 3009)
      {
LABEL_6:
        [(WKNSObjectAccessibility *)&v11 _iosAccessibilityAttributeValue:a3, v10.receiver, v10.super_class, self, WKNSObjectAccessibility];
        v5 = LABEL_8:;
LABEL_9:
        v6 = v5;
        goto LABEL_17;
      }

LABEL_13:
      v5 = [(WKNSObjectAccessibility *)self _accessibilityFirstElementForFocusForRemoteElement];
      goto LABEL_9;
    }

    v7 = [(WKNSObjectAccessibility *)self accessibilityElementAtIndex:0];
    v8 = [v7 _accessibilityResponderElement];
  }

  v6 = v8;

LABEL_17:

  return v6;
}

- (BOOL)_iosAccessibilityPerformAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a3;
  v8 = a4;
  if (v6 == 5300)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count] == 2)
    {
      v12 = [(WKNSObjectAccessibility *)self accessibilityElements];
      v13 = [v12 firstObject];
      v14 = [v8 firstObject];
      v17 = [v13 _accessibilityMoveFocusWithHeading:objc_msgSend(v14 toElementMatchingQuery:{"unsignedIntegerValue"), 0}];
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (v6 != 5304)
  {
    v19.receiver = self;
    v19.super_class = WKNSObjectAccessibility;
    v17 = [(WKNSObjectAccessibility *)&v19 _iosAccessibilityPerformAction:v6 withValue:v8 fencePort:v5];
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 count] != 2)
  {
    goto LABEL_14;
  }

  v9 = [v8 objectAtIndex:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_14;
  }

  v10 = [v8 objectAtIndex:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v12 = [(WKNSObjectAccessibility *)self accessibilityElements];
  v13 = [v12 firstObject];
  v14 = [v8 firstObject];
  v15 = [v14 unsignedIntegerValue];
  v16 = [v8 lastObject];
  v17 = [v13 _accessibilityMoveFocusWithHeading:v15 toElementMatchingQuery:v16];

LABEL_11:
LABEL_15:

  return v17;
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 toElementMatchingQuery:(id)a4
{
  v6 = a4;
  v7 = [(WKNSObjectAccessibility *)self accessibilityElementAtIndex:0];
  LOBYTE(a3) = [v7 _accessibilityMoveFocusWithHeading:a3 toElementMatchingQuery:v6];

  return a3;
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 byGroup:(BOOL)a4
{
  v5 = [(WKNSObjectAccessibility *)self accessibilityElementAtIndex:0, a4];
  LOBYTE(a3) = [v5 _accessibilityMoveFocusWithHeading:a3 toElementMatchingQuery:0];

  return a3;
}

@end